import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/radio.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  final List=[
    "Vinu", "Ajith", "Akash"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Drop Down"),),),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70.0,bottom: 10.0),
              child: DropdownButtonFormField(decoration:
              InputDecoration(border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10))),
                hint: Text("Select Student"),
                  items: List.map((e) {return
                    DropdownMenuItem(
                    value: e,
                    child: Text(e));
              }).toList(), onChanged: (value){}),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Radio1(),));
            }, child: Text("Go"))
          ],
        ),
      ),
    );
  }
}
