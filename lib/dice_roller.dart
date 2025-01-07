import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
    DiceRoller({super.key});
    @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}


class _DiceRollerState extends State<DiceRoller>{
  
  //var activeDiceImage = 'assets/images/dice-1.png';
  var currentDiceRoll = 2;


  void rolldice(){
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1; // Value >=0 and <6
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
              const SizedBox(height: 25),
              TextButton(
                onPressed: rolldice,
                style: TextButton.styleFrom(
                  //padding: const EdgeInsets.only(top: 25),
                  foregroundColor:Colors.white,
                  textStyle: const TextStyle(fontSize: 28,) ),
                child: const Text('Roll Dice'))
            ],);
  }
}