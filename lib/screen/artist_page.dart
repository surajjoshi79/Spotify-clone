import 'package:flutter/material.dart';
import 'package:spotify_clone/model/artist.dart';
import 'package:spotify_clone/screen/music_player.dart';
import 'package:provider/provider.dart';
import '../provider/favorite_provider.dart';
import 'package:spotify_clone/provider/follow_provider.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

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
              backgroundColor: !Provider.of<FollowProvider>(context,listen: false).follow.contains(widget.artist)?Theme.of(context).colorScheme.tertiary:Colors.green,
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
                  if (!Provider.of<FollowProvider>(
                    context,
                    listen: false,
                  ).follow.contains(widget.artist)) {
                    Provider.of<FollowProvider>(
                      context,
                      listen: false,
                    ).addArtist(widget.artist);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Followed ${widget.artist.name}")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Already followed ${widget.artist.name}"),
                      ),
                    );
                  }
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      !Provider.of<FollowProvider>(
                            context,
                            listen: false,
                          ).follow.contains(widget.artist)
                          ? Theme.of(context).colorScheme.tertiary
                          : Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      !Provider.of<FollowProvider>(
                            context,
                            listen: false,
                          ).follow.contains(widget.artist)
                          ? "Follow"
                          : "Followed",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      !Provider.of<FollowProvider>(
                            context,
                            listen: false,
                          ).follow.contains(widget.artist)
                          ? Icons.add
                          : Icons.verified_outlined,
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
                            if (!Provider.of<FavoriteProvider>(
                              context,
                              listen: false,
                            ).favorite.contains(widget.artist.songs[index])) {
                              Provider.of<FavoriteProvider>(
                                context,
                                listen: false,
                              ).addFavorite(widget.artist.songs[index]);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Added to favorite")),
                              );
                              setState(() {});
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Already Added")),
                              );
                            }
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.favorite,
                            color:
                                Provider.of<FavoriteProvider>(
                                      context,
                                      listen: false,
                                    ).favorite.contains(widget.artist.songs[index])
                                    ? Colors.red
                                    : Theme.of(
                                      context,
                                    ).colorScheme.inversePrimary,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
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
