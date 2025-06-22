// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc_scanner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocScanner {

 List<String> get uris; int get pageCount;
/// Create a copy of DocScanner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocScannerCopyWith<DocScanner> get copyWith => _$DocScannerCopyWithImpl<DocScanner>(this as DocScanner, _$identity);

  /// Serializes this DocScanner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocScanner&&const DeepCollectionEquality().equals(other.uris, uris)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(uris),pageCount);

@override
String toString() {
  return 'DocScanner(uris: $uris, pageCount: $pageCount)';
}


}

/// @nodoc
abstract mixin class $DocScannerCopyWith<$Res>  {
  factory $DocScannerCopyWith(DocScanner value, $Res Function(DocScanner) _then) = _$DocScannerCopyWithImpl;
@useResult
$Res call({
 List<String> uris, int pageCount
});




}
/// @nodoc
class _$DocScannerCopyWithImpl<$Res>
    implements $DocScannerCopyWith<$Res> {
  _$DocScannerCopyWithImpl(this._self, this._then);

  final DocScanner _self;
  final $Res Function(DocScanner) _then;

/// Create a copy of DocScanner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uris = null,Object? pageCount = null,}) {
  return _then(_self.copyWith(
uris: null == uris ? _self.uris : uris // ignore: cast_nullable_to_non_nullable
as List<String>,pageCount: null == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DocScanner implements DocScanner {
  const _DocScanner({required final  List<String> uris, required this.pageCount}): _uris = uris;
  factory _DocScanner.fromJson(Map<String, dynamic> json) => _$DocScannerFromJson(json);

 final  List<String> _uris;
@override List<String> get uris {
  if (_uris is EqualUnmodifiableListView) return _uris;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_uris);
}

@override final  int pageCount;

/// Create a copy of DocScanner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocScannerCopyWith<_DocScanner> get copyWith => __$DocScannerCopyWithImpl<_DocScanner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocScannerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocScanner&&const DeepCollectionEquality().equals(other._uris, _uris)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_uris),pageCount);

@override
String toString() {
  return 'DocScanner(uris: $uris, pageCount: $pageCount)';
}


}

/// @nodoc
abstract mixin class _$DocScannerCopyWith<$Res> implements $DocScannerCopyWith<$Res> {
  factory _$DocScannerCopyWith(_DocScanner value, $Res Function(_DocScanner) _then) = __$DocScannerCopyWithImpl;
@override @useResult
$Res call({
 List<String> uris, int pageCount
});




}
/// @nodoc
class __$DocScannerCopyWithImpl<$Res>
    implements _$DocScannerCopyWith<$Res> {
  __$DocScannerCopyWithImpl(this._self, this._then);

  final _DocScanner _self;
  final $Res Function(_DocScanner) _then;

/// Create a copy of DocScanner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uris = null,Object? pageCount = null,}) {
  return _then(_DocScanner(
uris: null == uris ? _self._uris : uris // ignore: cast_nullable_to_non_nullable
as List<String>,pageCount: null == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
