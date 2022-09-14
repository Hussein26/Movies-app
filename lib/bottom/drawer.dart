
import 'package:flutter/material.dart';
import 'package:projects/screens/favourite_movies.dart';

import '../shared/constant.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        width: 320,
        backgroundColor: Colors.black38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'My Addition list',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile1(Icon(Icons.favorite), 'hello', () {
              Navigator.of(context).pushNamed('/fav'); 
            })
          ],
        ),
      ),
    );
  }
}

