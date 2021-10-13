import 'package:flutter/material.dart';
import 'package:login/SignUp.dart';
import 'package:login/main.dart';

class LoginRoute extends StatefulWidget {
  const LoginRoute({Key? key}) : super(key: key);

  @override
  _LoginRouteState createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Sign In")),
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
            Text(
              "Wellcome",
              style: TextStyle(fontSize: 30, color: Colors.blue, height: 2),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  focusColor: Colors.amber,
                  fillColor: Colors.amber,
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
            SizedBox(
              height: 40,
            ),
            Container(
              height: 70,
              width: 250,
              child: FlatButton(
                onPressed: null,
                child: Text('Sign In',
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
                      MaterialPageRoute(builder: (context) => SingupRoute()));
                },
                child: Text("Don't Have Any Account? Sign Up")),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.lightGreen, width: 3.0),
                    ),
                  ),
                ),
                Text("Or"),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.lightGreen, width: 3.0),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 70,
              width: 250,
              child: FlatButton(
                onPressed: null,
                child: Text("Sign In With Google",
                    style: TextStyle(color: Colors.blue, fontSize: 20)),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.blue, width: 1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Text("Home"),
      ),
    );
  }
}
