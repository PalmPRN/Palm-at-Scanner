// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_scanner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocScanner _$DocScannerFromJson(Map<String, dynamic> json) => _DocScanner(
  uris: (json['uris'] as List<dynamic>).map((e) => e as String).toList(),
  pageCount: (json['pageCount'] as num).toInt(),
);

Map<String, dynamic> _$DocScannerToJson(_DocScanner instance) =>
    <String, dynamic>{'uris': instance.uris, 'pageCount': instance.pageCount};
