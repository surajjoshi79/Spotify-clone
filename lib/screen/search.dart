import 'package:flutter/material.dart';
import 'package:spotify_clone/screen/result_page.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController music=TextEditingController();
  FocusNode fn=FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        fn.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
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
            children: [
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: TextField(
                  controller: music,
                  focusNode: fn,
                  textCapitalization: TextCapitalization.sentences,
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontSize: 18),
                  cursorColor: Theme.of(context).colorScheme.inversePrimary,
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).colorScheme.tertiary,
                    filled: true,
                    hintText: "What do you want to listen?",
                    hintStyle: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontSize: 18),
                    prefixIcon: Icon(Icons.music_note, color: Theme.of(context).colorScheme.inversePrimary),
                    suffixIcon: IconButton(onPressed: (){
                      if(music.text.trim().isNotEmpty){
                        String search=music.text.trim();
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return ResultPage(search:search);
                        }));
                      }else{
                        final snackBar = SnackBar(
                          elevation: 0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.transparent,
                          content: AwesomeSnackbarContent(
                            title: 'oh snap!',
                            message:
                            'Unable to search',
                            contentType: ContentType.failure,
                          ),
                        );
                        ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar);
                      }
                      setState(() {
                        music.clear();
                        fn.unfocus();
                      });
                    }, icon: Icon(Icons.search, color: Theme.of(context).colorScheme.inversePrimary)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(style: BorderStyle.none),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(style: BorderStyle.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Everything you need",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Search for songs, artists, albums, playlists and more",
                    style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontSize: 16),
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
