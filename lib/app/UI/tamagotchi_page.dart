import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class TamagotchiPage extends StatelessWidget {
  const TamagotchiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.asset(
          // LOTUS LINK
          // https://rive.app/community/3233-6817-night-blooming-lotus/
          // https://dribbble.com/shots/14249147-Gamified-Workout-App-Concept
          // https://dribbble.com/shots/1773949-iWatch-Mascot-app-concept
          'assets/animations/rive_lotus.riv',
          animations: ['Dying'],
        ),
      ),
    );
  }
}
