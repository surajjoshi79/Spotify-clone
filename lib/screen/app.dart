import 'package:flutter/material.dart';
import 'package:spotify_clone/provider/mini_player_provider.dart';
import 'package:spotify_clone/screen/home.dart';
import 'package:spotify_clone/screen/library.dart';
import 'package:spotify_clone/screen/search.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:spotify_clone/utils.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final screen = [const Home(), const Search(), const Library()];
  int current = 0;
  bool buildMiniPlayer = false;
  @override
  Widget build(BuildContext context) {
    buildMiniPlayer=Provider.of<MiniPlayerProvider>(context).getRebuild();
    return Scaffold(
      body: IndexedStack(index: current, children: screen),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: buildMiniPlayer,
            child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.green.shade800,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                      ),
                      child: Image.network(
                        Provider.of<MiniPlayerProvider>(context).getMusic().imageUrl,
                        fit: BoxFit.fill,
                        loadingBuilder: (context, child, loadingProgress,) {
                          if (loadingProgress == null) {
                            return child;
                          } else {
                            return Shimmer(
                              duration: Duration(milliseconds: 100),
                              interval: Duration(milliseconds: 50),
                              child: Container(color: Colors.grey),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Provider.of<MiniPlayerProvider>(context).getMusic().label,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        Provider.of<MiniPlayerProvider>(context).getMusic().artist,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      onPressed: (){
                        if(player.playing){
                          player.pause();
                        }else{
                          player.play();
                        }
                        setState(() {});
                      },
                      icon: player.playing?
                      Icon(Icons.pause_circle,color: Theme.of(context).colorScheme.primary,size: 40):Icon(Icons.play_circle,color: Theme.of(context).colorScheme.primary,size: 40)
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomNavigationBar(
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
        ],
      ),
    );
  }
}
