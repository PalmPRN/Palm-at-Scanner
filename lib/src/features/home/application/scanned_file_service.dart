import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_at_scanner/src/features/home/data/sembast_scanned_file_repository.dart';
import 'package:palm_at_scanner/src/features/home/domain/scanned_file.dart';
import 'package:palm_at_scanner/src/features/scanner/data/scanner_repository.dart';
import 'package:palm_at_scanner/src/features/scanner/domain/scanner.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scanned_file_service.g.dart';

class ScannedFileService {
  ScannedFileService(this.ref);

  final Ref ref;

  Future<ScannedFile> _scanFile() async {
    final result = await ref
        .read(scannerRepositoryProvider)
        .scannedDocumentAsPdf();

    return result.toScannedFile();
  }

  Future<void> _clearScannedFiles() async {
    final dirCache = await getApplicationCacheDirectory();

    final rootFilePath = '${dirCache.path}/mlkit_docscan_ui_client';
    final rootSharePath = '${dirCache.path}/share_plus';
    print('root file path: $rootFilePath');
    print('root file exists: ${Directory(rootFilePath).existsSync()}');

    if (Directory(rootFilePath).existsSync()) {
      await Directory(rootFilePath).delete(recursive: true);
    }

    if (Directory(rootSharePath).existsSync()) {
      await Directory(rootSharePath).delete(recursive: true);
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
