import 'package:flutter/material.dart';

import '../data/data_list.dart';

class DetailScreen extends StatelessWidget {
  String imageUrl;
  String title;
  String description;

  DetailScreen(this.imageUrl, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen',style: TextStyle(color: Colors.white,fontSize: 21),),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network('${imageUrl}',fit: BoxFit.fill,),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Name: ',style: TextStyle(color: Colors.white,fontSize: 25),),
                Text('${title}',style: TextStyle(color: Colors.white,fontSize: 25),)
              ],
            ),
            SizedBox(height: 30,),
            Text('Summary',style: TextStyle(color: Colors.white,fontSize: 20),),
            SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('${description}',style: TextStyle(color: Colors.white,fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }


}
