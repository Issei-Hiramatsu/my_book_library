import 'package:cloud_firestore/cloud_firestore.dart';

import '/domain/book_document/book_document.dart';
import '/domain/library_document/library_document.dart';

class QueryServiceRepositoryWhichUseFirebase extends IQueryService {
  final firestore = FirebaseFirestore.instance;

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
}
