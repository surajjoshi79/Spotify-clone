import 'package:flutter/material.dart';
import 'package:spotify_clone/screen/home.dart';
import 'package:spotify_clone/screen/library.dart';
import 'package:spotify_clone/screen/search.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final screen = [Home(), Search(), Library()];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: current, children: screen),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            current = value;
          });
        },
        currentIndex: current,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.green,
        unselectedItemColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
