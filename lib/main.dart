import 'package:demo_tabs/lista_uno.dart';
import 'package:flutter/material.dart';

import 'producat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Tab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PrimeraLista(),
    );
  }
}
