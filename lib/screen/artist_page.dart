import 'package:flutter/material.dart';
import 'package:spotify_clone/model/artist.dart';
import 'package:spotify_clone/screen/music_player.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:provider/provider.dart';
import '../provider/mini_player_provider.dart';
import '../utils.dart';

class ArtistPage extends StatefulWidget {
  final Artist artist;

  const ArtistPage({super.key, required this.artist});

  @override
  State<ArtistPage> createState() => _ArtistState();
}

class _ArtistState extends State<ArtistPage> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                "Artist",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            CircleAvatar(
              radius: 80,
              backgroundColor: !followBox.containsKey(widget.artist.name)?Theme.of(context).colorScheme.tertiary:Colors.green,
              child: CircleAvatar(
                radius: 75,
                foregroundImage: NetworkImage(widget.artist.imageUrl),
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.artist.name,
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 165,
              child: ElevatedButton(
                onPressed: () {
                  if (!followBox.containsKey(widget.artist.name)) {
                    followBox.put(widget.artist.name, widget.artist);
                    final snackBar = SnackBar(
                      elevation: 0,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      content: AwesomeSnackbarContent(
                        title: 'Yohoooo!',
                        message:
                        'You are following ${widget.artist.name}',
                        contentType: ContentType.success,
                      ),
                    );
                    ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar);
                  } else {
                    final snackBar = SnackBar(
                      elevation: 0,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      content: AwesomeSnackbarContent(
                        title: 'Opsssss!',
                        message:
                        'You are already following ${widget.artist.name}',
                        contentType: ContentType.warning,
                      ),
                    );
                    ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar);
                  }
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  !followBox.containsKey(widget.artist.name) ? Theme.of(context).colorScheme.tertiary : Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      !followBox.containsKey(widget.artist.name) ? "Follow" : "Followed",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      !followBox.containsKey(widget.artist.name) ? Icons.add : Icons.verified_outlined,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Popular Songs",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: widget.artist.songs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.artist.songs[index].label),
                    subtitle: Text(widget.artist.songs[index].artist),
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.network(
                        widget.artist.songs[index].imageUrl,
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
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (!favoriteBox.containsKey(widget.artist.songs[index].label)) {
                              favoriteBox.put(widget.artist.songs[index].label,widget.artist.songs[index]);
                              final snackBar = SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title: 'Yohoooo!',
                                  message:
                                  'Added to favorite ${widget.artist.songs[index].label}',
                                  contentType: ContentType.success,
                                ),
                              );
                              ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar);
                              setState(() {});
                            } else {
                              final snackBar = SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title: 'Opsss!',
                                  message:
                                  'Already added to favorite ${widget.artist.songs[index].label}}',
                                  contentType: ContentType.warning,
                                ),
                              );
                              ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar);
                            }
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.favorite,
                            color:
                            favoriteBox.containsKey(widget.artist.songs[index].label) ? Colors.red : Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Provider.of<MiniPlayerProvider>(context,listen: false).rebuild(widget.artist.songs[index]);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return MusicPlayer(playing: widget.artist.songs,current: index);
                                },
                              ),
                            );
                          },
                          icon: Icon(Icons.play_circle, color: Colors.green),
                        ),
                      ],
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
