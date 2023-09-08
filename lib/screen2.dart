import 'package:flutter/material.dart';
import 'screen1.dart';

class Screen2 extends StatelessWidget {
  
final String str1;
Screen2(this.str1);

  void selectedScreen (BuildContext ctx)
{
  Navigator.of(ctx).pushReplacement(MaterialPageRoute(
    builder:(_){
      return Screen1("");

    } ) 
    );

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2"),
      ),
      body:  Center(
        child:  Column(
          children: [
            Text(str1),
            InkWell(
                  child: Text("Got to screen 1",style: TextStyle(fontSize: 30)),
                  onTap: ()=>selectedScreen(context),
                  ),
          ],
        ),
      ),
    );
  }
}