// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:yailaahi/components/my_button.dart';
import 'package:yailaahi/components/my_textfield.dart';
import 'package:yailaahi/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // register method
  void register() async {
    // get auth service
    final _authService = AuthService();

    // check if passwords match -> create user
    if (passwordController.text == confirmPasswordController.text) {
      // try creating user
      try {
        await _authService.signUpWithEmailPassword(
            emailController.text, passwordController.text);
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

    // if passwords don't match -> show error
    else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Passwords don't match!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
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
                          Text(
                            "Let's create an account for you",
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).colorScheme.inversePrimary,
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
                          MyTextField(
                            controller: confirmPasswordController,
                            hintText: "Confirm password",
                            obsecureText: true,
                          ),
                          const SizedBox(height: 10),
                          MyButton(
                            text: "Sign Up",
                            onTap: () {
                              register();
                            },
                          ),
                          const SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("already have an account?",
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.inversePrimary,
                                  )),
                              const SizedBox(width: 4),
                              GestureDetector(
                                onTap: widget.onTap,
                                child: Text(
                                  "Login now",
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
