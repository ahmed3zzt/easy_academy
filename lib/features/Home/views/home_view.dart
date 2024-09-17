import 'dart:ffi';

import 'package:easy_academy/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/home_view_body.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return  BottomNavBar();
  }
}




class BottomNavBar extends StatelessWidget {
   BottomNavBar({super.key});

  final int _index = 0;

  final List<Widget> _screens = [
    Container(color: Colors.red,),
    Container(color: Colors.green,),
    Container(color: Colors.yellow,),
    const HomeViewBody(),
  ] ;
  final navItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.person),
      title: ("المستخدم"),
      activeColorPrimary: Constants.mainColor,
      inactiveColorPrimary: Colors.black26,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.heart),
      title: ("المفضله"),
      activeColorPrimary: Constants.mainColor,
      inactiveColorPrimary: Colors.black26,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.search),
      title: ("البحث"),
      activeColorPrimary: Constants.mainColor,
      inactiveColorPrimary: Colors.black26,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home ),
      title: ("الرئيسيه"),
      activeColorPrimary: Constants.mainColor,
      inactiveColorPrimary: Colors.black26,

    ),
  ];
  final PersistentTabController _controller = PersistentTabController(initialIndex:3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _screens,
        backgroundColor: Colors.white,
        navBarHeight: 50,
        navBarStyle: NavBarStyle.style9,
        decoration: NavBarDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ]
        ),
        items: navItems
      )
    );
  }
}