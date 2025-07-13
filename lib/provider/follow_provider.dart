import 'package:flutter/material.dart';
import 'package:spotify_clone/model/artist.dart';

class FollowProvider extends ChangeNotifier{
  List<Artist> follow=[];

  void addArtist(Artist artist){
    follow.add(artist);
    notifyListeners();
  }

  List<Artist> getArtist(){
    return follow;
  }

}