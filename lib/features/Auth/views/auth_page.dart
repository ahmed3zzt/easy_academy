import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:easy_academy/core/constant.dart';
import 'package:easy_academy/features/Auth/views/login_view.dart';
import 'package:easy_academy/features/Auth/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  static const routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
                child: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          const SizedBox(
            height: 90,
            child: Image(
              image: AssetImage('assets/logo.png'),
            ),
          ),
          const Text(
            'ايزي اكاديمي',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.68,
            child: DefaultTabController(
              length: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(
                        height: 50,
                        unselectedBackgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                        unselectedLabelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.rakkas().fontFamily),
                        labelStyle: TextStyle(
                          color: Constants.mainColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.rakkas().fontFamily,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        // Add your tabs here
                        tabs: [
                          const Tab(text: 'انشاء حساب'),
                          const Tab(text: 'تسجيل الدخول'),
                        ]),
                    const Expanded(
                      child: TabBarView(
                        children: [
                          RegisterView(),
                          LoginView(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          const Text(
            'التسجيل يعني انك موافق علي شروط الاستخدام  ',
            textDirection: TextDirection.rtl,
            style: TextStyle(fontSize: 16),
          ),
                ]),
              ),
        ));
  }
}
