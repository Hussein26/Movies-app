import 'package:flutter/material.dart';
import 'package:projects/shared/constant.dart';

import '../data/data_list.dart';

import 'detail screen.dart';
class FavouriteMovies extends StatelessWidget {
  const FavouriteMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar1('My favourite Movies'),
      body: Container(
        height: 830,
        color: Colors.black,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: favouriteName.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailScreen(
                          '${favouriteMoviesImage[index]}',
                          '${favouriteName[index]}',
                          '${describeMovie[index]}')));
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
                                    "${favouriteMoviesImage[index]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                height: 30,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,

                                  decoration: BoxDecoration(
                                      color: Colors.black38
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 12),
                                    child: Text(
                                      '${favouriteName[index]}',
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
    );
  }
}
