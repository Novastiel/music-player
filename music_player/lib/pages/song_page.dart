import 'package:flutter/material.dart';
import 'package:music_player/ui/neubox.dart';
import 'package:music_player/playlist/playlist_provider.dart';
import 'package:provider/provider.dart';



class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, value, child) {
        //get playlist
        final playlist = value.playlist;

        //get current
        final currentSong = playlist[value.currentSongIndex ?? 0];



        // return ui
          return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //app bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //back button
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back),
                      ),
              
                      //title
                      Text("S O N G S"), 
                      
                      //menu button
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  //art
                  NeuBox(
                    child: Column(
                      children: [
                        //img
                        ClipRRect(borderRadius: BorderRadius.circular(8),
                        child: Image.asset(currentSong.albumArt),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currentSong.songName,
                                    style:  TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                    ),
                                  Text(currentSong.artistName),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  
                  const SizedBox(height: 25),
                  
                  //time stamp
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //start
                            Text("0:00"),
                        
                            // Shuffle
                            Icon(Icons.shuffle),
                        
                            //Repeat
                            Icon(Icons.repeat),
                        
                            // End
                            Text("0:00")
                          ],
                        ),
                      ),

                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
                        ),
                        child: Slider(
                          min: 0,
                          max: 100,
                          value: 50, 
                          activeColor: Colors.blue,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                
                const SizedBox(height: 25),

                  //controls
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //skip back
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: NeuBox(
                            child: Icon(Icons.skip_previous)
                            ),
                        ),
                      ),

                      const SizedBox(width: 25),

                      // play/pause
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {},
                            child: NeuBox(
                              child: Icon(Icons.play_arrow)
                              ),
                          ),
                        ),

                        const SizedBox(width: 25),
                        
                      //skip forward
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: NeuBox(
                              child: Icon(Icons.skip_next)
                              ),
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
    );
  }
}