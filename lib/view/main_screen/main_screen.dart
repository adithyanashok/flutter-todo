import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo/bloc/bottom_nav/bottom_nav_bloc.dart';
import 'package:todo/util/colors/colors.dart';
import 'package:todo/view/dashboard/dashboard.dart';
import 'package:todo/view/events/events.dart';

class MainScreen extends StatelessWidget {
  final String token;
  const MainScreen({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    final screens = [
      Dashboard(token: token),
      EventsScreen(
        token: token,
      ),
    ];
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          body: screens[state.index],
          bottomNavigationBar: const BuildNavBar(),
        );
      },
    );
  }
}

class BuildNavBar extends StatelessWidget {
  const BuildNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Initialize the UserBloc to retrieve user information.

    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return BottomNavigationBar(
          // Customize the appearance of the bottom navigation bar.
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: AppColor.whiteColor,
          selectedItemColor: AppColor.whiteColor,
          backgroundColor: AppColor.blueColor,

          // Handle tab selection and index.
          onTap: (value) {
            BlocProvider.of<BottomNavBloc>(context).add(
              BottomNavEvent.onclick(index: value),
            );
          },
          currentIndex: state.index,

          // Define the tabs/items in the bottom navigation bar.
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.task_outlined),
                activeIcon: Icon(Icons.task_outlined),
                label: "Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.event),
                activeIcon: Icon(Icons.event_available_outlined),
                label: "Events"),
          ],
        );
      },
    );
  }
}
