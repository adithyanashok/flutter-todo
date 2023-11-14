import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/bloc/auth/auth_bloc.dart';
import 'package:todo/bloc/bottom_nav/bottom_nav_bloc.dart';
import 'package:todo/bloc/events/events_bloc.dart';
import 'package:todo/bloc/todo/todo_bloc.dart';
import 'package:todo/view/internet/internet.dart';
import 'package:todo/view/login/login.dart';
import 'package:todo/view/onboarding/onboarding.dart';
import 'package:todo/view/signup/signup.dart';
import 'package:todo/view/splash_screen/splash_screen.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // final String token;
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => TodoBloc(),
          ),
          BlocProvider(
            create: (context) => AuthBloc(),
          ),
          BlocProvider(
            create: (context) => BottomNavBloc(),
          ),
          BlocProvider(
            create: (context) => EventsBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'TODO',
          theme: ThemeData(
            splashColor: Colors.transparent,
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
          routes: {
            "login": (context) => const LoginScreen(),
            "signup": (context) => const SignupScreen(),
            "onboard": (context) => const OnboardingScreen(),
          },
        ),
      );
    });
  }
}
