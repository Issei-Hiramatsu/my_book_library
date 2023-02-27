import '/domain/book_document/book_document.dart';

enum BookState {
  available('蔵書'),
  onLoan('貸出中'),
  overdue('延滞中'),
  other('その他');

  final String displayState;
  const BookState(this.displayState);
}

final allBookList = [
  const BookDocument(
    id: '1',
    title: 'はらぺこあおむし ',
    bookStatus: '延滞中',
  ),
  const BookDocument(
    id: '2',
    title: 'Scrum 入門',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '3',
    title: 'やさしいDDD',
    bookStatus: '貸出中',
  ),
  const BookDocument(
    id: '4',
    title: 'Scrum プロジェクト管理入門',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '5',
    title: 'Scrum: 製品開発の新しいアプローチ',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '6',
    title: '実践Flutter ',
    bookStatus: '貸出中',
  ),
  const BookDocument(
    id: '7',
    title: 'Flutter 実践入門',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '8',
    title: 'Flutter 入門',
    bookStatus: '貸出中',
  ),
  const BookDocument(
    id: '9',
    title: 'アジャイルエンジニアリング',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '10',
    title: 'インターネット時代のプロジェクトマネジメント ',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '11',
    title: 'インターネット時代のイノベーション',
    bookStatus: '貸出中',
  ),
  const BookDocument(
    id: '12',
    title: 'AI時代のプロジェクトマネジメント',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '13',
    title: 'デジタルトランスフォーメーション',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '14',
    title: 'IoT時代のビジネスモデル',
    bookStatus: '貸出中',
  ),
  const BookDocument(
    id: '15',
    title: 'プロダクトマネジメント実践入門',
    bookStatus: '蔵書',
  )
];
