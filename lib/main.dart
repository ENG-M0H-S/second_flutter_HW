import 'package:flutter/material.dart';
import 'package:second_hw_login/screens/home.dart';
import 'package:second_hw_login/screens/login.dart';
import 'package:second_hw_login/screens/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => MohLogin(),
        '/signup': (context) => MohSignUp(),
        '/home': (context) => const MohHome(
          email: '',phone: '', password: '', name: '',
        ),
      },
    );
  }
}
