import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/regstr.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Center(child: Text("Log In")),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70.0,top: 10.0,right: 70.0,bottom: 10.0,),
              child: TextField(keyboardType: TextInputType.name,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "User Name",hintText: "Enter User Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0,right: 70.0,bottom: 10.0,),
              child: TextField(obscureText: true,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: "Password",hintText: "Enter Password",
                ),
              ),
            ),
            ElevatedButton(style:ElevatedButton.styleFrom(
                padding: EdgeInsets.all(27.0),shape: CircleBorder()),onPressed: (){
            },
                child: Text("Log In")),
            Row(mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                Text("Don't have account?"),
                TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Reg(),));
                }, child: Text("Sign Up"))
              ],),
          ],
        ),
      ),
    );
  }
}
