import 'package:flutter/material.dart';
import 'package:second_hw_login/const/colors.dart';
import 'package:second_hw_login/const/strings.dart';
import 'package:second_hw_login/validations/validators.dart';
import 'package:second_hw_login/widgets/MohButton.dart';
import 'package:second_hw_login/widgets/MohTextBox.dart';

import 'home.dart';

class MohLogin extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  MohLogin({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.loginGradient,
        ),
        child: Center(
          child: Form(key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Hero(
                  tag: 'logo',
                  child: Icon(Icons.local_florist,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30,),
                MohTextBox(
                  controller: _emailController,
                  hintText: AppText.emailHint,
                  validator: (value) =>
                    Validators.validateEmail(value!),
                ),
                const SizedBox(height: 30,),
                MohTextBox(
                  controller: _passwordController,
                  hintText: AppText.passwordHint,
                  obscureText: true,
                  validator: (value) =>
                      Validators.validatePassword(value!),
                ),
                const SizedBox(height: 30,),
                MohTextBox(
                  controller: _phoneController,
                  hintText: AppText.phoneHint,
                  validator: (value) =>
                      Validators.validatePhone(value!),
                ),
                const SizedBox(height: 20,),
                MohButton(
                  text: AppText.loginButton,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation,
                              secondaryAnimation) =>
                              MohHome(
                                email: _emailController.text,
                                phone: _phoneController.text,
                                password: _passwordController.text,
                                name: null,
                              ),
                          transitionsBuilder: (context, animation,
                              secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end).chain(
                                CurveTween(curve: curve));
                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    }
                  }
                ),
                const SizedBox(height: 20,),
                TextButton(onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                    child: const Text('Sign Up',
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
