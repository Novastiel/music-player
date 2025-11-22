# Basic Project - Music Player
A Basic UI made for a music player

## Key Features
- Toggle switch for Dark mode
- Song List
- Album art, Song name, Artist name
- Timestamp for song
- Pause/play, skip forward/backward
- Shuffle, repeat

## Widgets Used
**lib/pages/home_page.dart (15 Widgets)** 
- HomePage, 
- StatefulWidget, 
- State, 
- Scaffold, 
- AppBar, 
- Text, 
- Center, 
- MyDrawer, 
- Consumer, 
- ListView.builder, 
- ListTile, 
- Image.asset, 
- Navigator, 
- MaterialPageRoute, 
- BuildContext

**lib/pages/song_page.dart (23 Widgets)** 
- SongPage, 
- StatelessWidget, 
- Consumer, 
- Scaffold, 
- SafeArea, 
- Padding, 
- Column, 
- MainAxisAlignment, 
- Row, 
- IconButton, 
- Icon, 
- Text, 
- SizedBox, 
- NeuBox, 
- ClipRRect, 
- Image.asset, 
- TextStyle, 
- SliderTheme, 
- Slider, 
- Expanded, 
- GestureDetector, 
- BuildContext, 
- Navigator.

**lib/drawer/drawer.dart (10 Widgets)**
- MyDrawer, 
- StatelessWidget, 
- Drawer, 
- Column, 
- Padding, 
- ListTile, 
- Text, 
- Icon, 
- CupertinoSwitch, 
- Provider.of.

**lib/main.dart (4 Widgets)**
- runApp, 
- MultiProvider, 
- ChangeNotifierProvider, 
- MainApp, 
- StatelessWidget, 
- MaterialApp, 
- HomePage.

**lib/ui/neubox.dart (5 Widgets)**
- NeuBox, 
- StatelessWidget, 
- Container, 
- BoxDecoration, 
- Provider.of, 
- BuildContext.

**lib/themes/dark.dart (1 Widget)**
- ThemeData.

**lib/themes/light.dart (1 Widget)**
- ThemeData.

## Steps to run
- Step 1: open the project through VSC
- Step 2: launch your prefered emulator
- Step 3: Run and Debug main.dart
- Step 4(in case of any problems): Save each file in the /lib folder

## Reflection
- So far as my very first flutter/dart project it was very daunting and an incomprehesive language. It tool alot of effot learning the lanugage and learning how each widgets is handled. I had a lot of issues witht he providers itself and decided to used *flutter pub add provider* to add the multi provider package to aek things easier for myself.

