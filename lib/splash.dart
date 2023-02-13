// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:span/colors.dart';
import 'package:span/login.dart';
import 'dart:async';

import 'package:span/tab_bar.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: myspalash(),
      ),
    );
  }
}

class myspalash extends StatefulWidget {
  const myspalash({super.key});

  @override
  _myspalashState createState() => _myspalashState();
}

class _myspalashState extends State<myspalash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const login(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color_2,
            Color_8,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              color: Color_8,
            ),
            child: const Center(
              child: Text(
                "App Logo",
                style: TextStyle(
                  color: Color_2,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Span",
            style: TextStyle(
              color: Color_2,
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }
}
