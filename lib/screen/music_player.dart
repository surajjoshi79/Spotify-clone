import 'package:flutter/material.dart';
import 'package:spotify_clone/provider/favorite_provider.dart';
import 'package:spotify_clone/model/music.dart';
import 'package:provider/provider.dart';
import 'package:just_audio/just_audio.dart';
import '../utils.dart';

class MusicPlayer extends StatefulWidget {
  List<Music> playing;
  int current;
  MusicPlayer({super.key, required this.playing, required this.current});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  Duration position=Duration.zero;
  Duration duration=Duration.zero;

  String formatDuration(Duration d){
    final minutes=d.inMinutes.remainder(60);
    final seconds=d.inSeconds.remainder(60);
    return "${minutes.toString().padLeft(2,'0')}:${seconds.toString().padLeft(2,'0')}";
  }

  void handlePlayPause(){
    if(player.playing){
      player.pause();
    }else{
      player.play();
    }
  }

  void handleSeek(double values){
    player.seek(Duration(seconds: values.toInt()));
  }

  @override
  void initState() {
    super.initState();
    try {
      if(player.playing) {
        player.pause();
      }
      player.setUrl(widget.playing[widget.current].audioUrl);
      player.play();
      player.setLoopMode(LoopMode.one);
      player.positionStream.listen((p){
        setState(() {
          position=p;
        });
      });
      player.durationStream.listen((d){
        setState(() {
          duration=d!;
        });
      });
      player.playerStateStream.listen((state){
        if(state.processingState == ProcessingState.completed){
          setState(() {
            position=Duration.zero;
          });
          player.pause();
          player.seek(position);
        }
      });
      
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Can't play")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.primary,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text(
                  "Now playing",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 7),
              SizedBox(
                height: 320,
                width: 320,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    widget.playing[widget.current].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 8),
              Text(
                widget.playing[widget.current].label,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                widget.playing[widget.current].artist,
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              SizedBox(height: 10),
              Slider(
                secondaryTrackValue: player.bufferedPosition.inSeconds.toDouble(),
                min: 0.0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: handleSeek,
                inactiveColor: Theme.of(context).colorScheme.inversePrimary,
                activeColor: Colors.green,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      formatDuration(position),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    Text(
                      formatDuration(duration),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.info, size: 40),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return MusicPlayer(playing: widget.playing, current: widget.current!=0?widget.current-1:widget.playing.length-1);
                      }));
                    },
                    icon: Icon(Icons.skip_previous, size: 40),
                  ),
                  IconButton(
                    onPressed: handlePlayPause,
                    icon: Icon(
                      player.playing?Icons.pause_circle:Icons.play_circle,
                      size: 60,
                      color: Colors.green,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return MusicPlayer(playing: widget.playing, current: (widget.current+1)%widget.playing.length);
                      }));
                    },
                    icon: Icon(Icons.skip_next, size: 40),
                  ),
                  IconButton(
                    onPressed: () {
                      if (!Provider.of<FavoriteProvider>(
                        context,
                        listen: false,
                      ).favorite.contains(widget.playing[widget.current])) {
                        Provider.of<FavoriteProvider>(
                          context,
                          listen: false,
                        ).addFavorite(widget.playing[widget.current]);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Added to favorite")),
                        );
                        setState(() {});
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Already Added")),
                        );
                      }
                    },
                    icon: Icon(
                      Icons.favorite,
                      size: 35,
                      color:
                          Provider.of<FavoriteProvider>(
                                context,
                                listen: false,
                              ).favorite.contains(widget.playing)
                              ? Colors.red
                              : Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
