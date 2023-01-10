import 'package:flutter/material.dart';
import 'package:good_practices_testing/app/UI/home_page.dart';
import 'package:good_practices_testing/app/UI/tamagotchi_page.dart';
import 'package:good_practices_testing/app/models/cat.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(cat: Cat()),
      //home: const TamagotchiPage(),
    );
  }
}
