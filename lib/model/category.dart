import 'package:spotify_clone/model/music.dart';

class Category{
  String title;
  String imageUrl;
  List<Music> music;
  Category({
    required this.title,
    required this.imageUrl,
    required this.music
  });
}