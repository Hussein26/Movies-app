import 'package:flutter/material.dart';
import 'package:projects/data/data_list.dart';
import 'package:projects/screens/detail%20screen.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);
var _controller = TextEditingController();
cleanText(){
  _controller.clear();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    color:  Colors.grey,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      prefixIcon: IconTheme(
                        data: IconThemeData(color: Colors.black38),
                        child: Icon(Icons.search),
                      ),
                    hintText: 'Search...',
                      hintStyle: TextStyle(fontSize: 20),
                      suffixIcon: IconButton(
                        onPressed: (){
                          cleanText();
                        },
                        icon: Icon(Icons.clear_rounded),
                      ),

                    ),
                  )),
              Container2(),
            ],
          ),
        ),
      )
    );
  }
}
Container2(){
  return Container(
    height: 560,
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
                  height: 200,
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
                              width: 400,
                              height: 30,
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