import 'package:flutter/material.dart';
import 'HomeScreen.dart';
void main(){
  runApp(Dicee());
}
class Dicee extends StatelessWidget {
  const Dicee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
