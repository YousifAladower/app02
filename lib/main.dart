import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Color w= Colors.white;
Color b= Colors.black;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
   
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Flutter App"),
      ),
      body:Container(
        height: double.infinity,
        color: b,
        child: Column(
          children: [
            Image.network("https://love-words.net/wp-content/uploads/2019/07/8418-3.jpg"
            ,fit: BoxFit.cover,),
            Image.asset("assets/images/x.jpg"),
          ],
        ),
      ) ,
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
