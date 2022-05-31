import 'package:flutter/material.dart';
import 'package:masterclass/classe_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masterclass app clone',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ClasseScreen())),
            child: const Text(
              'Next screen',
              style: TextStyle(
                fontSize: 18
              ),
            ),
          ),
        ),
      )
    );
  }
}


