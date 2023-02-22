import 'package:ff_day2/second_page.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  String? username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
          child: TextField(
            onChanged: (value){
              setState(() {
                username = value;
              });
            },
              decoration: InputDecoration(
                label: Text("User name"),
                hintText: "Enter user name",
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Second(name: "${username}")));
            },
            color: Colors.blue,
            child: Text("Second Page"),
          ),
        ],
      ),
    );
  }
}
