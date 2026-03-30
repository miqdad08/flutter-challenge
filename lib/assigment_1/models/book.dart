class Book {
  final String title;
  final String description;
  final String image;

  Book({
    required this.title,
    required this.description,
    required this.image,
  });
}

final List<Book> bookList = [
  Book(
    title: 'Book One',
    description: 'This is book one',
    image: 'https://picsum.photos/seed/book1/300/450',
  ),
  Book(
    title: 'Book Two',
    description: 'This is book two',
    image: 'https://picsum.photos/seed/book2/300/450',
  ),
  Book(
    title: 'Book Three',
    description: 'This is book three',
    image: 'https://picsum.photos/seed/book3/300/450',
  ),
  Book(
    title: 'Book Four',
    description: 'This is book four',
    image: 'https://picsum.photos/seed/book4/300/450',
  ),
  Book(
    title: 'Book Five',
    description: 'This is book five',
    image: 'https://picsum.photos/seed/book5/300/450',
  ),
  Book(
    title: 'Book Six',
    description: 'This is book six',
    image: 'https://picsum.photos/seed/book6/300/450',
  ),
  Book(
    title: 'Book Seven',
    description: 'This is book seven',
    image: 'https://picsum.photos/seed/book7/300/450',
  ),
  Book(
    title: 'Book Eight',
    description: 'This is book eight',
    image: 'https://picsum.photos/seed/book8/300/450',
  ),
];

// collection dummy (ambil sebagian saja)
final List<Book> collectionList = [
  bookList[0],
  bookList[2],
  bookList[4],
];
