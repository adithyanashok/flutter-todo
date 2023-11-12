import 'package:flutter/material.dart';
import 'package:todo/controller/signup/signup.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/widgets/buttons.dart';
import 'package:todo/view/widgets/text.dart';
import 'package:todo/view/widgets/textform.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';
  bool validator = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                    child: CustomHeadingText(text: "Create account!"),
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
                    validator:
                        validator && (_email.isEmpty || !_email.contains('@'))
                            ? 'Enter a valid email'
                            : null,
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
                    validator: validator && _password.isEmpty
                        ? 'Enter a password'
                        : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 10),
                  child: CustomButton(
                    text: "Signup",
                    height: 60,
                    color: AppColor.blueColor,
                    onTap: () {
                      setState(() {
                        validator = true;
                      });

                      if (_email.isNotEmpty && _password.isNotEmpty) {
                        registerUser(_email, _password);
                      }
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomSmallText(
                      text: "Already have an account?",
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('login');
                      },
                      child: const CustomBoldText(text: "Login"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
