import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  bool playing = false;
  bool fav = false;
  IconData playBtn = Icons.play_arrow;
  IconData favBtn = Icons.favorite;

  AudioPlayer _player;
  AudioCache cache;

  Duration position = new Duration();
  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 300,
      child: Slider.adaptive(
        activeColor: Colors.indigo,
        inactiveColor: Colors.indigoAccent,
        value: position.inSeconds.toDouble(),
        max: musicLength.inSeconds.toDouble(),
        onChanged: (value) {
          seekToVal(value.toInt());
        },
      ),
    );
  }

  void seekToVal(int sec) {
    Duration newPosition = Duration(seconds: sec);
    _player.seek(newPosition);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);

    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };

    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.indigo, Colors.indigoAccent]),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Musically",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/cutegif.gif'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Fade - Alan Walker",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment : MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 500,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                  style: TextStyle(fontSize: 18),
                                ),
                                slider(),
                                Text(
                                  "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                iconSize: 45,
                                color: Colors.indigoAccent,
                                onPressed: () {},
                                icon: Icon(Icons.skip_previous),
                              ),
                              IconButton(
                                iconSize: 55,
                                color: Colors.indigo,
                                onPressed: () {
                                  if (!playing){
                                    cache.play('Fade.mp3');
                                    setState(() {
                                      playBtn = Icons.pause;
                                      playing = true;
                                    });
                                  }
                                  else{
                                    _player.pause();
                                    setState(() {
                                      playBtn = Icons.play_arrow;
                                      playing = false;
                                    });
                                  }
                                },
                                icon: Icon(playBtn),
                              ),
                              IconButton(
                                iconSize: 45,
                                color: Colors.indigoAccent,
                                onPressed: () {},
                                icon: Icon(Icons.skip_next),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                iconSize: 45,
                                color: (fav) ? Colors.pinkAccent : Colors.grey ,
                                icon: Icon(favBtn),
                                onPressed: (){
                                  if (!fav){
                                    setState(() {
                                      fav = true;
                                    });
                                  }
                                  else{
                                    setState(() {
                                      fav = false;
                                    });
                                  }

                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
