import 'package:expensexpert/unImportantFiles/sign_up.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  String msg = '';
  bool isVisible = false;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Center(
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
                  const Text(
                    "Trouble Logging In?",
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
                                  const BorderSide(color: Colors.white54, width: 4.0),
                                  borderRadius: BorderRadius.circular(400)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.purple.shade800, width: 4.0),
                              ),
                              labelText: "Enter Email",
                              labelStyle: const TextStyle(color: Colors.white,fontSize: 16)
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                          width: 20,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.purple.shade800),
                                foregroundColor: MaterialStateProperty.all(Colors.white54),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                )),
                            onPressed: () {},
                            child: const Text("Send Confirmation Email")),
                        const SizedBox(
                          height: 30,
                          width: 30,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.purple.shade800),
                                foregroundColor: MaterialStateProperty.all(Colors.white54),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                )),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SignUpScreen()), // Navigate to SecondPage
                              );
                            },
                            child: const Text("Create new Account")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
