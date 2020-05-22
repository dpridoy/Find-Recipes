import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xff213A50),
                  const Color(0xff071930)
                ]
              )
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: Platform.isIOS? 60: 40,horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: kIsWeb?MainAxisAlignment.start:MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Find",style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                    ),),
                    Text("Recipes",style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),)
                  ],
                ),
                SizedBox(height: 30,),
                Text("Want to have a recipe?",style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),),
                SizedBox(height: 8,),
                Text("Just Enter the Ingredients you have and we will show you the best recipe for you.",style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Ingredients",
                            hintStyle: TextStyle(
                              fontSize: 18
                            )
                          ),
                          style: TextStyle(
                            fontSize: 18
                          ),
                        ),
                      ),
                      SizedBox(width: 16,),
                      Container(
                        child: Icon(Icons.search,color: Colors.white,),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
