import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/widgets/buttons.dart';
import 'package:todo/view/widgets/text.dart';
import 'package:todo/view/widgets/textform.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String _password = '';
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/todo.png',
                width: 310,
                alignment: Alignment.center,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CustomHeadingText(text: "Login to continue!"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: CustomTextField(
                  hintText: "Enter your email",
                  icon: Icons.email,
                  onChange: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                  validator: '_email.isEmpty || !_email.contains(' ')',
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: CustomTextField(
                  hintText: "Enter your password",
                  icon: Icons.lock,
                  onChange: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                  validator: '_password.isEmpty',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 10),
                child: CustomButton(
                  text: "Login",
                  height: 60,
                  color: AppColor.blueColor,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, process the data
                      print('Name: $_password');
                      print('Email: $_email');

                      // For example, you can send the data to an API or perform some action
                    }
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomSmallText(text: "Don't have an account?"),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('signup');
                    },
                    child: const CustomBoldText(text: "Signup"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
