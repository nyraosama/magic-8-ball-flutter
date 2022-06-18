import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
      MaterialApp(
          home: BallPage()
      ),
    );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
     child:FlatButton(
       onPressed:(){
         setState(() {
           ballnumber=Random().nextInt(5)+1;
         });
         print(ballnumber);
       },
         child: Image.asset('images/ball$ballnumber.png')
     ),
    );
  }
}


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }

}
