import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(DateTime.now().hour<12 && DateTime.now().hour>4?'Good morning':'Good evening',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        )),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings_outlined,color:Colors.white))
        ],
      ),
    );
  }
}
