// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:span/colors.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
                    Icons.search,
                    color: Color_2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 150,
                right: 5,
                bottom: 0,
                left: 5,
              ),
              child: Container(
                height: 150,
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, id) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 10,
                        bottom: 10,
                        left: 10,
                      ),
                      child: Container(
                        height: double.infinity,
                        width: 130,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          color: Color_2,
                          boxShadow: [
                            BoxShadow(
                              color: Color_2,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                right: 0,
                                bottom: 0,
                                left: 10,
                              ),
                              child: Container(
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.person_outline,
                                      color: Color_8,
                                      size: 24,
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(color: Color_2),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 40,
                                right: 0,
                                bottom: 0,
                                left: 10,
                              ),
                              child: Container(
                                child: const Text(
                                  "Group Name",
                                  style: TextStyle(
                                    color: Color_8,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 70,
                                right: 0,
                                bottom: 0,
                                left: 10,
                              ),
                              child: Container(
                                child: const Text(
                                  "Flutter",
                                  style: TextStyle(
                                    color: Color_8,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 310,
                right: 0,
                bottom: 5,
                left: 0,
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, id) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 0,
                        right: 10,
                        bottom: 10,
                        left: 10,
                      ),
                      child: Container(
                        height: 200,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          color: Color_2,
                          boxShadow: [
                            BoxShadow(
                              color: Color_2,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            right: 10,
                            bottom: 20,
                            left: 10,
                          ),
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: const CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Color_8,
                                  child: Icon(
                                    Icons.person_outline,
                                    color: Color_2,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0,
                                  right: 0,
                                  bottom: 0,
                                  left: 60,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "User Name",
                                      style: TextStyle(
                                        color: Color_8,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "1 hour ago",
                                      style: TextStyle(
                                        color: Color_8,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 60,
                                  right: 0,
                                  bottom: 40,
                                  left: 0,
                                ),
                                child: Center(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "We need an android developer as a new team member",
                                          style: TextStyle(
                                            color: Color_8,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 5,
                                  right: 0,
                                  bottom: 25,
                                  left: 0,
                                ),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  child: const Divider(
                                    color: Color_8,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0,
                                  right: 0,
                                  bottom: 0,
                                  left: 25,
                                ),
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.favorite_outline,
                                        color: Color_8,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "9",
                                        style: TextStyle(
                                          color: Color_8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0,
                                  right: 25,
                                  bottom: 0,
                                  left: 0,
                                ),
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  child: const Icon(
                                    Icons.chat_outlined,
                                    color: Color_8,
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
