import 'package:flutter/material.dart';
import 'package:my_project/pages/home.dart';
import 'package:my_project/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // queue of loading pages
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
    },
  ));
}

