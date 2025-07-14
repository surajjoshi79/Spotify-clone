import 'package:spotify_clone/model/music.dart';

class Artist{
  String name;
  String imageUrl;
  List<Music> songs;
  Artist({
    required this.name,
    required this.imageUrl,
    required this.songs
  });
}