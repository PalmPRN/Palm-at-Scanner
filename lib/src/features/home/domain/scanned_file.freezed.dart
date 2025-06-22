// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanned_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScannedFile {

 String get id; String get name; int get page; DateTime get createdDate; String get path;
/// Create a copy of ScannedFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScannedFileCopyWith<ScannedFile> get copyWith => _$ScannedFileCopyWithImpl<ScannedFile>(this as ScannedFile, _$identity);

  /// Serializes this ScannedFile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScannedFile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.page, page) || other.page == page)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,page,createdDate,path);

@override
String toString() {
  return 'ScannedFile(id: $id, name: $name, page: $page, createdDate: $createdDate, path: $path)';
}


}

/// @nodoc
abstract mixin class $ScannedFileCopyWith<$Res>  {
  factory $ScannedFileCopyWith(ScannedFile value, $Res Function(ScannedFile) _then) = _$ScannedFileCopyWithImpl;
@useResult
$Res call({
 String id, String name, int page, DateTime createdDate, String path
});




}
/// @nodoc
class _$ScannedFileCopyWithImpl<$Res>
    implements $ScannedFileCopyWith<$Res> {
  _$ScannedFileCopyWithImpl(this._self, this._then);

  final ScannedFile _self;
  final $Res Function(ScannedFile) _then;

/// Create a copy of ScannedFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? page = null,Object? createdDate = null,Object? path = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as DateTime,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ScannedFile implements ScannedFile {
  const _ScannedFile({required this.id, required this.name, required this.page, required this.createdDate, required this.path});
  factory _ScannedFile.fromJson(Map<String, dynamic> json) => _$ScannedFileFromJson(json);

@override final  String id;
@override final  String name;
@override final  int page;
@override final  DateTime createdDate;
@override final  String path;

/// Create a copy of ScannedFile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScannedFileCopyWith<_ScannedFile> get copyWith => __$ScannedFileCopyWithImpl<_ScannedFile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScannedFileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScannedFile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.page, page) || other.page == page)&&(identical(other.createdDate, createdDate) || other.createdDate == createdDate)&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,page,createdDate,path);

@override
String toString() {
  return 'ScannedFile(id: $id, name: $name, page: $page, createdDate: $createdDate, path: $path)';
}


}

/// @nodoc
abstract mixin class _$ScannedFileCopyWith<$Res> implements $ScannedFileCopyWith<$Res> {
  factory _$ScannedFileCopyWith(_ScannedFile value, $Res Function(_ScannedFile) _then) = __$ScannedFileCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int page, DateTime createdDate, String path
});




}
/// @nodoc
class __$ScannedFileCopyWithImpl<$Res>
    implements _$ScannedFileCopyWith<$Res> {
  __$ScannedFileCopyWithImpl(this._self, this._then);

  final _ScannedFile _self;
  final $Res Function(_ScannedFile) _then;

/// Create a copy of ScannedFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? page = null,Object? createdDate = null,Object? path = null,}) {
  return _then(_ScannedFile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,createdDate: null == createdDate ? _self.createdDate : createdDate // ignore: cast_nullable_to_non_nullable
as DateTime,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
