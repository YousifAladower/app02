import 'package:flutter/material.dart';
import 'screen2.dart';


class Screen1 extends StatelessWidget {

final String str1;
Screen1(this.str1);

void selectedScreen (BuildContext ctx)
{
  Navigator.of(ctx).pushReplacement(MaterialPageRoute(
    builder:(_){
      return Screen2("");

    } ) 
    );

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
      ),
      body: Center(
        child:  Column(
          children: [
            Text(str1),
            InkWell(
                  child: Text("Got to screen 2",style: TextStyle(fontSize: 30)),
                  onTap: ()=>selectedScreen(context),
                  ),
          ],
        ),
      ),
    );
  }
}