import 'package:flutter/material.dart';
import '../../shared/components/phone_input_field.dart';
import '../../shared/components/primary_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32),
              Text(
                'Phone',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Enter your phone number',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              SizedBox(height: 32),
              PhoneInputField(),
              SizedBox(height: 32),
              PrimaryButton(text: 'Next', onPressed: () {}),
              Spacer(),
              Center(
                child: Text(
                  'Already have an account? Sign In',
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
} 