import 'package:easy_academy/core/constant.dart';
import 'package:easy_academy/features/Auth/views/auth_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AuthPage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            const SizedBox(
              height: 100,
              child: Image(
                image: AssetImage('assets/logo.png'),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const Text(
              'ايزي اكاديمي',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Constants.mainColor),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const Text(
              'الثانويه العامه اصبحت ايزي ❤️',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.indigo[100],
                color: Constants.mainColor,
                minHeight: 10,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            const Text('جاري تشغيل التطبيق', textDirection: TextDirection.rtl),
            const Text('v: 1.0.0', textDirection: TextDirection.rtl),
            const Text('صمم بواسطة: احمد عزت ثابت ',
                textDirection: TextDirection.rtl),
          ],
        ),
      ),
    );
  }
}
