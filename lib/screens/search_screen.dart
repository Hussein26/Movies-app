import 'package:flutter/material.dart';
import 'package:projects/data/data_list.dart';
import 'package:projects/screens/detail%20screen.dart';

import '../shared/constant.dart';

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
                        icon: Icon(Icons.clear_rounded,color: Colors.black,),
                      ),

                    ),
                  )),
              Container3(),
            ],
          ),
        ),
      )
    );
  }
}
