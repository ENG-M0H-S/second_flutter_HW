import 'package:flutter/material.dart';

class MohHome extends StatelessWidget {
  final String email;
  final String phone;
  final String password;
  final String? name;

  const MohHome(
      {super.key, required this.email, required this.phone, required this.password, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (name != null)
              Text('Name: $name', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Email: $email', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Text('Password: $password', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Text('Phone: $phone', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}