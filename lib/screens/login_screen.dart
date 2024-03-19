import 'package:flutter/material.dart';
import 'package:onboarding_ui/config/router/route.dart';
import 'package:onboarding_ui/widgets/my_button.dart';
import 'package:onboarding_ui/widgets/my_icon_button.dart';
import 'package:onboarding_ui/widgets/my_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 50.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Enter your mobile number',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8.0),
                MyTextField(
                  controller: phoneNumberController,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                const Text(
                  'Enter your password',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8.0),
                MyTextField(
                  controller: passwordController,
                  obscureText: true,
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.forgotPassword);
                      },
                      child: const Text('forgot password'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                MyButton(
                  label: 'Login',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: TextStyle(color: Color.fromRGBO(104, 104, 104, 1)),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Center(child: Text('or')),
                const SizedBox(height: 10.0),
                const MyIconButton(
                  icon: "asset/images/Google.png",
                  label: "Continue with Google",
                ),
                const SizedBox(height: 8.0),
                const MyIconButton(
                  icon: "asset/images/Apple.png",
                  label: "Continue with Apple",
                ),
                const SizedBox(height: 10.0),
                const Center(child: Text('or')),
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    'Continue as Guest',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromRGBO(104, 104, 104, 1),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
