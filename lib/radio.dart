import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Radio1 extends StatefulWidget {
  const Radio1({Key? key}) : super(key: key);

  @override
  State<Radio1> createState() => _Radio1State();
}

class _Radio1State extends State<Radio1> {
  String? gen;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
      body: Column(
        children: [

          ListTile(
            title: Text("male"),
            leading: Radio(value: "male", groupValue: gen, onChanged: (click){setState(() {
              gen=click;
            });}),
          ),
          ListTile(
            title: Text("female"),
            leading: Radio(value: "female", groupValue: gen, onChanged: (click){setState(() {
              gen=click;
            });}),
          ),

        ],
      ),
    );
  }
}
