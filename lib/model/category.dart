import 'package:spotify_clone/model/music.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'category.g.dart';

@HiveType(typeId: 33)
class Category{
  @HiveField(0)
  String title;
  @HiveField(1)
  String imageUrl;
  @HiveField(2)
  List<Music> music;
  Category({
    required this.title,
    required this.imageUrl,
    required this.music
  });
}