import 'package:flutter/material.dart';
import 'package:login/SinginRoute.dart';

class Circle extends StatelessWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Circle")),
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [const Color(0xFF915FB5), const Color(0xFFCA436B)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginRoute()));
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Text(
              "Hamza",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
          ),
        )),
      ),
    );
  }
}
