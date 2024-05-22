import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plag_app/screens/login_page.dart';
// import 'theme_notifier.dart';
// import 'package:plag_app/screens/home.dart';
// import 'package:plag_app/screens/sign_in_page.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final ThemeNotifier = ref.watch(themeNotifierProvider);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeNotifier.currentTheme,
      home: LoginPage(),
    );
  }
}
