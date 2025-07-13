import 'package:flutter/material.dart';
import 'package:spotify_clone/model/artist.dart';
import 'package:spotify_clone/provider/follow_provider.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/screen/artist_page.dart';

class Followed extends StatefulWidget {
  const Followed({super.key});

  @override
  State<Followed> createState() => _FollowedState();
}

class _FollowedState extends State<Followed> {
  List<Artist> followed = [];

  @override
  Widget build(BuildContext context) {
    followed = Provider.of<FollowProvider>(context).getArtist();
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
                "Favorite",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: followed.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 280,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ArtistPage(artist: followed[index]);
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 280,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              width: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  followed[index].imageUrl,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              followed[index].name,
                              style: TextStyle(
                                color:
                                    Theme.of(
                                      context,
                                    ).colorScheme.inversePrimary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
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
          ],
        ),
      ),
    );
  }
}
