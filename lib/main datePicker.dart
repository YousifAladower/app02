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

DateTime _selectedDate = DateTime.now();

void _dataPicker()
{
  showDatePicker(
    context: context,
     initialDate: DateTime.now(), 
     firstDate:DateTime(2020),
      lastDate: DateTime.now()
      ).then((value) {
        if(value==null){return;}
        setState(()=>_selectedDate = value);
      });

}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Flutter App"),
      ),
      body:Center(
        child: ElevatedButton(
          onPressed:_dataPicker,
           child:Text('${DateFormat.yMMMd().format(_selectedDate)}'),
      ) ,
    )
    );
  }
}
