import 'package:flutter/material.dart';
import 'package:app02/screen1.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String str = "";

  void selectedScreen(BuildContext ctx, int n) {
    if (n == 1) {
      Navigator.of(ctx).pushNamed(
        Screen1.RoutName,
        arguments: {
          'id': n == 1 ? 10 : 60,
          'name': n == 1 ? "youisf" : "aladower",
          'job': "programmers"
        },
      ).then((value) {
        setState(() {
          str = value.toString();
        });
        _showSnackBar(ctx, str); // Show the snackbar when str is updated
      });
    } else {
      Navigator.of(ctx).pushReplacementNamed(
        (n == 2) ? '/x2' : '/',
        arguments: {
          'id': n == 1 ? 10 : 60,
          'name': n == 1 ? "youisf" : "aladower",
          'job': "programmers"
        },
      );
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3), // Adjust the duration as needed
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Go to Main 1", style: TextStyle(fontSize: 25)),
            onTap: () => selectedScreen(context, 0),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 25)),
            onTap: () => selectedScreen(context, 1),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text("Go to screen 2", style: TextStyle(fontSize: 25)),
            onTap: () => selectedScreen(context, 2),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
