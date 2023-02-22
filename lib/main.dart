import 'package:ff_day2/first_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First(),
    );
  }
}
