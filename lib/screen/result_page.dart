import 'package:flutter/material.dart';
import 'package:spotify_clone/model/artist.dart';
import 'package:spotify_clone/service/artist_service.dart';
import 'package:spotify_clone/service/category_service.dart';
import 'package:spotify_clone/service/music_service.dart';
import '../model/music.dart';
import '../provider/mini_player_provider.dart';
import 'package:provider/provider.dart';
import 'artist_page.dart';
import 'music_player.dart';

class ResultPage extends StatefulWidget {
  final String search;

  const ResultPage({super.key, required this.search});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<Music> searchResult = [];
  List<Artist> searchArtist = [];

  void addMusicToSearch() {
    searchResult.addAll(MusicService.getMusic());
    searchResult.addAll(MusicService.getMadeForYou());
    for (int i = 0; i < CategoryService.getCategory().length; i++) {
      searchResult.addAll(CategoryService.getCategory()[i].music);
    }
    for (int i = 0; i < ArtistService.getArtist().length; i++) {
      searchResult.addAll(ArtistService.getArtist()[i].songs);
    }
    searchArtist.addAll(ArtistService.getArtist());
  }

  @override
  Widget build(BuildContext context) {
    addMusicToSearch();
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
                title: Text(
                  "Result for \"${widget.search}\"",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 20),
                child: Text(
                  "Songs",
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
                  padding: EdgeInsets.zero,
                  itemCount: searchResult.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if(searchResult[index].label.contains(widget.search) || searchResult[index].description.contains(widget.search) || searchResult[index].artist.contains(widget.search)) {
                      return GestureDetector(
                        onTap: () {
                          Provider.of<MiniPlayerProvider>(context,listen: false).rebuild(searchResult[index]);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return MusicPlayer(
                                    playing: searchResult, current: index);
                              },
                            ),
                          );
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
                                      searchResult[index].imageUrl,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Text(
                                  searchResult[index].label,
                                  style: TextStyle(
                                    color:
                                    Theme
                                        .of(
                                      context,
                                    )
                                        .colorScheme
                                        .inversePrimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  searchResult[index].description,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color:
                                    Theme
                                        .of(
                                      context,
                                    )
                                        .colorScheme
                                        .inversePrimary,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                    else{
                      return Container();
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 20),
                child: Text(
                  "Artist",
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
                  itemCount: searchArtist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if(searchArtist[index].name.contains(widget.search)) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return ArtistPage(
                                      artist: searchArtist[index]);
                                }));
                          },
                          child: SizedBox(
                            width: 160,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: CircleAvatar(
                                    foregroundImage: NetworkImage(
                                      searchArtist[index].imageUrl,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  searchArtist[index].name,
                                  style: TextStyle(
                                    color: Theme
                                        .of(context)
                                        .colorScheme
                                        .inversePrimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                    else{
                      return Container();
                    }
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
