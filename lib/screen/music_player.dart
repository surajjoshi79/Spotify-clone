import 'package:flutter/material.dart';
import 'package:spotify_clone/provider/favorite_provider.dart';
import 'package:spotify_clone/model/music.dart';
import 'package:provider/provider.dart';

class MusicPlayer extends StatefulWidget {
  Music playing;

  MusicPlayer({super.key, required this.playing});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
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
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text(
                  "Now playing",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 7),
              SizedBox(
                height: 320,
                width: 320,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    widget.playing.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 8),
              Text(
                widget.playing.label,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                widget.playing.artist,
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              SizedBox(height: 10),
              Slider(
                value: 0.3,
                onChanged: (value) {},
                inactiveColor: Theme.of(context).colorScheme.inversePrimary,
                activeColor: Colors.green,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "0:00",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    Text(
                      widget.playing.duration,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.info, size: 40),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_previous, size: 40),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.pause_circle,
                      size: 60,
                      color: Colors.green,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_next, size: 40),
                  ),
                  IconButton(
                    onPressed: () {
                      if (!Provider.of<FavoriteProvider>(
                        context,
                        listen: false,
                      ).favorite.contains(widget.playing)) {
                        Provider.of<FavoriteProvider>(
                          context,
                          listen: false,
                        ).addFavorite(widget.playing);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Added to favorite")),
                        );
                        setState(() {});
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Already Added")),
                        );
                      }
                    },
                    icon: Icon(
                      Icons.favorite,
                      size: 35,
                      color:
                          Provider.of<FavoriteProvider>(
                                context,
                                listen: false,
                              ).favorite.contains(widget.playing)
                              ? Colors.red
                              : Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
