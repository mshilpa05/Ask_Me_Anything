import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('I have got Answer For You',style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blue,
    ),
    body: AskMe(),
  ),
),);

class AskMe extends StatefulWidget {
  @override
  _AskMeState createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  @override
  int imagenumber=1;
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            imagenumber=Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$imagenumber.png'),
      ),
    );
  }
}
