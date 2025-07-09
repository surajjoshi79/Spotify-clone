import 'package:flutter/material.dart';
import 'package:spotify_clone/screen/home.dart';
import 'package:spotify_clone/screen/library.dart';
import 'package:spotify_clone/screen/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final screen=[Home(),Search(),Library()];
  int current=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: current,
          children: screen,
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value){
              setState(() {
                current=value;
              });
            },
            currentIndex: current,
            backgroundColor: Colors.black87,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            elevation: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.library_books),label: 'Library')
            ]
        ),
      ),
    );
  }
}
