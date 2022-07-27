import 'package:flutter/material.dart';
import 'package:music_player/screens/song.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/song',
      routes: {
        '/song': (context) => const SongPage(),
      },
    );
  }
}
