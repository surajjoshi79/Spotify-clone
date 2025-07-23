import 'package:flutter/material.dart';
import 'package:spotify_clone/model/music.dart';

class MiniPlayerProvider extends ChangeNotifier{
  bool buildMiniPlayer=false;
  Music playing=Music(label: '', description: '', imageUrl: '', artist: '', audioUrl: '');

  bool getRebuild() => buildMiniPlayer;

  Music getMusic() => playing;

  void rebuild(Music song){
    buildMiniPlayer=true;
    playing=song;
    notifyListeners();
  }
}