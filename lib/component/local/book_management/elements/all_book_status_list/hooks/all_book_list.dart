import '/domain/book_document/book_document.dart';

final allBookList = [
  const BookDocument(
    id: '1',
    title: 'はらぺこあおむし ',
    author: 'エリック・カール',
    bookImage: 'https://m.media-amazon.com/images/I/91a4TmOq8TL.jpg',
    description: '小さなあおむしは、もりもりと食べつづけて美しい蝶になった。数や曜日の認識をおりこみ、穴あきのしかけをこらした斬新な絵本。',
    publisher: '出版社',
    genreList: ['絵本', '教育'],
    bookStatus: '延滞中',
  ),
  const BookDocument(
    id: '2',
    title: 'フラットな組織が作り出す、Agileな開発環境',
    author: '岩本 晃',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51VpPJFxRUL._SX346_BO1,204,203,200_.jpg',
    description:
        '「組織をフラットにしてアジャイルを実践する」ことは、今までの中小・大企業の境界線を超えて、新しい開発環境を生み出す可能性を秘めている。その現場実践を提示する。',
    publisher: 'インプレスR&D',
    genreList: ['IT', 'プログラミング', 'アジャイル'],
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '3',
    title: '戦略的なプロジェクト管理',
    author: 'ジェームズ・P・ルイス',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/41hKTCtPpYL._SX346_BO1,204,203,200_.jpg',
    description:
        'プロジェクト管理の新しい時代が到来している。それは、プロジェクト管理を戦略的な手法に変えるための最善の方法を提示する本である。',
    publisher: '日経BP',
    genreList: ['プロジェクト管理', '戦略'],
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '4',
    title: 'Scrum:継続的なイノベーション',
    author: 'Ken Schwaber',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/41c6iCfMnJL._SX331_BO1,204,203,200_.jpg',
    description:
        'Scrumを実践する方法を示す。組織の効率性を向上させる方法を提示し、イノベーションを促進するために必要な変化を詳しく解説する。',
    publisher: '翔泳社',
    genreList: ['IT', 'プログラミング', 'スクラム'],
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '5',
    title: 'プロジェクトマネジメントの教科書',
    author: 'ジョージ・T・ヘンリー',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51YwYV7DnhL._SX402_BO1,204,203,200_.jpg',
    description:
        'プロジェクトマネジメントの教科書は、プロジェクト管理のテクニック、技術、ツールを解説した本です。基礎知識から応用技術までを詳しく解説しています。',
    publisher: '日経BP',
    genreList: ['プロジェクト管理', '教科書'],
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '6',
    title: 'アジャイル開発：ソフトウェア開発の技法',
    author: 'Ken Schwaber',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51XKj4ZbN4L._SX332_BO1,204,203,200_.jpg',
    description:
        'アジャイル開発では、ソフトウェア開発の新しい技法を提示する。この技法を使用することで、開発プロセスを柔軟にでき、より効率的に開発を行うことができるようになる。',
    publisher: 'オライリージャパン',
    genreList: ['IT', 'プログラミング', 'アジャイル'],
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '7',
    title: 'スクラム開発：アジャイル開発の最適な実践法',
    author: 'Ken Schwaber',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/41tMPlnOS9L._SX331_BO1,204,203,200_.jpg',
    description:
        'スクラム開発では、アジャイル開発を実践する最適な方法を提示する。スクラムを使用することで、複雑なプロジェクトを効率的に実行できるようになる。',
    publisher: '翔泳社',
    genreList: ['IT', 'プログラミング', 'スクラム'],
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '8',
    title: 'プロジェクト管理の教科書',
    author: 'ジェームズ・P・ルイス',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/41Gh-L2vz3L._SX331_BO1,204,203,200_.jpg',
    description:
        'プロジェクト管理の教科書は、プロジェクト管理の方法を詳しく解説した本である。プロジェクトマネジメントのプロセスからツールまでを詳しく解説する。',
    publisher: '日経BP',
    genreList: ['プロジェクト管理', '教科書'],
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '9',
    title: 'スクラム実践ガイド',
    author: 'Ken Schwaber',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51A4i9XgEFL._SX331_BO1,204,203,200_.jpg',
    description:
        'スクラム実践ガイドでは、スクラムを実践するために必要な情報を提供する。この本を通して、スクラムを効率的に実践し、開発プロセスを有効的に行うための情報を得ることができる。',
    publisher: 'オライリージャパン',
    genreList: ['IT', 'プログラミング', 'スクラム'],
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '10',
    title: 'プロジェクト管理のための統計学',
    author: 'ジョン・C・バッカー',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51q9f0D-5uL._SX366_BO1,204,203,200_.jpg',
    description:
        'プロジェクト管理のための統計学では、プロジェクト管理のための統計学の基礎知識を解説する。プロジェクトの状況を把握するための統計学的なアプローチを詳しく解説している。',
    publisher: '日経BP',
    genreList: ['プロジェクト管理', '統計学'],
    bookStatus: '貸出中',
  ),
  const BookDocument(
    id: '11',
    title: 'アジャイルなプロジェクト管理',
    author: 'ジェームズ・A・ハリス',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51LK7xGp-lL._SX331_BO1,204,203,200_.jpg',
    description:
        'アジャイルなプロジェクト管理では、アジャイルなプロジェクト管理を実践するためのツールとテクニックを提示する。アジャイルな開発を行うための情報を詳しく解説している。',
    publisher: 'オライリージャパン',
    genreList: ['プロジェクト管理', 'アジャイル'],
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '12',
    title: 'プロジェクト管理のためのプログラミング',
    author: 'アンソニー・I・アレックス',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/41D8RbRdYTL._SX331_BO1,204,203,200_.jpg',
    description:
        'プロジェクト管理のためのプログラミングでは、プロジェクト管理のためのプログラミングの基礎知識を解説する。アプリケーションを開発するためのプログラミング言語を詳しく解説している。',
    publisher: '日経BP',
    genreList: ['プログラミング', 'プロジェクト管理'],
    bookStatus: '貸出中',
  ),
  const BookDocument(
    id: '13',
    title: 'プロジェクト管理の原理',
    author: 'ジェームズ・P・ルイス',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51TzTmU%2BJgL._SX331_BO1,204,203,200_.jpg',
    description:
        'プロジェクト管理の原理では、プロジェクト管理の原理を詳しく解説する。プロジェクトを効率的に管理するための方法を詳しく解説している。',
    publisher: '日経BP',
    genreList: ['プロジェクト管理', '原理'],
    bookStatus: '貸出中',
  ),
  const BookDocument(
    id: '14',
    title: 'プロジェクト管理のためのテスト',
    author: 'ジョン・C・バッカー',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51zCZPmhVvL._SX331_BO1,204,203,200_.jpg',
    description:
        'プロジェクト管理のためのテストでは、プロジェクト管理のためのテストの基礎知識を解説する。プロジェクトを検証・検査するためのテストの方法を詳しく解説している。',
    publisher: '日経BP',
    genreList: ['プロジェクト管理', 'テスト'],
    bookStatus: '蔵書',
  ),
  const BookDocument(
    id: '15',
    title: 'スクラムボトムアップ',
    author: 'ニコラス・フロス',
    bookImage:
        'https://images-na.ssl-images-amazon.com/images/I/51CjKQM2dOL._SX348_BO1,204,203,200_.jpg',
    description:
        'スクラムボトムアップでは、スクラムを最も活用するためのアップストリーム／ダウンストリームの両方の観点を検証している。スクラムを実践している組織やチームに役立つ情報が満載である。',
    publisher: 'ソフトバンククリエイティブ',
    genreList: ['アジャイル', 'IT'],
    bookStatus: '貸出中',
  ),
];
