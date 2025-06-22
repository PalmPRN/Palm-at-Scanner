import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tesseract_ocr/ocr_engine_config.dart';
import 'package:tesseract_ocr/tesseract_ocr.dart';

part 'text_recognition_repository.g.dart';

class TextRecognitionRepository {
  // Future<List<String>> recognizeTextFromPdf(List<String> paths) async {
  //   final List<String> recognizedTexts = [];
  //
  //   for (final path in paths) {
  //     final inputImage = InputImage.fromFilePath(path);
  //     final textRecognizer = TextRecognizer();
  //     final recognizedText = await textRecognizer.processImage(inputImage);
  //     recognizedTexts.add(recognizedText.text);
  //   }
  //
  //   return recognizedTexts;
  // }

  Future<List<String>> recognizeTextFromPdf(List<String> paths) async {
    final List<String> recognizedTexts = [];

    for (final path in paths) {
      final tesseractConfig = OCRConfig(
        language: 'tha', // Must match a .traineddata file in assets/tessdata
        engine: OCREngine.tesseract,
        // Optional Tesseract options:
        // options: {
        //   TesseractConfig.preserveInterwordSpaces: '1',
        //   TesseractConfig.pageSegMode: PageSegmentationMode.autoOsd,
        //   TesseractConfig.debugFile: '/path/to/debug.log', // Example option
        // },
      );
      print('config : ${tesseractConfig.tessDataPath}');

      final text = await TesseractOcr.extractText(
        path,
        config: tesseractConfig,
      ); // Use Vision engine);
      print('text : $text');

      recognizedTexts.add(text);
    }

    return recognizedTexts;
  }
}

@riverpod
TextRecognitionRepository textRecognitionRepository(Ref ref) {
  return TextRecognitionRepository();
}
