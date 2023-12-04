import 'package:flutter/material.dart';
import 'package:untitled/custom_page.dart';
import 'package:untitled/page_3.dart';
import 'package:untitled/search_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PageTheree(),
    );
  }
}
