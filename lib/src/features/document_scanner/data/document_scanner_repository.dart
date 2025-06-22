import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mlkit_document_scanner/google_mlkit_document_scanner.dart';
import 'package:palm_at_scanner/src/features/document_scanner/domain/doc_scanner.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'document_scanner_repository.g.dart';

class DocumentScannerRepository {
  // This class will handle the logic for interacting with the document scanner feature.
  // It will include methods to scan documents, process images, and return results.

  Future<DocScanner> scanDocument() async {
    // Logic to initiate document scanning
    final scanner = DocumentScanner(
      options: DocumentScannerOptions(
        documentFormat: DocumentFormat.pdf, // set output document format
        mode: ScannerMode.full, // to control what features are enabled
        pageLimit: 5, // setting a limit to the number of pages scanned
        isGalleryImport: true, // importing from the photo gallery
      ),
    );
    final result = await scanner.scanDocument();

    // return DocScanner(uris: result.images, pageCount: result.images.length);
    return DocScanner(
      uris: [result.pdf!.uri],
      pageCount: result.pdf!.pageCount,
    );
  }
}

@riverpod
DocumentScannerRepository documentScannerRepository(Ref ref) {
  return DocumentScannerRepository();
}
