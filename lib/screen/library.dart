import 'package:flutter/material.dart';
import 'package:spotify_clone/screen/favorite.dart';
import 'package:spotify_clone/screen/music_player.dart';
import 'package:spotify_clone/screen/playlist.dart';
import '../model/music.dart';
import '../service/music_service.dart';
import 'followed.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  List<Music> music = MusicService.getMusic();
  final libraryTab = ["Favorite", "Followed", "Playlist", "Downloaded"];
  final libraryTabColor = [
    Colors.brown,
    Colors.yellow,
    Colors.blue,
    Colors.green.shade600,
  ];
  final libraryTabIcons = [
    Icon(Icons.favorite, color: Colors.red),
    Icon(Icons.account_circle, color: Colors.black),
    Icon(Icons.trending_up, color: Colors.black),
    Icon(Icons.downloading_sharp, color: Colors.black),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.primary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                "Library",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 160,
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 70,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Favorite();
                              },
                            ),
                          );
                        }
                        if (index == 1) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Followed();
                              },
                            ),
                          );
                        }
                        if (index==2) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Playlist();
                              },
                            ),
                          );
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: libraryTabColor[index],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 80,
                              width: 60,
                              child: libraryTabIcons[index],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                libraryTab[index],
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Most Replayed",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 260,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: music.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return MusicPlayer(playing: music,current: index);
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: 180,
                            child: SizedBox(
                              height: 300,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  music[index].imageUrl,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                music[index].label,
                                style: TextStyle(
                                  color:
                                      Theme.of(
                                        context,
                                      ).colorScheme.inversePrimary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
