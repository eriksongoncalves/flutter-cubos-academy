import 'package:cubos_academy/screens/initial_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Trivia(),
  );
}

class Trivia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: InitialScreen());
  }
}
