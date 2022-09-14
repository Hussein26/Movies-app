
import 'package:flutter/material.dart';


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
              height: 51,
            ),
            Text(
              'My Addition list',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile1(Icon(Icons.favorite), 'My favourite Movies', () {
              Navigator.of(context).pushNamed('/favm');
              }),
            Divider(
              height: 15,
              color: Colors.white,
            ),
            ListTile1(Icon(Icons.star), 'My favourite Actors', (){
              Navigator.of(context).pushNamed('/fava');
            }),
            Divider(
              height: 15,
              color: Colors.white,
            ),
            ListTile1(Icon(Icons.remove_red_eye_rounded), 'Wached movies in 2022', (){
              Navigator.of(context).pushNamed('/moft');
            })
          ],
        ),
      ),
    );
  }
}

