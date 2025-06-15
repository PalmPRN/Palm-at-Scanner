import 'package:flutter/services.dart';
import 'package:flutter_doc_scanner/flutter_doc_scanner.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_at_scanner/src/features/scanner/domain/scanner.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scanner_repository.g.dart';

class ScannerRepository {
  Future<Scanner> scannedDocumentAsPdf() async {
    //by default way they fetch pdf for android and png for iOS
    try {
      final result = await FlutterDocScanner().getScannedDocumentAsPdf(
        page: 10,
      );

      if (result == null || result.isEmpty) {
        throw 'Unknown platform documents';
      }

      final Map<String, dynamic> scannedDocumentsMap =
          Map<String, dynamic>.from(result);

      return Scanner.fromJson(scannedDocumentsMap);
    } on PlatformException {
      throw 'Failed to get scanned documents.';
    }
  }
}

@riverpod
ScannerRepository scannerRepository(Ref ref) {
  return ScannerRepository();
}
