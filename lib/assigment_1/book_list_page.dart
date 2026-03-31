import 'package:flutter/material.dart';

import 'book_detail_page.dart';
import 'models/book.dart';
class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book List')),
      body: ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (context, index) {
          final book = bookList[index];
          return ListTile(
            leading: Image.network(book.image),
            title: Text(book.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailPage(book: book),
                ),
              );
            },
          );
        },
      ),
    );
  }
}