import 'package:flutter/material.dart';
import 'package:second_hw_login/const/colors.dart';
import 'package:second_hw_login/const/strings.dart';
import 'package:second_hw_login/widgets/MohButton.dart';
import 'package:second_hw_login/widgets/MohTextBox.dart';

import '../validations/validators.dart';
import 'home.dart';

class MohSignUp extends StatelessWidget {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  MohSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.signupGradient,
        ),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Hero(
                  tag: 'logo',
                  child: Icon(
                    Icons.local_florist,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                MohTextBox(
                  controller: _nameController,
                  validator: (value) =>
                      Validators.validateName(value!),
                  hintText: AppText.nameHint,
                ),
                const SizedBox(height: 20),
                MohTextBox(
                  controller: _emailController,
                  validator: (value) =>
                      Validators.validateEmail(value!),
                  hintText: AppText.emailHint,
                ),
                const SizedBox(height: 20),
                MohTextBox(
                  controller: _passwordController,
                  obscureText: true,
                  validator: (value) => Validators.validatePassword(value!),
                  hintText: AppText.passwordHint,
                ),
                const SizedBox(height: 20),
                MohTextBox(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                  hintText: 'Confirm Password'
                ),
                const SizedBox(height: 20),
                MohButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MohHome(
                            email: _emailController.text,
                            phone: _phoneController.text,
                            password: _passwordController.text,
                            name: _nameController.text,
                          ),
                        ),
                      );
                    }
                  },
                  text: AppText.signupButton,
                ),
                const SizedBox(height: 20,),
                TextButton(onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                  child: const Text('Login',
                    style: TextStyle(color: AppColors.secondary),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
