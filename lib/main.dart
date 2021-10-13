import 'package:flutter/material.dart';
import 'package:login/Calender.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Telanted App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ash's 1st Project",
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.orange[200],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CalenderRoute()));
        },
        child: Text("C"),
      ),
    );
  }
}
