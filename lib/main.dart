import 'package:flutter/material.dart';
import 'package:running/screens/homeScreens.dart';
import 'package:running/screens/loginScreen.dart';
import 'package:running/screens/registerScreen.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  //sqfliteFfiInit();
  //databaseFactory = DatabaseFactoryFfi;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => TreinoSemanalScreen(),
        '/register': (context) => const RegisterScreen(),
      },
    );
  }
}
