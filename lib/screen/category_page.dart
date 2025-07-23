import 'package:flutter/material.dart';
import 'package:spotify_clone/model/category.dart';
import 'package:spotify_clone/screen/music_player.dart';
import 'package:spotify_clone/utils.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/provider/mini_player_provider.dart';

class CategoryPage extends StatefulWidget {
  final Category category;

  const CategoryPage({super.key, required this.category});

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
            Stack(
              alignment: Alignment.bottomRight,
              children: [
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
                IconButton(
                  onPressed: () {
                    if (!playlistBox.containsKey(widget.category.title)) {
                      playlistBox.put(widget.category.title,widget.category);
                      final snackBar = SnackBar(
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        content: AwesomeSnackbarContent(
                          title: 'Yohoooo!',
                          message:
                          'Added to playlist ${widget.category.title}',
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
                          title: 'oh snap!',
                          message:
                          'Already added to playlist ${widget.category.title}',
                          contentType: ContentType.warning,
                        ),
                      );
                      ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar);
                    }
                    setState(() {});
                  },
                  icon: Icon(
                    !playlistBox.containsKey(widget.category.title) ? Icons.add_circle_outlined : Icons.verified,
                    size: 60,
                    color:
                    !playlistBox.containsKey(widget.category.title) ? Theme.of(context).colorScheme.inversePrimary : Colors.green,
                  ),
                ),
              ],
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
                            if (!favoriteBox.containsKey(widget.category.music[index].label)) {
                              favoriteBox.put(widget.category.music[index].label, widget.category.music[index]);
                              final snackBar = SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title: 'Yohoooo!',
                                  message:
                                  'Added to favorite ${widget.category.music[index].label}',
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
                                  title: 'Opssss!',
                                  message:
                                  'Already added to favorite ${widget.category.music[index].label}',
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
                            favoriteBox.containsKey(widget.category.music[index].label) ? Colors.red : Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Provider.of<MiniPlayerProvider>(context,listen: false).rebuild(widget.category.music[index]);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return MusicPlayer(
                                    playing: widget.category.music,
                                    current: index,
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
