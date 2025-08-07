import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:spotify_clone/model/music.dart';
import 'package:just_audio/just_audio.dart';
import 'package:spotify_clone/provider/mini_player_provider.dart';
import '../utils.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_lyric/lyrics_reader.dart';

class MusicPlayer extends StatefulWidget {
  final List<Music> playing;
  final int current;
  const MusicPlayer({super.key, required this.playing, required this.current});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  Duration position=Duration.zero;
  Duration duration=Duration.zero;
  String syncedLyrics='';

  String formatDuration(Duration d){
    final minutes=d.inMinutes.remainder(60);
    final seconds=d.inSeconds.remainder(60);
    return "${minutes.toString().padLeft(2,'0')}:${seconds.toString().padLeft(2,'0')}";
  }

  void handlePlayPause(){
    if(player.playing){
      Provider.of<MiniPlayerProvider>(context,listen: false).rebuild(true, widget.playing[widget.current]);
      player.pause();
    }else{
      Provider.of<MiniPlayerProvider>(context,listen: false).rebuild(false, widget.playing[widget.current]);
      player.play();
    }
  }

  void handleSeek(double values){
    player.seek(Duration(seconds: values.toInt()));
  }

  Future<void> getLyrics(String song,String artist) async{
    final query = Uri.encodeComponent('$song $artist');
    final url = Uri.parse('https://lrclib.net/api/search?q=$query');
    final response = await http.get(url);
    if(response.statusCode==200){
      final data=json.decode(response.body);
      if(data.isNotEmpty) {
        syncedLyrics=data[0]['syncedLyrics'];
      }
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getLyrics(widget.playing[widget.current].label, widget.playing[widget.current].artist);
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
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Can't play")));
    }
  }

  @override
  Widget build(BuildContext context) {
    final lyricModel=LyricsModelBuilder.create().bindLyricToMain(syncedLyrics).getModel();
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
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              SizedBox(
                height: 320,
                width: 320,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    widget.playing[widget.current].imageUrl,
                    fit: BoxFit.fill,
                    loadingBuilder: (context, child, loadingProgress,) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return Shimmer(
                          duration: Duration(seconds: 1),
                          interval: Duration(seconds: 0),
                          child: Container(color: Colors.grey),
                        );
                      }
                    },
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              Text(
                widget.playing[widget.current].label,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                widget.playing[widget.current].artist,
                overflow: TextOverflow.clip,
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
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context){
                          return DraggableScrollableSheet(
                            initialChildSize: 0.6,
                            maxChildSize: 0.9,
                            minChildSize: 0.6,
                            builder: (context,controller){
                              return Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color:Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Now Playing",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).colorScheme.inversePrimary
                                      )
                                    ),
                                    ListTile(
                                      title: Text(widget.playing[widget.current].label),
                                      subtitle: Text(widget.playing[widget.current].artist),
                                      leading: SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image.network(
                                          widget.playing[widget.current].imageUrl,
                                          fit: BoxFit.fill,
                                          loadingBuilder: (context, child, loadingProgress,) {
                                            if (loadingProgress == null) {
                                              return child;
                                            } else {
                                              return Shimmer(
                                                duration: Duration(milliseconds: 100),
                                                interval: Duration(milliseconds: 50),
                                                child: Container(color: Colors.grey),
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Queue",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).colorScheme.inversePrimary
                                      ),
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                        controller: controller,
                                        itemCount: 10,
                                        itemBuilder: (context,index){
                                          return ListTile(
                                            title: Text(widget.playing[(widget.current+index+1)%widget.playing.length].label),
                                            subtitle: Text(widget.playing[(widget.current+index+1)%widget.playing.length].artist),
                                            leading: SizedBox(
                                              height: 50,
                                              width: 50,
                                              child: Image.network(
                                                widget.playing[(widget.current+index+1)%widget.playing.length].imageUrl,
                                                fit: BoxFit.fill,
                                                loadingBuilder: (context, child, loadingProgress,) {
                                                  if (loadingProgress == null) {
                                                    return child;
                                                  } else {
                                                    return Shimmer(
                                                      duration: Duration(milliseconds: 100),
                                                      interval: Duration(milliseconds: 50),
                                                      child: Container(color: Colors.grey),
                                                    );
                                                  }
                                                },
                                              ),
                                            ),
                                            trailing: IconButton(
                                              onPressed: () {
                                                if (!favoriteBox.containsKey(widget.playing[(widget.current+index+1)%widget.playing.length].label)) {
                                                  favoriteBox.put(widget.playing[(widget.current+index+1)%widget.playing.length].label,widget.playing[(widget.current+index+1)%widget.playing.length]);
                                                  final snackBar = SnackBar(
                                                    elevation: 0,
                                                    behavior: SnackBarBehavior.floating,
                                                    backgroundColor: Colors.transparent,
                                                    content: AwesomeSnackbarContent(
                                                      title: 'Yohoooo!',
                                                      message:
                                                      'Added to favorite ${widget.playing[(widget.current+index+1)%widget.playing.length].label}',
                                                      contentType: ContentType.success,
                                                    ),
                                                  );
                                                  ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar);
                                                  setState(() {});
                                                } else {
                                                  final snackBar = SnackBar(
                                                    elevation: 0,
                                                    behavior: SnackBarBehavior.floating,
                                                    backgroundColor: Colors.transparent,
                                                    content: AwesomeSnackbarContent(
                                                      title: 'Opsss!',
                                                      message:
                                                      'Already added to favorite ${widget.playing[(widget.current+index+1)%widget.playing.length].label}',
                                                      contentType: ContentType.warning,
                                                    ),
                                                  );
                                                  ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar);
                                                }
                                                setState(() {});
                                              },
                                              icon: Icon(
                                                Icons.favorite,
                                                color:
                                                favoriteBox.containsKey(widget.playing[(widget.current+index+1)%widget.playing.length].label) ? Colors.red : Theme.of(context).colorScheme.inversePrimary,
                                              ),
                                            ),
                                          );
                                        }
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        }
                      );
                    },
                    icon: Icon(Icons.queue_music, size: 35),
                  ),
                  IconButton(
                    onPressed: () {
                      Provider.of<MiniPlayerProvider>(context,listen: false).rebuild(true,widget.playing[widget.current!=0?widget.current-1:widget.playing.length-1]);
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
                      Provider.of<MiniPlayerProvider>(context,listen: false).rebuild(true,widget.playing[(widget.current+1)%widget.playing.length]);
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return MusicPlayer(playing: widget.playing, current: (widget.current+1)%widget.playing.length);
                      }));
                    },
                    icon: Icon(Icons.skip_next, size: 40),
                  ),
                  IconButton(
                    onPressed: () {
                      if (!favoriteBox.containsKey(widget.playing[widget.current].label)) {
                        favoriteBox.put(widget.playing[widget.current].label, widget.playing[widget.current]);
                        final snackBar = SnackBar(
                          elevation: 0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.transparent,
                          content: AwesomeSnackbarContent(
                            title: 'Yohoooo!',
                            message:
                            'Added to favorite ${widget.playing[widget.current].label}',
                            contentType: ContentType.success,
                          ),
                        );
                        ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar);
                        setState(() {});
                      } else {
                        final snackBar = SnackBar(
                          elevation: 0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.transparent,
                          content: AwesomeSnackbarContent(
                            title: 'Oh snap!',
                            message:
                            'Already added to favorite ${widget.playing[widget.current].label}',
                            contentType: ContentType.warning,
                          ),
                        );
                        ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar);
                      }
                    },
                    icon: Icon(
                      Icons.favorite,
                      size: 35,
                      color:
                      favoriteBox.containsKey(widget.playing[widget.current].label) ? Colors.red : Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
              Container(
                height: 80,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 85,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                        child: Image.network(
                          widget.playing[(widget.current+1)%widget.playing.length].imageUrl,
                          fit: BoxFit.fill,
                          loadingBuilder: (context, child, loadingProgress,) {
                            if (loadingProgress == null) {
                              return child;
                            } else {
                              return Shimmer(
                                duration: Duration(milliseconds: 100),
                                interval: Duration(milliseconds: 50),
                                child: Container(color: Colors.grey),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.playing[(widget.current+1)%widget.playing.length].label,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            widget.playing[(widget.current+1)%widget.playing.length].artist,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.inversePrimary,
                                fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.arrow_forward,color:Theme.of(context).colorScheme.inversePrimary),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Visibility(
                visible: syncedLyrics.trim()!='',
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.tertiary,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: SingleChildScrollView(
                            child: LyricsReader(
                              model: lyricModel,
                              position: position.inMilliseconds,
                              lyricUi: UINetease(
                                defaultSize: 22,
                                defaultExtSize: 16,
                                otherMainSize: 16,
                                lineGap: 14,
                                lyricAlign: LyricAlign.LEFT,
                                bias: 0.2,
                                highlight: false,
                              ),
                              playing: player.playing,
                              size: Size(double.infinity, 300),
                            )
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Lyrics",style: TextStyle(fontSize: 12,color: Colors.white)),
                          Text("by LRCLIB",style: TextStyle(fontSize: 10,color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}