import 'package:app02/drawer.dart';
import 'package:flutter/material.dart';
import 'screen1.dart';

class Screen2 extends StatelessWidget {
  
// final String str1;
// Screen2(this.str1);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2"),
      ),
      body: null,
      drawer: MyDrawer(),
    );
  }
}