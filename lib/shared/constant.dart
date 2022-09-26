


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/data_list.dart';
import '../screens/detail screen.dart';
Container1(){
  return Container(
    height: 300,
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
  var describ = List.from(descriptionMovie.reversed);
  return Container(
      width: double.infinity,
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: titleMovie.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailScreen(
                      '${image[index]}',
                      '${title[index]}',
                      '${describ[index]}'),
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
Container3(){
  return Container(
    height:720,
    color: Colors.black,
    child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: titleMovie.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailScreen(
                      '${imageMovie[index]}',
                      '${titleMovie[index]}',
                      '${descriptionMovie[index]}')));
            },

            child: Column(
              children: [
                SizedBox(height: 18,),
                Container(
                  height: MediaQuery.of(context).size.height*.25,
                  width: double.infinity,

                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: SizedBox(
                              width: double.infinity,
                              child: Image.network(
                                "${imageMovie[index]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            height: 30,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.black38
                              ),
                              child: Padding(
                                padding:  EdgeInsets.only(left: 12),
                                child: Text(
                                  '${titleMovie[index]}',
                                  style: TextStyle(color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                            bottom: 1,
                          )
                        ]),

                  ),

                ),
                SizedBox(height: 5,),
              ],

            ),
          );
        }),
  );
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
      style: TextStyle(color: Colors.white,fontSize: 20),
    ),
  );
}
appBar1(String x){
  return AppBar(
    title: Text(x,style: TextStyle(fontSize: 20,color: Colors.white),),
    centerTitle: true,
    backgroundColor: Colors.black,
  );
}