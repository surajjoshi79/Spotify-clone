import 'package:flutter/material.dart';
import 'package:spotify_clone/model/music.dart';

class FavoriteProvider extends ChangeNotifier{
  List<Music> favorite=[];

  void addFavorite(Music music){
    favorite.add(music);
    notifyListeners();
  }

  List<Music> getFavorite(){
    return favorite;
  }

}