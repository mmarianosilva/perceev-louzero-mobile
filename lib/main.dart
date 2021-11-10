import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBro',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: LogIn(title: 'Form Start'),
    );
  }
}

class LogIn extends StatefulWidget {
  LogIn({Key? key, this.title = 'title'}) : super(key: key);
  final String title;

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final formKey = GlobalKey<FormState>();
  String? _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Card(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email:'),
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                    onSaved: (String? value) {
                      _email = value;
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class DashBoard extends StatelessWidget {
  const DashBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: splashPage(),
    );
  }

  Widget splashPage() {
    return Container(
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
    );
  }
}
