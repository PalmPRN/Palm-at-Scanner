import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palm_at_scanner/src/features/document_scanner/domain/doc_scanner.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pdf_repository.g.dart';

class PdfRepository {
  Future<String> generatePdf({
    required DocScanner docs,
    required List<String> extractedTexts,
  }) async {
    final output = await getTemporaryDirectory();
    final pdf = pw.Document();
    final fontData = await rootBundle.load('assets/fonts/Sarabun-Regular.ttf');

    for (int i = 0; i < docs.uris.length; i++) {
      final imageBytes = File(docs.uris[i]).readAsBytesSync();
      final extractedText = extractedTexts[i].replaceAll('  ', ''); // จาก OCR

      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) => pw.Stack(
            children: [
              pw.Image(pw.MemoryImage(imageBytes)),
              // ภาพเต็มหน้า
              pw.Positioned(
                // วางข้อความครอบทับ (ตัวอย่างอย่างง่าย)
                left: 10,
                top: 10,
                child: pw.Opacity(
                  opacity: 1,
                  child: pw.Text(
                    extractedText,
                    style: pw.TextStyle(
                      fontSize: 12,
                      font: pw.Font.ttf(fontData),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    final filePath =
        "${output.path}/${DateTime.now().millisecondsSinceEpoch}.pdf";
    final file = File(filePath);
    await file.writeAsBytes(await pdf.save());

    return filePath;
  }
}

@riverpod
PdfRepository pdfRepository(Ref ref) {
  return PdfRepository();
}
