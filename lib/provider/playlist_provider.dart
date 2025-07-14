import 'package:flutter/material.dart';
import 'package:spotify_clone/model/category.dart';

class PlaylistProvider extends ChangeNotifier{
  List<Category> addPlaylist=[];

  void addingPlaylist(Category playlist){
    addPlaylist.add(playlist);
    notifyListeners();
  }

  List<Category> getPlaylist(){
    return addPlaylist;
  }

}