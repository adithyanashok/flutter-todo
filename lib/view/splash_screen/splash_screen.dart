import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/dashboard/dashboard.dart';
import 'package:todo/view/main_screen/main_screen.dart';
import 'package:todo/view/widgets/text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        final token = prefs.getString('token');

        if (token != null) {
          if (JwtDecoder.isExpired(token) == true) {
            Navigator.of(context).pushNamedAndRemoveUntil(
              'onboard',
              (route) => false,
            );
          } else {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => MainScreen(token: token),
              ),
              (route) => false,
            );
          }
        } else {
          Navigator.of(context).pushNamedAndRemoveUntil(
            'onboard',
            (route) => false,
          );
        }
      },
    );
    return const Scaffold(
      backgroundColor: AppColor.blueColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomHeadingText(
              text: "TodoZen",
              color: AppColor.whiteColor,
            ),
            CustomBoldText(
              text: "Organize your tasks, seize the day!",
              color: AppColor.whiteSecondary,
            )
          ],
        ),
      ),
    );
  }
}
