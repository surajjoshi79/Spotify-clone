import 'package:hive_flutter/hive_flutter.dart';
part 'music.g.dart';

@HiveType(typeId: 32)
class Music{
  @HiveField(0)
  String label;
  @HiveField(1)
  String description;
  @HiveField(2)
  String imageUrl;
  @HiveField(3)
  String artist;
  @HiveField(4)
  String audioUrl;
  Music({
    required this.label,
    required this.description,
    required this.imageUrl,
    required this.artist,
    required this.audioUrl
  });
}