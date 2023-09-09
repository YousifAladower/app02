import 'package:flutter/material.dart';
import 'screen2.dart';


class Screen1 extends StatelessWidget {

// final String str1;
// Screen1(this.str1);

static const RoutName="/screen1";

void selectedScreen (BuildContext ctx)
{
  Navigator.of(ctx).pushReplacementNamed(
  '/x2',
  );;

}

  @override
  Widget build(BuildContext context) {
  final routage= ModalRoute.of(context)?.settings.arguments as Map<String, Object>;


    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
      ),
      body: Center(
        child:  Column(
          children: [
            Text(""),
            InkWell(
                  child: Column(
                    children: [
                      Text("${routage['id']}",style: TextStyle(fontSize: 30)),
                       Text("${routage['name']}",style: TextStyle(fontSize: 30)),
                       Text("${routage['job']}",style: TextStyle(fontSize: 30)),
                    ],
                  ),
                  onTap: ()=>selectedScreen(context),
                  ),
          ],
        ),
      ),
    );
  }
}