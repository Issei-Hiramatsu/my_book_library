// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookDocument _$$_BookDocumentFromJson(Map<String, dynamic> json) =>
    _$_BookDocument(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      author: json['author'] as String? ?? '',
      publisher: json['publisher'] as String? ?? '',
      genreList: json['genreList'] as List<dynamic>? ?? const [],
      bookImage: json['bookImage'] as String? ?? '',
      description: json['description'] as String? ?? '',
      bookStatus: json['bookStatus'] as String? ?? '',
    );

Map<String, dynamic> _$$_BookDocumentToJson(_$_BookDocument instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'publisher': instance.publisher,
      'genreList': instance.genreList,
      'bookImage': instance.bookImage,
      'description': instance.description,
      'bookStatus': instance.bookStatus,
    };
