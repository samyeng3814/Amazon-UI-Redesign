import 'package:amazon_uiclone_app/constants/global_variables.dart';
import 'package:amazon_uiclone_app/layout/screen_layout.dart';
import 'package:amazon_uiclone_app/widgets/custom_main_button.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_textField.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: greyBackgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/images/amazon_in.png',
                width: 110,
                height: 50,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: _auth == Auth.signup
                            ? backgroundColor
                            : greyBackgroundColor,
                        border: const Border(
                          top: BorderSide(
                            width: 2,
                            color: greyBackgroundColor,
                            style: BorderStyle.solid,
                          ),
                          left: BorderSide(
                            width: 2,
                            color: greyBackgroundColor,
                            style: BorderStyle.solid,
                          ), //Borderside
                          right: BorderSide(
                            width: 2,
                            color: greyBackgroundColor,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: secondaryColor,
                            value: Auth.signup,
                            groupValue: _auth,
                            onChanged: (Auth? val) {
                              setState(() {
                                _auth = val!;
                              });
                            },
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: const [
                              Text(
                                'Create Account.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                ' New to Amazon?',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (_auth == Auth.signup)
                      Container(
                        decoration: BoxDecoration(
                          color: _auth == Auth.signup
                              ? backgroundColor
                              : greyBackgroundColor,
                          border: const Border(
                            left: BorderSide(
                              width: 2,
                              color: greyBackgroundColor,
                              style: BorderStyle.solid,
                            ), //Borderside
                            right: BorderSide(
                              width: 2,
                              color: greyBackgroundColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Form(
                          key: _signUpFormKey,
                          child: Column(
                            children: [
                              CustomTextField(
                                obscureText: false,
                                controller: _nameController,
                                hintText: 'First and last name',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomTextField(
                                obscureText: false,
                                controller: _emailController,
                                hintText: 'Email',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomTextField(
                                obscureText: true,
                                controller: _passwordController,
                                hintText: 'Password',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomMainButton(
                                child: const Text(
                                  'Sign Up',
                                ),
                                color: Colors.orange,
                                isLoading: isLoading,
                                onPressed: () {
                                  setState(() {
                                    _auth = Auth.signin;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    Container(
                      decoration: BoxDecoration(
                        color: _auth == Auth.signin
                            ? backgroundColor
                            : greyBackgroundColor,
                        border: const Border(
                          top: BorderSide(
                            width: 2,
                            color: greyBackgroundColor,
                            style: BorderStyle.solid,
                          ),
                          left: BorderSide(
                            width: 2,
                            color: greyBackgroundColor,
                            style: BorderStyle.solid,
                          ), //Borderside
                          right: BorderSide(
                            width: 2,
                            color: greyBackgroundColor,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: secondaryColor,
                            value: Auth.signin,
                            groupValue: _auth,
                            onChanged: (Auth? val) {
                              setState(() {
                                _auth = val!;
                              });
                            },
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: const [
                              Text(
                                'Sign In.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                ' Already a customer?',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (_auth == Auth.signin)
                      Container(
                        decoration: BoxDecoration(
                          color: _auth == Auth.signin
                              ? backgroundColor
                              : greyBackgroundColor,
                          border: const Border(
                            bottom: BorderSide(
                              width: 2,
                              color: greyBackgroundColor,
                              style: BorderStyle.solid,
                            ),
                            left: BorderSide(
                              width: 2,
                              color: greyBackgroundColor,
                              style: BorderStyle.solid,
                            ), //Borderside
                            right: BorderSide(
                              width: 2,
                              color: greyBackgroundColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Form(
                          key: _signInFormKey,
                          child: Column(
                            children: [
                              CustomTextField(
                                obscureText: false,
                                controller: _emailController,
                                hintText: 'Email',
                              ),
                              const SizedBox(height: 10),
                              CustomTextField(
                                obscureText: true,
                                controller: _passwordController,
                                hintText: 'Password',
                              ),
                              const SizedBox(height: 10),
                              CustomMainButton(
                                child: const Text(
                                  'Sign In',
                                ),
                                color: Colors.orange,
                                isLoading: isLoading,
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const ScreenLayout();
                                      },
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
