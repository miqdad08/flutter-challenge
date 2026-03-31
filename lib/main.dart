import 'package:challenge_flutter/assigment_1/main_page.dart';
import 'package:challenge_flutter/assignment_2/cart_page.dart';
import 'package:challenge_flutter/challenge/form_page.dart';
import 'package:challenge_flutter/exercise_form/exercise_page.dart';
import 'package:challenge_flutter/mini_project/event_form_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
              child: Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Tugas 1")),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
              child: Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Tugas 2")),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExercisePage()),
                );
              },
              child: Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Latihan 1, 2 & 3")),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventFormPage()),
                );
              },
              child: Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Mini Project")),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MahasiswaFormPage()),
                );
              },
              child: Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Challenge")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
