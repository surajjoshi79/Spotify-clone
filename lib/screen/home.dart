import 'package:spotify_clone/model/artist.dart';
import 'package:spotify_clone/model/category.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/model/music.dart';
import 'package:spotify_clone/screen/music_player.dart';
import 'package:spotify_clone/screen/setting.dart';
import 'package:spotify_clone/service/artist_service.dart';
import 'package:spotify_clone/service/category_service.dart';
import 'package:spotify_clone/service/music_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String message = 'Good morning';
  List<Category> category = CategoryService.getCategory();
  List<Music> music = MusicService.getMusic();
  List<Artist> artist = ArtistService.getArtist();

  Widget createMusicList() {
    return SizedBox(
      height: 260,
      child: ListView.builder(
        itemCount: music.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return MusicPlayer(playing: music[index]);
              }));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          music[index].imageUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      music[index].label,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      music[index].description,
                      style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (DateTime.now().hour > 12 && DateTime.now().hour < 16) {
      message = 'Good afternoon';
    } else if (DateTime.now().hour > 16 && DateTime.now().hour < 24) {
      message = 'Good evening';
    } else if (DateTime.now().hour > 24 && DateTime.now().hour < 4) {
      message = 'Good night';
    } else {
      message = 'Good morning';
    }
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Container(
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
                elevation: 0,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Spotify",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      message,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return Setting();
                        }));
                      },
                      icon: Icon(
                        Icons.settings_outlined,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 320,
                child: GridView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 80,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 80,
                              width: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                ),
                                child: Icon(Icons.add),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                category[index].title,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.inversePrimary,
                                  fontSize: 16,
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
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 20),
                child: Text(
                  "Made For You",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              createMusicList(),
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 20),
                child: Text(
                  "Popular playlist",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              createMusicList(),
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 20),
                child: Text(
                  "Popular Artist",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  itemCount: music.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 160,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: CircleAvatar(
                                foregroundImage: NetworkImage(
                                  artist[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              artist[index].name,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.inversePrimary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
