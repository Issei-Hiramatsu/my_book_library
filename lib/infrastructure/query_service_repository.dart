import 'package:cloud_firestore/cloud_firestore.dart';

import '/domain/book_document/book_document.dart';
import '/domain/library_document/library_document.dart';

class QueryServiceRepositoryWhichUseFirebase extends IQueryService {
  final firestore = FirebaseFirestore.instance;
  //図書館を取得する関数を用意する

  @override
  Stream<List<BookDocument>> fetchAllBookByLibrary({
    required LibraryDocument libraryDocument,
  }) {
    final collection = firestore.collection('library/VTA-中目黒図書館/蔵書');
    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return BookDocument.fromJson(json);
          }).toList(),
        );
  }

  @override
  Stream<List<BookDocument>> fetchAvailableBookByLibrary(
      {required LibraryDocument libraryDocument}) {
    final collection = firestore
        .collection('library/VTA-中目黒図書館/蔵書')
        .where('bookStatus', isEqualTo: '蔵書');
    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return BookDocument.fromJson(json);
          }).toList(),
        );
  }

  @override
  Stream<List<BookDocument>> fetchOnLoanBookByLibrary(
      {required LibraryDocument libraryDocument}) {
    final collection = firestore
        .collection('library/VTA-中目黒図書館/蔵書')
        .where('bookStatus', isEqualTo: '貸出中');
    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return BookDocument.fromJson(json);
          }).toList(),
        );
  }

  @override
  Stream<List<BookDocument>> fetchOverdueBookByLibrary(
      {required LibraryDocument libraryDocument}) {
    final collection = firestore
        .collection('library/VTA-中目黒図書館/蔵書')
        .where('bookStatus', isEqualTo: '延滞中');

    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return BookDocument.fromJson(json);
          }).toList(),
        );
  }

  @override
  Stream<List<BookDocument>> fetchOtherBookByLibrary(
      {required LibraryDocument libraryDocument}) {
    final collection = firestore
        .collection('library/VTA-中目黒図書館/蔵書')
        .where('bookStatus', isEqualTo: 'その他');

    return collection.snapshots().map(
          (QuerySnapshot snapshot) =>
              snapshot.docs.map((DocumentSnapshot documentSnapshot) {
            final json = documentSnapshot.data() as Map<String, dynamic>;
            return BookDocument.fromJson(json);
          }).toList(),
        );
  }
}
