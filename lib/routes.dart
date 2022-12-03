import 'package:flutter/widgets.dart';
import 'package:gym_carrey/screens/infos/infos.dart';
import 'screens/splash/splash.dart';
import 'package:gym_carrey/screens/login/login.dart';
import 'package:gym_carrey/screens/plan/plan.dart';
import 'package:gym_carrey/screens/douche/douche.dart';
import 'package:gym_carrey/screens/level/level.dart';
import 'package:gym_carrey/screens/goals/goals.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  // HomeScreen.routeName: (context) => const HomeScreen(),
  // QrCode.routeName: (context) => const QrCode(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  Plan.routeName: (context) => const Plan(),
  InfoScreen.routeName: (context) => const InfoScreen(),
  DoucheScreen.routeName: (context) => const DoucheScreen(),
  LevelScreen.routeName: (context) => const LevelScreen(),
  GoalsScreen.routeName: (context) => const GoalsScreen(),
};
