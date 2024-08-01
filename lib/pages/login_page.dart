import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yailaahi/components/my_button.dart';
import 'package:yailaahi/components/my_textfield.dart';
import 'package:yailaahi/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  void login() async {
    // get instance of auth service
    final authService = AuthService();

    // try sign in
    try {
      await authService.signInWithEmailPassword(
        emailController.text,
        passwordController.text,
      );
    }

    // display any errors
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  // forget password
  void forgotPw() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("User tapped forgot password."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                'lib/images/merbz_logo/delight.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          const Spacer(flex: 1),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: CircleAvatar(
                              radius: 88,
                              backgroundColor: Colors.redAccent,
                              child: CircleAvatar(
                                radius: 86,
                                backgroundColor: Theme.of(context).colorScheme.background,
                                child: const CircleAvatar(
                                  radius: 80,
                                  backgroundImage: AssetImage('lib/images/merbz_logo/merbz.jpeg'),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          const Text(
                            "Food Delivery App",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 25),
                          MyTextField(
                            controller: emailController,
                            hintText: "Email",
                            obsecureText: false,
                          ),
                          const SizedBox(height: 10),
                          MyTextField(
                            controller: passwordController,
                            hintText: "Password",
                            obsecureText: true,
                          ),
                          const SizedBox(height: 10),
                          MyButton(
                            text: "Login",
                            onTap: login,
                          ),
                          const SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Not a member?",
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.inversePrimary,
                                  )),
                              const SizedBox(width: 4),
                              GestureDetector(
                                onTap: widget.onTap,
                                child: Text(
                                  "Register now",
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.inversePrimary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(flex: 2),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
