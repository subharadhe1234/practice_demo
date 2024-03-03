import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo/main.dart';

class Activity extends StatelessWidget{
  // @override
  @override
  var vv;
  Activity(this.vv);

  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(

     // appBar: AppBar(
     //   title: Text("Next Activity"),
     //   backgroundColor: Colors.blueAccent,
     // ),
body: Center(
  child:   Container(

    width: double.infinity,

    height: double.infinity,

    color: Colors.yellow,

    child: Center(child: Text("$vv",style: TextStyle(fontSize: 50),)),

  ),
),
   );
  }
}