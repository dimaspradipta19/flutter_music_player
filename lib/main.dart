import 'package:flutter/material.dart';
import 'package:flutter_itunes/ui/home_screen.dart';
import 'package:provider/provider.dart';

import 'data/provider/detail_artist_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DetailArtistProvider(),
        )
      ],
      child: const MaterialApp(
        home: Homepage(),
      ),
    );
  }
}
