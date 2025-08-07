import 'package:flutter/material.dart';
import 'package:spotify_clone/model/music.dart';

class MiniPlayerProvider extends ChangeNotifier{
  bool buildMiniPlayer=false;
  bool play=false;
  Music playing=Music(label: '', description: '', imageUrl: '', artist: '', audioUrl: '');

  bool getRebuild() => buildMiniPlayer;

  Music getMusic() => playing;

  bool getPlay() => play;

  void rebuild(bool isPlaying,Music song){
    buildMiniPlayer=true;
    play=isPlaying;
    playing=song;
    notifyListeners();
  }
}