import 'package:app02/screen1.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget
{
  void selectedScreen (BuildContext ctx,int n) 
{
  Navigator.of(ctx).pushNamed(
   n==1?Screen1.RoutName:(n==2)?'/x2':'/',

   arguments: {
    'id':n==1?10:60,
    'name':n==1?"youisf":"aladower",
    'job':"programers"
   }
  );

}
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("Got to Main 1",style: TextStyle(fontSize: 25)),
                onTap: ()=>selectedScreen(context,0),
                trailing: Icon(Icons.arrow_forward_ios),
                ),
              ListTile(
                title: Text("Got to screen 1",style: TextStyle(fontSize: 25)),
                onTap: ()=>selectedScreen(context,1),
                trailing: Icon(Icons.arrow_forward_ios),
                ),
              ListTile( 
                title: Text("Got to screen 2",style: TextStyle(fontSize: 25)),
                onTap: ()=>selectedScreen(context,2),
                trailing: Icon(Icons.arrow_forward_ios),
                ),
            ],
          ),
        );
  }

}