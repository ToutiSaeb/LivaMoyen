import 'package:flutter/material.dart';
import 'package:livamoyen/first_page.dart';
import 'package:livamoyen/homepage.dart';

void main() {
  runApp(const livamoyen());
}

class livamoyen extends StatefulWidget {
  const livamoyen({super.key});

  @override
  State<livamoyen> createState() => _livamoyenState();
}

class _livamoyenState extends State<livamoyen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstpage(),
     
    );
  }
}