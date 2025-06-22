import 'package:freezed_annotation/freezed_annotation.dart';

part 'doc_scanner.freezed.dart';
part 'doc_scanner.g.dart';

@freezed
abstract class DocScanner with _$DocScanner {
  const factory DocScanner({
    required List<String> uris,
    required int pageCount,
  }) = _DocScanner;

  factory DocScanner.fromJson(Map<String, dynamic> json) =>
      _$DocScannerFromJson(json);
}
