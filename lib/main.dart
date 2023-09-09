import 'package:app02/drawer.dart';
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

class MyHomePage extends StatefulWidget{

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

final List<Map<String ,Object>> _pages=[  
  {
    'page':Scaffold(
            body: Center(
              child: Text("data1")
            ),
          ),
    'title':"titledata1"
  },
   {
    'page': Scaffold(
      body: Center(
              child: Text("data2")
            ),
          ),
    'title':"titledata2"
   },
            
];
int _currentIndex=0;
void _x1(int index)
{
  setState(() {
    print(index);
    _currentIndex=index;
  });
}



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text( _pages[_currentIndex]['title'].toString()),
         
        ), 
       body:_pages[_currentIndex]['page'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pinkAccent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          selectedFontSize: 15,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.shifting,
          onTap: _x1,
          items: [
         BottomNavigationBarItem(label:"data1", backgroundColor: Colors.pinkAccent, icon:Icon(Icons.category)),
         BottomNavigationBarItem(label:"data2", backgroundColor: Colors.pinkAccent, icon:Icon(Icons.star)),
          ],
        ),
        drawerScrimColor: Colors.pinkAccent.withOpacity(0.5),
        drawer:MyDrawer() ,
      ),
    );
  }
}