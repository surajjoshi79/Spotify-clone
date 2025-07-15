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
          crossAxisAlignment: followed.isEmpty?CrossAxisAlignment.center:CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                "Followed",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            followed.isEmpty?
            Padding(
              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height/3),
              child: SizedBox(
                width: 170,
                height: 170,
                child: Image.network("https://imgs.search.brave.com/G2bR1jC9V5bid7m57_BgK5b0mm4X5qV06ZoSLki9Xb8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9jZG5p/Lmljb25zY291dC5j/b20vaWxsdXN0cmF0/aW9uL3ByZW1pdW0v/dGh1bWIvZW1wdHkt/d2lzaGxpc3QtaWxs/dXN0cmF0aW9uLWRv/d25sb2FkLWluLXN2/Zy1wbmctZ2lmLWZp/bGUtZm9ybWF0cy0t/b25saW5lLXNob3At/c3RvcmUtc2hvcHBp/bmctc2l0ZS1tYXJr/ZXRwbGFjZS1zdGF0/ZXMtcGFjay13aW5k/b3dzLWludGVyZmFj/ZS1pbGx1c3RyYXRp/b25zLTk4MjQ0NzEu/cG5n"),
              ),
            ):
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
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
