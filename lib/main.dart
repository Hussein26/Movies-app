import 'package:flutter/material.dart';
import 'package:projects/screens/favourite_movies.dart';


import 'bottom/bottom_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:
      {
        '/fav' : (context) => FavouriteMovies()
      },
      home: BottomNavBarWidget(),
    );
  }
}

