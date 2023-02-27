// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LibraryDocument _$$_LibraryDocumentFromJson(Map<String, dynamic> json) =>
    _$_LibraryDocument(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      bookList: (json['bookList'] as List<dynamic>?)
              ?.map((e) => BookDocument.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LibraryDocumentToJson(_$_LibraryDocument instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'bookList': instance.bookList,
    };
