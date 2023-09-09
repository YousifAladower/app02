import 'package:flutter/material.dart';
import 'drawer.dart';
import 'screen2.dart';


class Screen1 extends StatelessWidget {

// final String str1;
// Screen1(this.str1);

static const RoutName="/screen1";



  @override
  Widget build(BuildContext context) {
  final routage= ModalRoute.of(context)?.settings.arguments as Map<String, Object>;


    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
      ),
      body:null,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pop(RoutName);
        },
        child: Icon(Icons.delete),
        
        ),
    //  drawer: MyDrawer() ,
    );
  }
}