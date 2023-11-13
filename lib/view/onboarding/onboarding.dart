import 'package:flutter/material.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/widgets/buttons.dart';
import 'package:todo/view/widgets/text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomHeadingText(
              text: "TodoZen",
              color: AppColor.whiteSecondary,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('login', (route) => false);
                  },
                  child: const CustomBoldText(
                    text: "Login",
                    color: AppColor.blueColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('signup', (route) => false);
                  },
                  child: const CustomBoldText(
                    text: "Signup",
                    color: AppColor.blueGlass,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
