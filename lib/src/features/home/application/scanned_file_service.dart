import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:palm_at_scanner/src/features/document_scanner/data/document_scanner_repository.dart';
import 'package:palm_at_scanner/src/features/home/data/sembast_scanned_file_repository.dart';
import 'package:palm_at_scanner/src/features/home/domain/scanned_file.dart';
import 'package:palm_at_scanner/src/features/text_recognition/data/text_recognition_repository.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scanned_file_service.g.dart';

class ScannedFileService {
  ScannedFileService(this.ref);

  final Ref ref;

  ScannedFile _createPdf({required String filePath, required int pageCount}) {
    final now = DateTime.now();

    return ScannedFile(
      id: DateFormat('yyyyMMddHHmmss').format(now),
      name: filePath.split('/').last,
      page: pageCount,
      createdDate: now,
      path: filePath,
    );
  }

  Future<ScannedFile> _scanFile() async {
    final scanDocs = await ref
        .read(documentScannerRepositoryProvider)
        .scanDocument();
    final extractedTexts = await ref
        .read(textRecognitionRepositoryProvider)
        .recognizeTextFromPdf(scanDocs.uris);
    // final filePath = await ref
    //     .read(pdfRepositoryProvider)
    //     .generatePdf(docs: scanDocs, extractedTexts: extractedTexts);

    return _createPdf(
      filePath: scanDocs.uris.first,
      pageCount: scanDocs.pageCount,
    );
  }

  Future<void> _clearScannedFiles() async {
    final dirTemp = await getTemporaryDirectory();
    final dirCache = await getApplicationCacheDirectory();

    final rootFilePath = '${dirCache.path}/mlkit_docscan_ui_client';
    final rootSharePath = '${dirCache.path}/share_plus';
    final rootTempPath = dirTemp.path;
    print('root file path: $rootFilePath');
    print('root file exists: ${Directory(rootFilePath).existsSync()}');

    if (Directory(rootFilePath).existsSync()) {
      await Directory(rootFilePath).delete(recursive: true);
    }

    if (Directory(rootSharePath).existsSync()) {
      await Directory(rootSharePath).delete(recursive: true);
    }

    if (Directory(rootTempPath).existsSync()) {
      await Directory(rootTempPath).delete(recursive: true);
    }
  }

  Future<void> addDocument() async {
    final file = await _scanFile();
    print('Scanned file: ${file.path}, pages: ${file.page}');
    final repository = ref.read(sembastScannedFileRepositoryProvider);
    await repository.addDocument(file);
  }

  Future<void> deleteDocument(String id) async {
    final repository = ref.read(sembastScannedFileRepositoryProvider);
    await repository.deleteDocument(id);
  }

  Future<void> clearDocuments() async {
    final repository = ref.read(sembastScannedFileRepositoryProvider);
    await repository.clearDocument();
    await _clearScannedFiles();
    // remove all scanned files from the scanner repository
  }
}

@Riverpod(keepAlive: true)
ScannedFileService scannedFileService(Ref ref) {
  return ScannedFileService(ref);
}

@Riverpod(keepAlive: true)
Stream<List<ScannedFile>> scannedFileStream(Ref ref) {
  final repository = ref.watch(sembastScannedFileRepositoryProvider);
  return repository.watchDocuments();
}
