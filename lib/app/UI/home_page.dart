import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_practices_testing/app/UI/widgets/custom_card.dart';
import 'package:good_practices_testing/app/models/cat.dart';

class HomePage extends StatelessWidget {
  final Cat cat;
  const HomePage({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Testing Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              child: const Text('Press me'),
              onPressed: () => _onButtonPressed(context),
            ),
            FloatingActionButton(
              onPressed: () {},
              child:  const Icon(
                CupertinoIcons.ant,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.animation,
                size: 24,
              ),
            ),
            const CustomCard(),
          ],
        ),
      ),
    );
  }

  void _onButtonPressed(BuildContext context) {
    if (cat.isAlive) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(title: Text('Meow')),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(title: Text('DEP')),
      );
    }
  }
}
