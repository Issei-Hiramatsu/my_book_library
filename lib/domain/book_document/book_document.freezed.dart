// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookDocument _$BookDocumentFromJson(Map<String, dynamic> json) {
  return _BookDocument.fromJson(json);
}

/// @nodoc
mixin _$BookDocument {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  List<dynamic> get genreList => throw _privateConstructorUsedError;
  String get bookImage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get bookStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDocumentCopyWith<BookDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDocumentCopyWith<$Res> {
  factory $BookDocumentCopyWith(
          BookDocument value, $Res Function(BookDocument) then) =
      _$BookDocumentCopyWithImpl<$Res, BookDocument>;
  @useResult
  $Res call(
      {String id,
      String title,
      String author,
      String publisher,
      List<dynamic> genreList,
      String bookImage,
      String description,
      String bookStatus});
}

/// @nodoc
class _$BookDocumentCopyWithImpl<$Res, $Val extends BookDocument>
    implements $BookDocumentCopyWith<$Res> {
  _$BookDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? publisher = null,
    Object? genreList = null,
    Object? bookImage = null,
    Object? description = null,
    Object? bookStatus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      genreList: null == genreList
          ? _value.genreList
          : genreList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      bookImage: null == bookImage
          ? _value.bookImage
          : bookImage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bookStatus: null == bookStatus
          ? _value.bookStatus
          : bookStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookDocumentCopyWith<$Res>
    implements $BookDocumentCopyWith<$Res> {
  factory _$$_BookDocumentCopyWith(
          _$_BookDocument value, $Res Function(_$_BookDocument) then) =
      __$$_BookDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String author,
      String publisher,
      List<dynamic> genreList,
      String bookImage,
      String description,
      String bookStatus});
}

/// @nodoc
class __$$_BookDocumentCopyWithImpl<$Res>
    extends _$BookDocumentCopyWithImpl<$Res, _$_BookDocument>
    implements _$$_BookDocumentCopyWith<$Res> {
  __$$_BookDocumentCopyWithImpl(
      _$_BookDocument _value, $Res Function(_$_BookDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? publisher = null,
    Object? genreList = null,
    Object? bookImage = null,
    Object? description = null,
    Object? bookStatus = null,
  }) {
    return _then(_$_BookDocument(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      genreList: null == genreList
          ? _value._genreList
          : genreList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      bookImage: null == bookImage
          ? _value.bookImage
          : bookImage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bookStatus: null == bookStatus
          ? _value.bookStatus
          : bookStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookDocument implements _BookDocument {
  const _$_BookDocument(
      {this.id = '',
      this.title = '',
      this.author = '',
      this.publisher = '',
      final List<dynamic> genreList = const [],
      this.bookImage = '',
      this.description = '',
      this.bookStatus = ''})
      : _genreList = genreList;

  factory _$_BookDocument.fromJson(Map<String, dynamic> json) =>
      _$$_BookDocumentFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey()
  final String publisher;
  final List<dynamic> _genreList;
  @override
  @JsonKey()
  List<dynamic> get genreList {
    if (_genreList is EqualUnmodifiableListView) return _genreList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreList);
  }

  @override
  @JsonKey()
  final String bookImage;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String bookStatus;

  @override
  String toString() {
    return 'BookDocument(id: $id, title: $title, author: $author, publisher: $publisher, genreList: $genreList, bookImage: $bookImage, description: $description, bookStatus: $bookStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookDocument &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            const DeepCollectionEquality()
                .equals(other._genreList, _genreList) &&
            (identical(other.bookImage, bookImage) ||
                other.bookImage == bookImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bookStatus, bookStatus) ||
                other.bookStatus == bookStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      publisher,
      const DeepCollectionEquality().hash(_genreList),
      bookImage,
      description,
      bookStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookDocumentCopyWith<_$_BookDocument> get copyWith =>
      __$$_BookDocumentCopyWithImpl<_$_BookDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookDocumentToJson(
      this,
    );
  }
}

abstract class _BookDocument implements BookDocument {
  const factory _BookDocument(
      {final String id,
      final String title,
      final String author,
      final String publisher,
      final List<dynamic> genreList,
      final String bookImage,
      final String description,
      final String bookStatus}) = _$_BookDocument;

  factory _BookDocument.fromJson(Map<String, dynamic> json) =
      _$_BookDocument.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get author;
  @override
  String get publisher;
  @override
  List<dynamic> get genreList;
  @override
  String get bookImage;
  @override
  String get description;
  @override
  String get bookStatus;
  @override
  @JsonKey(ignore: true)
  _$$_BookDocumentCopyWith<_$_BookDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
