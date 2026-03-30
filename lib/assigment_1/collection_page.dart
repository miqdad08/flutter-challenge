import 'package:flutter/material.dart';

import 'models/book.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Collection')),
      body: ListView.builder(
        itemCount: collectionList.length,
        itemBuilder: (context, index) {
          final book = collectionList[index];
          return ListTile(
            leading: Image.network(book.image),
            title: Text(book.title),
          );
        },
      ),
    );
  }
}