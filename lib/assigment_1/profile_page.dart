import 'package:flutter/material.dart';

import 'models/book.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            SizedBox(height: 10),
            Text('Username'),
            Text('email@example.com'),
            SizedBox(height: 20),
            Text('My Collection'),
            Expanded(
              child: ListView.builder(
                itemCount: collectionList.length,
                itemBuilder: (context, index) {
                  final book = collectionList[index];
                  return ListTile(
                    title: Text(book.title),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}