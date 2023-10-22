import 'package:expensexpert/UnImportantFiles/sign_up.dart';
import 'package:flutter/material.dart';
import '../BottomNavigationBar/bottom_nav_bar.dart';
import 'forgot_pass.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // TextEditingController usernameController = TextEditingController();
//To get the text data//from the textfield
//   TextEditingController passwordController = TextEditingController();
//To get the text data// from the textfield
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
            child: SingleChildScrollView(
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
                      "Log In",
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
                                    const BorderSide(color: Colors.white54, width: 2.5),
                                    borderRadius: BorderRadius.circular(400)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.purple.shade800, width: 2.5),
                                ),
                                labelText: "Username",
                                labelStyle: const TextStyle(color: Colors.white,fontSize: 16)
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          TextField(
                            obscureText: !isVisible,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(color: Colors.white54, width: 2.5),
                                  borderRadius: BorderRadius.circular(400)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.purple.shade800, width: 2.5),
                              ),
                              labelText: "Password",
                                labelStyle: TextStyle(color: Colors.white,fontSize: 16)
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                            width: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  // Navigate to the signup page when "Forgot Password" is tapped
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const ForgotPass(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Forgot password?',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // Navigate to the signup page when "Forgot Password" is tapped
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const SignUpScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                            ],
                          ),
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
                              onPressed:() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BottomNavBar()), // Navigate to SecondPage
                                );
                              },
                              child: Text("Login")),
                          const Text("OR",style: TextStyle(color: Colors.white),),

                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  foregroundColor: MaterialStateProperty.all(Colors.black54),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                  )),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Continue with  "),
                                  Image.asset("assets/images/icons8-google-48.png",height: 30,)
                                ],
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
