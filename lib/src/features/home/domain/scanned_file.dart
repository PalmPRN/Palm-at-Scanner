import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanned_file.freezed.dart';
part 'scanned_file.g.dart';

@freezed
abstract class ScannedFile with _$ScannedFile {
  const factory ScannedFile({
    required String id,
    required String name,
    required int page,
    required DateTime createdDate,
    required String path,
    required Uri uri,
  }) = _ScannedFile;

  factory ScannedFile.fromJson(Map<String, dynamic> json) =>
      _$ScannedFileFromJson(json);
}
