import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white10,Colors.black,Colors.black,Colors.black,Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
        ),
        child:Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  fillColor: Colors.white30,
                  filled: true,
                  hintText: "What do you want to listen?",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  prefixIcon: Icon(Icons.search,color: Colors.white),
                  suffixIcon: Icon(Icons.close,color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        style: BorderStyle.none
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          style: BorderStyle.none
                      )
                  ),
                ),
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Everything you need",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                Text("Search for songs, artists, albums, playlists and more",style: TextStyle(color: Colors.white,fontSize: 16))
              ],
            ),
            Spacer(),
          ],
        ),
        ),
    );
  }
}
