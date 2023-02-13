// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:span/colors.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  void open_chat() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(118),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color_2,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(18),
                  ),
                ),
                title: const Center(
                  child: Text("User Name"),
                ),
                actions: const [
                  Padding(
                      padding: EdgeInsets.only(
                        top: 0,
                        right: 15,
                        bottom: 0,
                        left: 0,
                      ),
                      child: Icon(null)),
                ],
              ),
              body: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: const [],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      right: 5,
                      bottom: 5,
                      left: 5,
                    ),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: 'Message',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

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
                    Icons.search_outlined,
                    color: Color_2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 150,
                right: 0,
                bottom: 5,
                left: 0,
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, id) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          open_chat();
                        },
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color_2,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    right: 5,
                                    bottom: 5,
                                    left: 10,
                                  ),
                                  child: Container(
                                    child: const CircleAvatar(
                                      backgroundColor: Color_8,
                                      radius: 40,
                                      child: Icon(Icons.person_outline),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0,
                                  right: 0,
                                  bottom: 0,
                                  left: 100,
                                ),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "User Name",
                                        style: TextStyle(
                                          color: Color_8,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
