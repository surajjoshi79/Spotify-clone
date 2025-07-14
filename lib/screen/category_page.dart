import 'package:flutter/material.dart';
import 'package:spotify_clone/model/category.dart';
import 'package:spotify_clone/screen/music_player.dart';
import 'package:provider/provider.dart';
import '../provider/favorite_provider.dart';
import '../provider/playlist_provider.dart';

class CategoryPage extends StatefulWidget {
  Category category;

  CategoryPage({super.key, required this.category});

  @override
  State<CategoryPage> createState() => _ArtistState();
}

class _ArtistState extends State<CategoryPage> {
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
                widget.category.title,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  widget.category.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10),
            IconButton(
              onPressed: () {
                if (!Provider.of<PlaylistProvider>(
                  context,
                  listen: false,
                ).addPlaylist.contains(widget.category)) {
                  Provider.of<PlaylistProvider>(
                    context,
                    listen: false,
                  ).addingPlaylist(widget.category);
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Added to playlist")));
                } else {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Already Added")));
                }
                setState(() {});
              },
              icon: Icon(
                !Provider.of<PlaylistProvider>(
                      context,
                      listen: false,
                    ).addPlaylist.contains(widget.category)
                    ? Icons.add_circle_outlined
                    : Icons.verified,
                size: 60,
                color:
                    !Provider.of<PlaylistProvider>(
                          context,
                          listen: false,
                        ).addPlaylist.contains(widget.category)
                        ? Theme.of(context).colorScheme.inversePrimary
                        : Colors.green,
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: widget.category.music.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.category.music[index].label),
                    subtitle: Text(widget.category.music[index].artist),
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.network(
                        widget.category.music[index].imageUrl,
                        fit: BoxFit.fill,
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
                            ).favorite.contains(widget.category.music[index])) {
                              Provider.of<FavoriteProvider>(
                                context,
                                listen: false,
                              ).addFavorite(widget.category.music[index]);
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
                                    ).favorite.contains(
                                      widget.category.music[index],
                                    )
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
                                  return MusicPlayer(
                                    playing: widget.category.music[index],
                                  );
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
