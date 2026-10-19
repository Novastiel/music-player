import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 100, ),
            child: ListTile(
              title: Text("Dark Mode"),
              leading: const Icon(Icons.settings),
              trailing: CupertinoSwitch(
                value: 
                  Provider.of<ThemeProvider>(context, listen: false).isDarkMode, 
                onChanged: (value) =>
                  Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme(),
          ),
              
              
            ),
          ),
        ],
      ),
    );
  }
}