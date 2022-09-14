import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/search_screen.dart';
import 'drawer.dart';
class BottomNavBarWidget extends StatefulWidget {
  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}
class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int value = 0;
  List screens =[
    HomeScreen(),
    SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Netflix',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ) ,
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),
              label: 'Search'),
        ],
        currentIndex: value,
        onTap: (index){
          setState(() {
            value = index;
          });
        },
      ),
      body: screens[value],
    );
  }
}
