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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Details Screen',style: TextStyle(color: Colors.white,fontSize: 21),),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.4,
                child: Image.network('${imageUrl}',fit: BoxFit.fill,
                ),
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
      ),
    );
  }


}
