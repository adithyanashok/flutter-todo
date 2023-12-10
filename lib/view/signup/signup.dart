import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/auth/auth_bloc.dart';
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
  // Key for the form to manage its state
  final _formKey = GlobalKey<FormState>();

  // Variables to store user input
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
                    child: CustomHeadingText(
                      text: "Create account!",
                      fontSize: 40,
                    ),
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
                    // Validate email only if the validator is true
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
                    obscureText: true,
                    // Validate password only if the validator is true
                    validator: validator && _password.isEmpty
                        ? 'Enter a password'
                        : null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 10),
                  child: BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return CustomButton(
                        text: "Signup",
                        height: 55,
                        color: AppColor.blueColor,
                        loading: state.isLoading,
                        onTap: () {
                          // Set validator to true to enable validation
                          setState(() {
                            validator = true;
                          });

                          // If email and password are not empty, register the user
                          if (_email.isNotEmpty && _password.isNotEmpty) {
                            BlocProvider.of<AuthBloc>(context)
                                .add(AuthEvent.signup(
                              email: _email,
                              password: _password,
                              context: context,
                            ));
                          }
                        },
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomSmallText(
                      text: "Already have an account?",
                      fontSize: 11,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('login');
                      },
                      child: const CustomBoldText(text: "Login", fontSize: 13),
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
