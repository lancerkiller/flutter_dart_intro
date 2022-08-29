import 'package:flutter/material.dart';
import 'package:introduction_dart_langauge/screens/ThridTabs.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Center(
                  child: Text("SECOND SCREEN HIIIIIIIIIIII"),
                ),Center(
                  child: Text("SECOND SCREEN HIIIIIIIIIIII"),
                ),Center(
                  child: Text("SECOND SCREEN HIIIIIIIIIIII"),
                )
              ],
            ),
          ),
          RaisedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TabsScreen()));
          }, child: Text('pokemon'))
        ],
      ),
    );
  }
}
