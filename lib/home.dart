import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/radio.dart';
import 'package:untitled3/radioL.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [

            Container(margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (context) => RadioL(),));}, child: Text("Radio button List")),
            ),
            Container(margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: (){
                Navigator.push
                (context,MaterialPageRoute
                  (builder: (context) => Radio1(),));}, child: Text("Radio button")),
            ),
          ],
        ),
      ),
    );
  }
}
