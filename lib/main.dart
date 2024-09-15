import 'package:device_preview/device_preview.dart';
import 'package:easy_academy/core/router.dart';
import 'package:easy_academy/features/splash/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Easy Academy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.rakkasTextTheme(ThemeData.light().textTheme),
        brightness: Brightness.light,
      ),
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}
