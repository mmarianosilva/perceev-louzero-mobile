import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: DashBoard(),
      ),
    );
  }
}

class DashBoard extends StatelessWidget {
  const DashBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.purple.shade900,
            Colors.pink.shade900,
          ],
        )),
        child: Center(
          child: Text(
            'LouZERO',
            style: TextStyle(
                shadows: const <Shadow>[
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 55.0,
                    color: Color.fromARGB(80, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(0, 3),
                    blurRadius: 5.0,
                    color: Colors.black,
                  ),
                ],
                fontFamily: 'Noto',
                fontSize: 100,
                fontWeight: FontWeight.normal,
                color: Colors.teal.shade50),
          ),
        ),
      ),
    );
  }
}
