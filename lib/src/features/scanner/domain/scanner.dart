import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:palm_at_scanner/src/features/home/domain/scanned_file.dart';

part 'scanner.freezed.dart';
part 'scanner.g.dart';

@freezed
abstract class Scanner with _$Scanner {
  const factory Scanner({required Uri pdfUri, required int pageCount}) =
      _Scanner;

  factory Scanner.fromJson(Map<String, dynamic> json) =>
      _$ScannerFromJson(json);
}

extension ScannerX on Scanner {
  Future<ScannedFile> toScannedFile() async {
    final now = DateTime.now();

    return ScannedFile(
      id: DateFormat('yyyyMMddHHmmss').format(now),
      name: pdfUri.toString().split('/').last,
      page: pageCount,
      createdDate: now,
      path: pdfUri.path,
      uri: pdfUri,
    );
  }
}
