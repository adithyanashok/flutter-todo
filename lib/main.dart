import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/bloc/todo/todo_bloc.dart';
import 'package:todo/view/dashboard/dashboard.dart';
import 'package:todo/view/login/login.dart';
import 'package:todo/view/signup/signup.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(
    MyApp(
      token: prefs.getString('token')!,
    ),
  );
}

class MyApp extends StatelessWidget {
  final String token;
  const MyApp({super.key, required this.token});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => TodoBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'TODO',
          theme: ThemeData(
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: (JwtDecoder.isExpired(token) == false)
              ? Dashboard(token: token)
              : const LoginScreen(),
          routes: {
            "login": (context) => const LoginScreen(),
            "signup": (context) => const SignupScreen(),
          },
        ),
      );
    });
  }
}
