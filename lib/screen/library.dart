import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  final libraryTab=["Favorite","Followed","Most Played","Downloaded"];
  final libraryTabColor=[Colors.brown,Colors.yellow,Colors.blue,Colors.green.shade600];
  final libraryTabIcons=[Icon(Icons.favorite,color: Colors.red),Icon(Icons.account_circle,color: Colors.black),Icon(Icons.trending_up,color: Colors.black),Icon(Icons.downloading_sharp,color:Colors.black)];
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
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text("Library",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 200,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 70,
                  ),
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: libraryTabColor[index],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 80,
                              width: 60,
                              child: libraryTabIcons[index]
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(libraryTab[index],style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
