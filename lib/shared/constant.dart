import 'package:flutter/material.dart';

import '../data/data_list.dart';
import '../screens/detail screen.dart';
Container1(){
  return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: titleMovie.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailScreen(
                      '${imageMovie[index]}',
                      '${titleMovie[index]}',
                      '${descriptionMovie[index]}'),
                ));
              },

              child: Card(
                color: Colors.black,

                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),

                ),
                child: Stack(

                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(9),
                        child: Image.network(
                          "${imageMovie[index]}",
                          fit: BoxFit.fill,
                        )),
                    Positioned(
                      child: Text(
                        '${titleMovie[index]}',
                        style: TextStyle(
                            color: Colors.white, fontSize: 20),
                      ),
                      bottom: 1,
                    ),
                  ],
                ),
              ),
            );
          }));
}
Container2(){
  var image = List.from(imageMovie.reversed);
  var title = List.from(titleMovie.reversed);
  return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: titleMovie.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailScreen(
                      '${imageMovie[index]}',
                      '${titleMovie[index]}',
                      '${descriptionMovie[index]}'),
                ));
              },

              child: Card(
                color: Colors.black,

                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),

                ),
                child: Stack(

                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(9),
                        child: Image.network(
                          "${image[index]}",
                          fit: BoxFit.fill,
                        )),
                    Positioned(
                      child: Text(
                        '${title[index]}',
                        style: TextStyle(
                            color: Colors.white, fontSize: 20),
                      ),
                      bottom: 1,
                    ),
                  ],
                ),
              ),
            );
          }));
}
ListTile1(Icon x , String y, VoidCallback z){
  return ListTile(
    leading: IconButton(
      onPressed: () => z(),
      icon: x,
      color: Colors.white,
    ),
    title: Text(
      y,
      style: TextStyle(color: Colors.white,fontSize: 25),
    ),
  );
}