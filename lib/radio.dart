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
    appBar: AppBar(title: Center(child: Text("Gender"))),
      body: Column(
        children: [

          ListTile(
            title: Text("Male"),
            leading: Radio(value: "male", groupValue: gen, onChanged: (click){setState(() {
              gen=click;
            });}),
          ),
          ListTile(
            title: Text("Female"),
            leading: Radio(value: "female", groupValue: gen, onChanged: (click){setState(() {
              gen=click;
            });}),
          ),

        ],
      ),
    );
  }
}
