import 'package:easy_academy/core/constant.dart';
import 'package:easy_academy/features/Home/features/profile/view/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../features/my_courses/views/my_courses_page.dart';
import '../features/stats/view/stats_page.dart';
import 'widgets/home_view_body.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return BottomNavBar();
  }
}

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final List<Widget> _screens = [
    const ProfilePage(),
    const StatsPage(),
    const MyCoursesPage(),
    const HomeViewBody(),
  ];

  final navItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.person),
      title: ("المستخدم"),
      activeColorPrimary: Constants.mainColor,
      inactiveColorPrimary: Colors.black26,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.chart_bar),
      title: ("احصائياتي"),
      activeColorPrimary: Constants.mainColor,
      inactiveColorPrimary: Colors.black26,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.book),
      title: ("محاضراتي"),
      activeColorPrimary: Constants.mainColor,
      inactiveColorPrimary: Colors.black26,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home),
      title: ("الرئيسيه"),
      activeColorPrimary: Constants.mainColor,
      inactiveColorPrimary: Colors.black26,
    ),
  ];
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: PersistentTabView(context,
            controller: _controller,
            screens: _screens,
            backgroundColor: Colors.white,
            navBarHeight: 50,
            navBarStyle: NavBarStyle.style9,
            decoration: NavBarDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ]),
            items: navItems));
  }
}
