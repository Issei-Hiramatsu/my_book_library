// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LibraryDocument _$LibraryDocumentFromJson(Map<String, dynamic> json) {
  return _LibraryDocument.fromJson(json);
}

/// @nodoc
mixin _$LibraryDocument {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<BookDocument> get bookList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LibraryDocumentCopyWith<LibraryDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryDocumentCopyWith<$Res> {
  factory $LibraryDocumentCopyWith(
          LibraryDocument value, $Res Function(LibraryDocument) then) =
      _$LibraryDocumentCopyWithImpl<$Res, LibraryDocument>;
  @useResult
  $Res call({String name, String description, List<BookDocument> bookList});
}

/// @nodoc
class _$LibraryDocumentCopyWithImpl<$Res, $Val extends LibraryDocument>
    implements $LibraryDocumentCopyWith<$Res> {
  _$LibraryDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? bookList = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bookList: null == bookList
          ? _value.bookList
          : bookList // ignore: cast_nullable_to_non_nullable
              as List<BookDocument>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LibraryDocumentCopyWith<$Res>
    implements $LibraryDocumentCopyWith<$Res> {
  factory _$$_LibraryDocumentCopyWith(
          _$_LibraryDocument value, $Res Function(_$_LibraryDocument) then) =
      __$$_LibraryDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, List<BookDocument> bookList});
}

/// @nodoc
class __$$_LibraryDocumentCopyWithImpl<$Res>
    extends _$LibraryDocumentCopyWithImpl<$Res, _$_LibraryDocument>
    implements _$$_LibraryDocumentCopyWith<$Res> {
  __$$_LibraryDocumentCopyWithImpl(
      _$_LibraryDocument _value, $Res Function(_$_LibraryDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? bookList = null,
  }) {
    return _then(_$_LibraryDocument(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bookList: null == bookList
          ? _value._bookList
          : bookList // ignore: cast_nullable_to_non_nullable
              as List<BookDocument>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LibraryDocument implements _LibraryDocument {
  const _$_LibraryDocument(
      {this.name = '',
      this.description = '',
      final List<BookDocument> bookList = const []})
      : _bookList = bookList;

  factory _$_LibraryDocument.fromJson(Map<String, dynamic> json) =>
      _$$_LibraryDocumentFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  final List<BookDocument> _bookList;
  @override
  @JsonKey()
  List<BookDocument> get bookList {
    if (_bookList is EqualUnmodifiableListView) return _bookList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookList);
  }

  @override
  String toString() {
    return 'LibraryDocument(name: $name, description: $description, bookList: $bookList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LibraryDocument &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._bookList, _bookList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(_bookList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LibraryDocumentCopyWith<_$_LibraryDocument> get copyWith =>
      __$$_LibraryDocumentCopyWithImpl<_$_LibraryDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LibraryDocumentToJson(
      this,
    );
  }
}

abstract class _LibraryDocument implements LibraryDocument {
  const factory _LibraryDocument(
      {final String name,
      final String description,
      final List<BookDocument> bookList}) = _$_LibraryDocument;

  factory _LibraryDocument.fromJson(Map<String, dynamic> json) =
      _$_LibraryDocument.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  List<BookDocument> get bookList;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryDocumentCopyWith<_$_LibraryDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
