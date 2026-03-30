import 'package:flutter/material.dart';

import 'models/book.dart';

class DetailPage extends StatelessWidget {
  final Book book;

  const DetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(book.image),
            SizedBox(height: 16),
            Text(book.title, style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text(book.description),
          ],
        ),
      ),
    );
  }
}