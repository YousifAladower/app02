import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';

void main ()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget{

void selectedScreen (BuildContext ctx,int n)
{
  Navigator.of(ctx).push(MaterialPageRoute(
    builder:(_){
      if(n==1)
      return Screen1("information1");
      else
      return Screen2("information2 fd");

    } ) 
    );

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            InkWell(
              child: Text("Got to screen 1",style: TextStyle(fontSize: 30)),
              onTap: ()=>selectedScreen(context,1),
              ),
            InkWell( 
              child: Text("Got to screen 2",style: TextStyle(fontSize: 30)),
              onTap: ()=>selectedScreen(context,2),
              ),
          ],
        ),
      ),
    );
  }

}