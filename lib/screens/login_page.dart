import 'package:flutter/material.dart';
import 'package:plag_app/widgets/build_light_theme_background.dart';

import 'package:plag_app/widgets/custom_textfield.dart';
import 'package:plag_app/screens/sign_up_page.dart';

import '../widgets/build_container.dart';
import 'welcome_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(height: 12),
            const Text(
              'Log in to your account',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.orange),
            ),
            const SizedBox(height: 8),
            const Text(
                'Welcome back! Enter your details to login to your account.'),
            const SizedBox(height: 12),
            const Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            // SizedBox(height: 12),
            const CustomTextField(
              isPassword: false,
              prefixIcon: Icons.mail,
              hintText: 'Enter your email here',
            ),
            const SizedBox(height: 12),
            const Text(
              'Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            // SizedBox(height: 12),
            const CustomTextField(
              isPassword: true,
              prefixIcon: Icons.lock,
              hintText: 'Enter your password here',
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeScreen()),
                  );
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Stack(alignment: Alignment.center, children: [
              const Divider(
                thickness: 3,
                color: Colors.black,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
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
            const SizedBox(height: 36),
            GestureDetector(
              onTap: () {},
              child: buildContainer(
                'Google',
                'assets/images/google_icon.png',
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {},
              child: buildContainer(
                'Apple',
                'assets/images/apple_icon.png',
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const SignUpPage()),
                      ),
                    );
                  },
                  child: const Text(
                    'SignUp',
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
