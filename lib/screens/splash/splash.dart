import 'package:flutter/material.dart';
import 'package:gym_carrey/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gym_carrey/screens/login/login.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splash';
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then((value) => {
          // Navigator.pushNamed(context, WelcomeScreen.routeName);
          Navigator.popAndPushNamed(context, LoginScreen.routeName)
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 91, 7),
      body: SizedBox(
        width: size.width,
        child: const Center(
          child: Image(
            image: AssetImage(
              "assets/images/white_1.gif",
            ),
            width: 120,
          ),
        ),
      ),
    ));
  }
}
