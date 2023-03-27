import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/drop%20down.dart';
import 'package:untitled3/login.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Sign Up")),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70.0,right: 70.0,bottom: 10.0,top: 10 ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "Name", hintText: "Enter Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0,right: 70.0,bottom: 10.0, ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "Email", hintText: "Enter Email",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0,right: 70.0,bottom: 10.0, ),
              child: TextField(keyboardType: TextInputType.number,
                decoration: InputDecoration(

                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "Phone Number", hintText: "Enter Phone Number",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0,right: 70.0,bottom: 10.0, ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "Address", hintText: "Enter Address",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0,right: 70.0,bottom: 10.0, ),
              child: TextField(obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "Password", hintText: "Enter Password",
                ),
              ),
            ),
            ElevatedButton(onPressed: ()
            {Navigator.push(context, MaterialPageRoute(builder: (context) => Dropdown(),));},
              child: Text("Sign Up"),),
          ],
        ),
      ),
    );
  }
}
