import 'package:flutter/material.dart';
import 'package:span/colors.dart';
import 'package:span/home.dart';
import 'package:span/login.dart';
import 'package:span/tab_bar.dart';

class sign_up extends StatefulWidget {
  const sign_up({super.key});

  @override
  State<sign_up> createState() => _sign_upState();
}

TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController confirm_password = TextEditingController();
var visible = true;

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Color__2,
        scaffoldBackgroundColor: Color_8,
      ),
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 25,
                    bottom: 20,
                    left: 25,
                  ),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Create an account",
                      style: TextStyle(
                        color: Color_2,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    right: 25,
                    bottom: 0,
                    left: 25,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Color_2,
                    radius: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 25,
                    bottom: 0,
                    left: 25,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      controller: name,
                      style: const TextStyle(
                        color: Color_2,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.person_outline,
                        ),
                        labelText: 'User Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 25,
                    bottom: 0,
                    left: 25,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: email,
                      style: const TextStyle(
                        color: Color_2,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                        ),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 25,
                    bottom: 0,
                    left: 25,
                  ),
                  child: TextField(
                    obscureText: visible,
                    keyboardType: TextInputType.visiblePassword,
                    controller: password,
                    style: const TextStyle(
                      color: Color_2,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {
                          setState(
                                () {
                              visible = !visible;
                            },
                          );
                        },
                        icon: visible
                            ? const Icon(Icons.lock_open_outlined)
                            : const Icon(Icons.lock_outline),
                      ),
                      labelText: 'Password',
                      contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 25,
                    bottom: 0,
                    left: 25,
                  ),
                  child: TextField(
                    obscureText: visible,
                    keyboardType: TextInputType.visiblePassword,
                    controller: confirm_password,
                    style: const TextStyle(
                      color: Color_2,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        onPressed: () {
                          setState(
                                () {
                              visible = !visible;
                            },
                          );
                        },
                        icon: visible
                            ? const Icon(Icons.lock_open_outlined)
                            : const Icon(Icons.lock_outline),
                      ),
                      labelText: 'Confirm Password',
                      contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 25,
                    bottom: 0,
                    left: 25,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const tab_bar(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 250,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color_2,
                      ),
                      child: const Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color_8,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 25,
                    bottom: 0,
                    left: 25,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const login(),
                        ),
                      );
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Already have an account? ",
                            style: TextStyle(
                              color: Color_2
                            ),
                          ),
                          Text(
                            "Login",
                            style: TextStyle(
                                color: Color_2,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
