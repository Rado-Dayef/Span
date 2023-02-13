// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:span/colors.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                right: 0,
                bottom: 0,
                left: 20,
              ),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Notification",
                  style: TextStyle(
                    color: Color_2,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                right: 20,
                bottom: 0,
                left: 0,
              ),
              child: Container(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    // runApp(
                    //   const templates(),
                    // );
                  },
                  child: const Icon(
                    Icons.search,
                    color: Color_2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 90,
                right: 0,
                bottom: 0,
                left: 0,
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    right: 0,
                    bottom: 5,
                    left: 0,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, id) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 0,
                          right: 5,
                          bottom: 20,
                          left: 5,
                        ),
                        child: Container(
                          height: 75,
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
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: const CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Color_8,
                                    child: Icon(
                                      Icons.chat_outlined,
                                      color: Color_2,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                    right: 10,
                                    bottom: 0,
                                    left: 60,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Comment",
                                        style: TextStyle(
                                          color: Color_8,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        "Abdel Fattah el-Sisi commented on your post “We need an and.....”",
                                        style: TextStyle(
                                          color: Color_8,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
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
            ),
          ],
        ),
      ),
    );
  }
}
