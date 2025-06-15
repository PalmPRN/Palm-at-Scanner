// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanned_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScannedFile _$ScannedFileFromJson(Map<String, dynamic> json) => _ScannedFile(
  id: json['id'] as String,
  name: json['name'] as String,
  page: (json['page'] as num).toInt(),
  createdDate: DateTime.parse(json['createdDate'] as String),
  path: json['path'] as String,
  uri: Uri.parse(json['uri'] as String),
);

Map<String, dynamic> _$ScannedFileToJson(_ScannedFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'page': instance.page,
      'createdDate': instance.createdDate.toIso8601String(),
      'path': instance.path,
      'uri': instance.uri.toString(),
    };
