import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioL extends StatefulWidget {
  const RadioL({Key? key}) : super(key: key);

  @override
  State<RadioL> createState() => _RadioLState();
}

class _RadioLState extends State<RadioL> {
  String? gen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [

          RadioListTile(
            title: Text("male"),
            value: "male", groupValue: gen, onChanged: (click){setState(() {
              gen=click;
            });}),
          RadioListTile(
              title: Text("female"),
              value: "female", groupValue: gen, onChanged: (click){setState(() {
            gen=click;
          });}),

        ],
      ),
    );
  }
}
