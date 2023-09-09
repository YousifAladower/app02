import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';

void main ()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home:MyHomePage(),
      initialRoute: '/',
      routes: {
        '/':(context)=>MyHomePage(),
       Screen1.RoutName:(context)=>Screen1(),
       '/x2':(context)=>Screen2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget{

void selectedScreen (BuildContext ctx,int n) 
{
  Navigator.of(ctx).pushNamed(
   n==1?Screen1.RoutName:'/x2',

   arguments: {
    'id':n==1?10:60,
    'name':n==1?"youisf":"aladower",
    'job':"programers"
   }
  );

}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main Screen"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.category),text: ("data1"),),
              Tab(icon: Icon(Icons.star),text: ("data2"),),

            ]
          ),
        ), 
        body:TabBarView(children: [
          Scaffold(
            body: Center(
              child: Text("data1")
            ),
          ),
          Scaffold(
            body: Center(
              child: Text("data2")
            ),
          )
        ]),
        drawerScrimColor: Colors.pinkAccent.withOpacity(0.5),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("Got to screen 1",style: TextStyle(fontSize: 30)),
                onTap: ()=>selectedScreen(context,1),
                trailing: Icon(Icons.arrow_forward_ios),
                ),
              ListTile( 
                title: Text("Got to screen 2",style: TextStyle(fontSize: 30)),
                onTap: ()=>selectedScreen(context,2),
                trailing: Icon(Icons.arrow_forward_ios),
                ),
            ],
          ),
        ),
      ),
    );
  }

}