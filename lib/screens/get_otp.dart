import 'package:flutter/material.dart';
import 'package:onboarding_ui/widgets/my_button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class GetOTP extends StatelessWidget {
  GetOTP({super.key});
  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 30.0,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Verify',
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
                    image: AssetImage('asset/images/otp.png'),
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  'Enter OTP',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'An 4 digit OTP has been sent to',
                  style: TextStyle(
                    color: Color.fromRGBO(104, 104, 104, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8.0),
                const Text(
                  '458-465-6466',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30.0),
                OTPTextField(
                  length: 4,
                  fieldWidth: 80,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceBetween,
                  fieldStyle: FieldStyle.box,
                  style: const TextStyle(fontSize: 20),
                  onChanged: (value) {
                    print(value);
                  },
                ),
                const SizedBox(height: 15.0),
                MyButton(label: 'Verify', onPressed: () {}),
                const SizedBox(height: 18.0),
                const Text(
                  'Resend OTP',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color.fromRGBO(104, 104, 104, 1),
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
