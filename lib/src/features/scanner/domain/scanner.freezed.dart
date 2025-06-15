// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Scanner {

 Uri get pdfUri; int get pageCount;
/// Create a copy of Scanner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScannerCopyWith<Scanner> get copyWith => _$ScannerCopyWithImpl<Scanner>(this as Scanner, _$identity);

  /// Serializes this Scanner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Scanner&&(identical(other.pdfUri, pdfUri) || other.pdfUri == pdfUri)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pdfUri,pageCount);

@override
String toString() {
  return 'Scanner(pdfUri: $pdfUri, pageCount: $pageCount)';
}


}

/// @nodoc
abstract mixin class $ScannerCopyWith<$Res>  {
  factory $ScannerCopyWith(Scanner value, $Res Function(Scanner) _then) = _$ScannerCopyWithImpl;
@useResult
$Res call({
 Uri pdfUri, int pageCount
});




}
/// @nodoc
class _$ScannerCopyWithImpl<$Res>
    implements $ScannerCopyWith<$Res> {
  _$ScannerCopyWithImpl(this._self, this._then);

  final Scanner _self;
  final $Res Function(Scanner) _then;

/// Create a copy of Scanner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pdfUri = null,Object? pageCount = null,}) {
  return _then(_self.copyWith(
pdfUri: null == pdfUri ? _self.pdfUri : pdfUri // ignore: cast_nullable_to_non_nullable
as Uri,pageCount: null == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Scanner implements Scanner {
  const _Scanner({required this.pdfUri, required this.pageCount});
  factory _Scanner.fromJson(Map<String, dynamic> json) => _$ScannerFromJson(json);

@override final  Uri pdfUri;
@override final  int pageCount;

/// Create a copy of Scanner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScannerCopyWith<_Scanner> get copyWith => __$ScannerCopyWithImpl<_Scanner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScannerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Scanner&&(identical(other.pdfUri, pdfUri) || other.pdfUri == pdfUri)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pdfUri,pageCount);

@override
String toString() {
  return 'Scanner(pdfUri: $pdfUri, pageCount: $pageCount)';
}


}

/// @nodoc
abstract mixin class _$ScannerCopyWith<$Res> implements $ScannerCopyWith<$Res> {
  factory _$ScannerCopyWith(_Scanner value, $Res Function(_Scanner) _then) = __$ScannerCopyWithImpl;
@override @useResult
$Res call({
 Uri pdfUri, int pageCount
});




}
/// @nodoc
class __$ScannerCopyWithImpl<$Res>
    implements _$ScannerCopyWith<$Res> {
  __$ScannerCopyWithImpl(this._self, this._then);

  final _Scanner _self;
  final $Res Function(_Scanner) _then;

/// Create a copy of Scanner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pdfUri = null,Object? pageCount = null,}) {
  return _then(_Scanner(
pdfUri: null == pdfUri ? _self.pdfUri : pdfUri // ignore: cast_nullable_to_non_nullable
as Uri,pageCount: null == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
