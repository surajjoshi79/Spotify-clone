import 'package:spotify_clone/model/music.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'artist.g.dart';

@HiveType(typeId: 34)
class Artist{
  @HiveField(0)
  String name;
  @HiveField(1)
  String imageUrl;
  @HiveField(2)
  List<Music> songs;
  Artist({
    required this.name,
    required this.imageUrl,
    required this.songs
  });
}