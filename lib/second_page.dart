import 'dart:math';

import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  Second({required this.name,Key? key}) : super(key: key);
  String name;

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  int leftImage = 1;
  int rightImage = 2;
  String userName = "Savan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${widget.name}",
                style: TextStyle(
                  fontSize: 50
                )
            ),
            Row(
              children: [
                Expanded(
                    child: Image.asset("images/${leftImage}.png"),
                ),
                Expanded(
                    child: Image.asset("images/${rightImage}.png")
                ),
              ],
            ),
            MaterialButton(
                onPressed: (){
                  setState(() {
                    leftImage = Random().nextInt(6) + 1;
                    rightImage = Random().nextInt(6) + 1;
                  });
                },
              color: Colors.blue,
              child: Text("Click here"),
            )
          ],
        ),
      )
    );
  }
}
