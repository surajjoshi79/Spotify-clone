import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_clone/model/artist.dart';
import 'package:spotify_clone/model/category.dart';
import 'package:spotify_clone/model/music.dart';
import 'package:spotify_clone/provider/mini_player_provider.dart';
import 'package:spotify_clone/screen/app.dart';
import 'package:spotify_clone/provider/theme_provider.dart';
import 'package:spotify_clone/utils.dart';
import 'package:provider/provider.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await sharedPreferences.init();
  await Hive.initFlutter();
  Hive.registerAdapter(MusicAdapter());
  Hive.registerAdapter(ArtistAdapter());
  Hive.registerAdapter(CategoryAdapter());
  await Hive.openBox("favoriteBox");
  await Hive.openBox("followedBox");
  await Hive.openBox("playlistBox");
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => MiniPlayerProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).getTheme(),
      home: const SplashScreen()
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> postDelay() async {
    Future.delayed(const Duration(milliseconds: 2200), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return App();
          },
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    postDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SizedBox(
              height: 180,
              width: 180,
              child: Image.asset("assets/icon_splash_screen.png"),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8,horizontal: 15),
              child: SimpleAnimationProgressBar(
                height: 30,
                width: MediaQuery.of(context).size.width,
                backgroundColor: Colors.grey.shade800,
                foregroundColor: Colors.green.shade700,
                ratio: 1,
                direction: Axis.horizontal,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 1800),
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
