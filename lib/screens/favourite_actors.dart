import 'package:flutter/material.dart';

import '../data/data_list.dart';
import '../shared/constant.dart';
import 'detail screen.dart';
class FavouriteActors extends StatelessWidget {
  const FavouriteActors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar1('My favourite Actors'),
      body: Container(
        color: Colors.black,
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: actorsName.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailScreen(
                            '${actorsImage[index]}',
                            '${actorsName[index]}',
                            '${actorsWiki[index]}')));
                  },

                  child: Column(
                    children: [
                      SizedBox(height: 18,),
                      Container(
                        height: MediaQuery.of(context).size.height*.33,
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
                                      "${actorsImage[index]}",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  height: 30,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.black38
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.only(left: 12),
                                      child: Text(
                                        '${actorsName[index]}',
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
        ),
      ),
    );
  }
}
