import 'package:flutter/material.dart';
import 'package:onboarding_ui/widgets/my_button.dart';
import 'package:onboarding_ui/widgets/my_icon_button.dart';
import 'package:onboarding_ui/widgets/my_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController phoneNumberController;

  late TextEditingController passwordController;
  late TextEditingController emailController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
    confirmPasswordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    passwordController.dispose();
    emailController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'Register',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 10.0),
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
                  'Enter your email',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8.0),
                MyTextField(
                  controller: emailController,
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
                const SizedBox(height: 15.0),
                const Text(
                  'Re-enter your password',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8.0),
                MyTextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                ),
                const SizedBox(height: 15.0),
                MyButton(
                  label: 'Sign Up',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(color: Color.fromRGBO(104, 104, 104, 1)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
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
                const SizedBox(height: 10.0),
                const MyIconButton(
                  icon: "asset/images/Apple.png",
                  label: "Continue with Apple",
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
