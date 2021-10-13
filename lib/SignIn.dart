import 'package:flutter/material.dart';

class SinginRoute extends StatefulWidget {
  const SinginRoute({Key? key}) : super(key: key);

  @override
  _SignInRouteState createState() => _SignInRouteState();
}

class _SignInRouteState extends State<SinginRoute> {
  get child => null;

  get usernameController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [const Color(0xFF915FB5), const Color(0xFFCA436B)],
              begin: FractionalOffset.bottomLeft,
              end: FractionalOffset.topRight,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: (SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 10),
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                child: TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(
                      color: Colors.white,
                      decorationColor: Colors.white,
                      fontSize: 18),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    filled: false,
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Email Address",
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    focusColor: Colors.pink,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                child: TextField(
                  controller: usernameController,
                  cursorColor: Colors.white,
                  style: TextStyle(
                      color: Colors.white,
                      decorationColor: Colors.white,
                      fontSize: 18),
                  obscureText: true,
                  decoration: new InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    filled: false,
                    hintStyle: new TextStyle(color: Colors.white),
                    hintText: "Password",
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    focusColor: Colors.pink,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 4,
                height: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[900],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Don't Have An Account?  Register",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
