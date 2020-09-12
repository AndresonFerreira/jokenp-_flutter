import 'package:flutter/material.dart';
import 'package:jokenpo_flutter/telas/jogo.dart';

void main() {
  runApp(MaterialApp(
    home: Jogo(),

    theme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    accentColor: Colors.cyan[600],
    )
    
  ));
}