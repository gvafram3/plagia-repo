import 'package:flutter/material.dart';
import 'package:plag_app/widgets/build_light_theme_background.dart';

import 'package:plag_app/widgets/custom_textfield.dart';

import '../widgets/build_container.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return buildLightThemeBackground(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.dark_mode_outlined),
            ),
          ),
        ],
      ),
      mainWidget: Padding(
        padding: const EdgeInsets.fromLTRB(18.0, 0, 18.0, 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create an account',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.orange),
            ),
            const SizedBox(height: 8),
            const Text(
                'Welcome! Enter your details to create a free account today.'),
            const SizedBox(height: 12),
            const Text(
              'Full Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const CustomTextField(
              isPassword: false,
              prefixIcon: Icons.person_outline_outlined,
              hintText: 'Enter your email here',
            ),
            const Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const CustomTextField(
              isPassword: false,
              prefixIcon: Icons.mail,
              hintText: 'Enter your email here',
            ),

            const Text(
              'Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const CustomTextField(
              isPassword: true,
              prefixIcon: Icons.lock,
              hintText: 'Enter your password here',
            ),
            const Text(
              'Confirm Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const CustomTextField(
              isPassword: true,
              prefixIcon: Icons.lock,
              hintText: 'Confirm your password',
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot your password?',
                style: TextStyle(
                  color: Colors.orange,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const SignUpPage()),
                  // );
                },
                child: const Text(
                  'Signup',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Stack(alignment: Alignment.center, children: [
              const Divider(
                thickness: 3,
                color: Colors.black,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                width: 104,
                height: 24,
                child: const Text(
                  'or continue',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {},
              child: buildContainer(
                'Google',
                'assets/images/google_icon.png',
              ),
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {},
              child: buildContainer(
                'Apple',
                'assets/images/apple_icon.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
