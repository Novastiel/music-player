import 'package:flutter/material.dart';
import 'package:music_player/drawer/drawer.dart';
import 'package:music_player/playlist/playlist_provider.dart';
import 'package:provider/provider.dart';
import 'package:music_player/playlist/song.dart';
import 'package:music_player/pages/song_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // get playlist provider
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();

    //get
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  // go to song
  void goToSong(int songIndex) {
    
  //update
  playlistProvider.currentSongIndex = songIndex;

  //go to song page
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SongPage(),),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text("S O N G S"), centerTitle: true),
      drawer: MyDrawer(),
      body: Consumer<PlaylistProvider>(
        builder: (context, value, child) {

         //get songs
         final List<Song> playlist = value.playlist;
         
         //return listview
         return ListView.builder(
          itemCount: playlist.length,
            itemBuilder: (context, index) {
              //get individul song
              final Song song = playlist[index];

              //return listtile
              return ListTile(
                title: Text(song.songName),
                subtitle: Text(song.artistName),
                leading: Image.asset(song.albumArt),
                onTap: () => goToSong(index),
              );
            },
         );
        },
      ),
    );
  }
}
