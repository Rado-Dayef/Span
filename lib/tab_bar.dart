// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:span/chat.dart';
import 'package:span/colors.dart';
import 'package:span/home.dart';
import 'package:span/login.dart';
import 'package:span/notification.dart';
import 'package:span/post.dart';
import 'package:span/profile.dart';

class tab_bar extends StatefulWidget {
  const tab_bar({super.key});

  @override
  State<tab_bar> createState() => _tab_barState();
}

class _tab_barState extends State<tab_bar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Color__2,
        scaffoldBackgroundColor: Color_8,
      ),
      home: Stack(
        children: [
          DefaultTabController(
            length: 5,
            initialIndex: 2,
            child: Scaffold(
              bottomNavigationBar: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color_2,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                  border: Border.all(
                    color: Color_2,
                    width: 2.5,
                  ),
                ),
                child: const TabBar(
                  indicatorColor: Color.fromARGB(0, 0, 0, 0),
                  labelColor: Color_2,
                  unselectedLabelColor: Color_8,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(9),
                      topRight: Radius.circular(9),
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                    ),
                    color: Color_8,
                  ),
                  tabs: [
                    Tab(
                      child: Icon(Icons.chat_outlined),
                    ),
                    Tab(
                      child: Icon(
                        Icons.add_circle_outline,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.home_outlined,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.account_circle_outlined,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.notifications_outlined,
                      ),
                    ),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  chat(),
                  post(),
                  home(),
                  profile(),
                  notification(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
