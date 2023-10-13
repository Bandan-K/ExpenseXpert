import 'package:flutter/material.dart';

import 'login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String msg = '';
  bool isVisible = false;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2.91,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Colors.purple.shade800,
                      ),
                      borderRadius: BorderRadius.circular(26.21),
                    )
                ),

                width: 400, // Set the width of the container
                height: 500, // Set the height of the container
                // color: Colors.deepPurple.shade200, // Set the background color of the container
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/login_logo-modified.png",
                        fit: BoxFit.fitHeight),
                    Text(
                      "Create Account",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            // controller: usernameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.white54, width: 4.0),
                                    borderRadius: BorderRadius.circular(400)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.purple.shade800, width: 4.0),
                                ),
                                labelText: "Username",
                                labelStyle: TextStyle(color: Colors.white,fontSize: 16)
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          TextField(
                            obscureText: !isVisible,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.white54, width: 4.0),
                                    borderRadius: BorderRadius.circular(400)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.purple.shade800, width: 4.0),
                                ),
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.white,fontSize: 16)
                            ),
                          ),
                          SizedBox(
                            height: 10,
                            width: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  // Navigate to the signup page when "Forgot Password" is tapped
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.purple.shade800),
                                  foregroundColor: MaterialStateProperty.all(Colors.white54),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                                  )),
                              onPressed: isSelected ? () {} : null,
                              child: Text("Create Account")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
