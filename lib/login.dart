import 'package:flutter/material.dart';
import 'package:span/colors.dart';
import 'package:span/edit_profile.dart';
import 'package:span/sign_up.dart';
import 'package:span/tab_bar.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
var visible = true;

class _loginState extends State<login> {
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
                      "Hi, Welcome Back!",
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const sign_up(),
                            //   ),
                            // );
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
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
                      runApp(
                        const tab_bar(),
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
                        "Login",
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
                          builder: (context) => const sign_up(),
                        ),
                      );
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              color: Color_2,
                            ),
                          ),
                          Text(
                            "Sign Up",
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
