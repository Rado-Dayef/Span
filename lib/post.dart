// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:span/colors.dart';

class post extends StatefulWidget {
  const post({super.key});

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                right: 0,
                bottom: 0,
                left: 10,
              ),
              child: Container(
                alignment: Alignment.topLeft,
                child: const CircleAvatar(
                  backgroundColor: Color_2,
                  radius: 40,
                  child: Icon(
                    Icons.person_outline,
                    color: Color_8,
                    size: 50,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 85,
                right: 0,
                bottom: 0,
                left: 100,
              ),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "User Name",
                  style: TextStyle(
                    color: Color_2,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 85,
                right: 25,
                bottom: 0,
                left: 0,
              ),
              child: Container(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.file_upload_outlined,
                    color: Color_2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 125,
                right: 5,
                bottom: 0,
                left: 5,
              ),
              child: Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 10,
                    bottom: 10,
                    left: 10,
                  ),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: "What's on your mind?",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
