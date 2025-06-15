// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Scanner _$ScannerFromJson(Map<String, dynamic> json) => _Scanner(
  pdfUri: Uri.parse(json['pdfUri'] as String),
  pageCount: (json['pageCount'] as num).toInt(),
);

Map<String, dynamic> _$ScannerToJson(_Scanner instance) => <String, dynamic>{
  'pdfUri': instance.pdfUri.toString(),
  'pageCount': instance.pageCount,
};
