import 'package:flutter/material.dart';
import 'package:login/SignIn.dart';
import 'package:login/SinginRoute.dart';

class SingupRoute extends StatefulWidget {
  const SingupRoute({Key? key}) : super(key: key);

  @override
  _SingupRouteState createState() => _SingupRouteState();
}

class _SingupRouteState extends State<SingupRoute> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Sign Up")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (isClick == false) {
                    isClick = true;
                  } else if (isClick == true) {
                    isClick = false;
                  }
                });
              },
              child: Center(
                child: Container(
                  height: 90,
                  width: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isClick ? Colors.amber : Colors.black),
                  child: Center(
                      child: Text(
                    "Hamza",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  focusColor: Colors.red,
                  fillColor: Colors.red,
                  labelText: 'Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 70,
              width: 250,
              child: FlatButton(
                onPressed: null,
                child: Text('Sign Up',
                    style: TextStyle(color: Colors.blue, fontSize: 20)),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blue, width: 1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SinginRoute()));
                },
                child: Text("Already Have An Account? Sign In")),
          ],
        ),
      ),
    );
  }
}
