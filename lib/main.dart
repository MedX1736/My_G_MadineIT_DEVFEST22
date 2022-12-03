import 'package:flutter/material.dart';
import 'package:gym_carrey/constants.dart';
import 'package:gym_carrey/screens/infos/infos.dart';
import 'package:gym_carrey/screens/splash/splash.dart';
import 'package:gym_carrey/screens/qr/qrCode.dart';
import 'package:gym_carrey/screens/douche/douche.dart';
import 'package:gym_carrey/screens/level/level.dart';
import 'package:gym_carrey/screens/goals/goals.dart';
// import 'package:gym_carrey/screens/splash/splash.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(iconTheme: IconThemeData(color: kBlackText)),
      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
      title: 'myGYm',
      initialRoute: SplashScreen.routeName,
    );
  }
}
