import 'package:shared_preferences/shared_preferences.dart';
import 'package:just_audio/just_audio.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SharedPref{
  late final SharedPreferences sharedPreferences;
  Future<void> init() async{
    sharedPreferences=await SharedPreferences.getInstance();
  }
}

final sharedPreferences=SharedPref();
final player=AudioPlayer();
var followBox=Hive.box("followedBox");
var playlistBox=Hive.box("playlistBox");
var favoriteBox=Hive.box("favoriteBox");