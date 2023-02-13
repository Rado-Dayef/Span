// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:span/colors.dart';
import 'package:span/edit_profile.dart';
import 'package:span/tab_bar.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color_3,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
            ),
            Container(
              height: 300,
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(
                    radius: 60,
                    child: Icon(
                      Icons.person_outline,
                      color: Color_8,
                      size: 50,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      right: 0,
                      bottom: 0,
                      left: 0,
                    ),
                    child: Text(
                      "User Name",
                      style: TextStyle(
                        color: Color_2,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 375,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      right: 20,
                      bottom: 0,
                      left: 0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const edit_profile(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color_2,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 0,
                                right: 10,
                                bottom: 0,
                                left: 0,
                              ),
                              child: Icon(
                                Icons.edit_outlined,
                                color: Color_8,
                              ),
                            ),
                            Text(
                              "Edit Profile",
                              style: TextStyle(
                                color: Color_8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0,
                      right: 0,
                      bottom: 0,
                      left: 20,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const tab_bar(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color_2,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 0,
                                right: 10,
                                bottom: 0,
                                left: 0,
                              ),
                              child: Icon(
                                Icons.add_circle_outline,
                                color: Color_8,
                              ),
                            ),
                            Text(
                              "Add Post",
                              style: TextStyle(
                                color: Color_8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 400,
                right: 0,
                bottom: 5,
                left: 0,
              ),
              child: ListView(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Divider(
                        color: Color_2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          right: 0,
                          bottom: 0,
                          left: 10,
                        ),
                        child: Container(
                          alignment: AlignmentDirectional.topStart,
                          child: const Text(
                            'Personal Information',
                            style: TextStyle(
                              color: Color_2,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          right: 0,
                          bottom: 0,
                          left: 15,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.work_outline,
                                color: Color_2,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Software ENG',
                                style: TextStyle(
                                  color: Color_2,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          right: 0,
                          bottom: 0,
                          left: 15,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.school_outlined,
                                color: Color_2,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'IT',
                                style: TextStyle(
                                  color: Color_2,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          right: 0,
                          bottom: 0,
                          left: 15,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.email_outlined,
                                color: Color_2,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'test@gmail.com',
                                style: TextStyle(
                                  color: Color_2,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          right: 0,
                          bottom: 0,
                          left: 15,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.call_outlined,
                                color: Color_2,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '+20 102 107 3262',
                                style: TextStyle(
                                  color: Color_2,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        color: Color_2,
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
