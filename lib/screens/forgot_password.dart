import 'package:flutter/material.dart';
import 'package:onboarding_ui/screens/login_screen.dart';
import 'package:onboarding_ui/widgets/my_text_field.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 30.0,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Forgot',
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50.0),
                const Center(
                  child: Image(
                    image: AssetImage('asset/images/forgot_password.png'),
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  'Forgot password?',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Don’t worry! it happens. Please enter phone number associated with your account',
                  style: TextStyle(
                    color: Color.fromRGBO(104, 104, 104, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30.0),
                const Row(
                  children: [
                    Text(
                      'Enter your mobile number',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                MyTextField(
                  controller: phoneNumberController,
                  obscureText: false,
                ),
                const SizedBox(height: 15.0),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Get OTP',
                    style: TextStyle(fontSize: 18),
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
