import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

Widget Fconatainer(String title,Color color)
{
  return  Container(
            padding: EdgeInsets.all(15),
            child: Text(title,style: TextStyle(fontSize: 30),),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[
                color.withOpacity(0.7),
                color
              ],
              begin: AlignmentDirectional.topStart ,
              end:AlignmentDirectional.bottomEnd ),
            )
            
           );

}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Flutter App"),
      ),
      body:Container(
        padding: EdgeInsets.only(top: 15),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200 ,
                      childAspectRatio: 3/2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
          ),
          children: [
         Fconatainer("YOusif1",Colors.red),
         Fconatainer("YOusif2",Colors.green),
         Fconatainer("YOusif3",Colors.black),
         Fconatainer("YOusif3",Colors.amber),

           Fconatainer("YOusif1",Colors.red),
         Fconatainer("YOusif2",Colors.green),
         Fconatainer("YOusif3",Colors.black),
         Fconatainer("YOusif3",Colors.amber),

           Fconatainer("YOusif1",Colors.red),
         Fconatainer("YOusif2",Colors.green),
         Fconatainer("YOusif3",Colors.black),
         Fconatainer("YOusif3",Colors.amber),
          ],
      )
    ) 
    );
  }
}
