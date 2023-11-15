import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/bloc/auth/auth_bloc.dart';
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
  late SharedPreferences prefs;
  @override
  void initState() {
    super.initState();
    initSharedPreference();
  }

  void initSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
  }

  String _password = '';
  String _email = '';
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
                  obscureText: true,
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
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return CustomButton(
                      text: "Login",
                      height: 50.h,
                      color: AppColor.blueColor,
                      loading: state.isLoading,
                      onTap: () {
                        setState(() {
                          validator = true;
                        });
                        if (_email.isNotEmpty && _password.isNotEmpty) {
                          BlocProvider.of<AuthBloc>(context)
                              .add(AuthEvent.login(
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
