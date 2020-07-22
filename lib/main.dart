import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Unit test',
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller;
  String _reverse;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter String to reverse'),
            ),
            SizedBox(
              height: 20,
            ),
            if (_reverse != null) ...[
              SizedBox(
                height: 10,
              ),
              Text(
                _reverse,
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
            FlatButton(
              color: Colors.blueAccent,
              onPressed: () {
                print("Pressed");
                if (_controller.text.isEmpty) return;
                setState(() {
                  _reverse = reverseString(_controller.text);
                });
              },
              child: Text("Pressed"),
            ),
          ],
        ),
      ),
    );
  }
}

String reverseString(String initial) {
  return initial.split('').reversed.join('');
}
