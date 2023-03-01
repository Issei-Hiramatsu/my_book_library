import '/domain/book_document/book_document.dart';

final allBookList = [
  const BookDocument(
    id: '1',
    title: 'はらぺこあおむし ',
    author: 'エリック・カール',
    bookImage: 'https://m.media-amazon.com/images/I/91a4TmOq8TL.jpg',
    description: '小さなあおむしは、もりもりと食べつづけて美しい蝶になった。数や曜日の認識をおりこみ、穴あきのしかけをこらした斬新な絵本。',
    bookStatus: '延滞中',
  ),
  const BookDocument(
    id: '2',
    title: 'スクラム開発入門 ',
    author: 'Ken Schwaber',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51PRd6hPGWL._SX368_BO1,204,203,200_.jpg',
    description:
        'スクラム開発を実践するために必要な知識を、実例やノウハウを交えて解説した書籍。現場のスクラムマスターやプロダクトオーナーなど関係者が協力して執筆されている。',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '3',
    title: 'アジャイルソフトウェア開発入門 ',
    author: 'Ken Schwaber',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51Z6UzE2BXL._SX392_BO1,204,203,200_.jpg',
    description:
        'アジャイル開発手法が普及してきた中、ソフトウェア開発者が知識を身につけて実践するための入門書。プロジェクトマネージャーや開発者など関係者が協力して執筆されている。',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '4',
    title: 'Flutter 実践入門 ',
    author: 'Y.Yamamoto',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51vUe9gW8kL._SX403_BO1,204,203,200_.jpg',
    description:
        'Googleが開発したクロスプラットフォーム開発技術「Flutter」を実践的に活用するための入門書。実装例を交えて、基礎から応用まで解説している。',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '5',
    title: 'IT業界秘密ノート ',
    author: 'T.Suzuki',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51L6-z8FJ2L._SX358_BO1,204,203,200_.jpg',
    description: 'IT業界における「現場の経営者」が教えてくれる「現場の秘密」を、現場で培ってきた経験を交えて披露した書籍。',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '6',
    title: '実戦IT論 ',
    author: 'M.Komatsu',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51-4q3q-zXL._SX367_BO1,204,203,200_.jpg',
    description:
        'IT業界で今や欠かせない知識やノウハウを、実戦的な視点から解説した書籍。開発者やプロジェクトマネージャーなど関係者が協力して執筆されている。',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '7',
    title: 'ITインフラ技術入門 ',
    author: 'K.Okada',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51KdZ7t4NzL._SX404_BO1,204,203,200_.jpg',
    description:
        'ITインフラを実践するために必要な知識を、実例やノウハウを交えて解説した書籍。現場のインフラマネージャーやエンジニアなど関係者が協力して執筆されている。',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '8',
    title: 'スクラム開発実践入門 ',
    author: 'Ken Schwaber',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51ZmhOJpHfL._SX357_BO1,204,203,200_.jpg',
    description:
        'スクラム開発を実践するために必要な知識を、実例やノウハウを交えて解説した書籍。現場のスクラムマスターやプロダクトオーナーなど関係者が協力して執筆されている。',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '9',
    title: 'Flutterアプリ開発実践入門 ',
    author: 'Y.Yamamoto',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51TUd3mIC3L._SX404_BO1,204,203,200_.jpg',
    description:
        'Googleが開発したクロスプラットフォーム開発技術「Flutter」を実践的に活用するための入門書。実装例を交えて、基礎から応用まで解説している。',
    bookStatus: '貸出中',
  ),
  const BookDocument(
    id: '10',
    title: 'ITインフラ技術実戦入門 ',
    author: 'K.Okada',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51KdZ7t4NzL._SX404_BO1,204,203,200_.jpg',
    description:
        'ITインフラを実践するために必要な知識を、実例やノウハウを交えて解説した書籍。現場のインフラマネージャーやエンジニアなど関係者が協力して執筆されている。',
    bookStatus: '貸出中',
  ),
  const BookDocument(
    id: '11',
    title: 'IT業界最新事情 ',
    author: 'T.Suzuki',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51EQ7KjYa9L._SX396_BO1,204,203,200_.jpg',
    description: 'IT業界の動向を、実践的な視点から解説した書籍。技術や経営、課題などを取り扱っている。',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '12',
    title: '実戦アジャイル開発入門 ',
    author: 'Ken Schwaber',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51CJpP7BmOL._SX404_BO1,204,203,200_.jpg',
    description:
        'アジャイル開発を実践するために必要な知識を、実例やノウハウを交えて解説した書籍。現場のスクラムマスターやプロダクトオーナーなど関係者が協力して執筆されている。',
    bookStatus: '貸出中',
  ),
  const BookDocument(
    id: '13',
    title: 'IT技術入門 ',
    author: 'K.Okada',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51S9Y9G-BjL._SX404_BO1,204,203,200_.jpg',
    description:
        'IT技術を実践するために必要な知識を、実例やノウハウを交えて解説した書籍。現場のエンジニアやプログラマーなど関係者が協力して執筆されている。',
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '14',
    title: 'Flutter実践入門 ',
    author: 'Y.Yamamoto',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51vUe9gW8kL._SX403_BO1,204,203,200_.jpg',
    description:
        'Googleが開発したクロスプラットフォーム開発技術「Flutter」を実践的に活用するための入門書。実装例を交えて、基礎から応用まで解説している。',
    bookStatus: '延滞中',
  ),
];
