import 'package:shared_preferences/shared_preferences.dart';
import 'package:just_audio/just_audio.dart';

class SharedPref{
  late final SharedPreferences sharedPreferences;
  Future<void> init() async{
    sharedPreferences=await SharedPreferences.getInstance();
  }
}

final sharedPreferences=SharedPref();
final player=AudioPlayer();