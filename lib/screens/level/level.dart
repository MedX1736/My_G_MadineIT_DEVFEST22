import 'package:flutter/material.dart';
import 'package:gym_carrey/constants.dart';
import 'package:gym_carrey/screens/goals/goals.dart';
import 'package:gym_carrey/screens/plan/TrainCard.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class LevelScreen extends StatefulWidget {
  static String routeName = '/level';

  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  List planList = [];
  int index = 0;
  final TextEditingController ageController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    String gender = arguments["gender"];
    int height = arguments["height"].toInt();
    int age = arguments["age"];
    int weight = arguments["weight"].toInt();
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF081761),
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          print(
              "http://192.168.218.237:5000/${gender}/${age}/${height}/${weight}/${index}");
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Fitness Plan',
            icon: Icon(Icons.fitness_center),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Hi User",
          style: TextStyle(fontFamily: 'Roboto', color: Colors.blueGrey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Choose an Activity level",
                style: TextStyle(
                    fontSize: 21,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 25,
              ),

              const SizedBox(
                height: 10,
              ),
              // SECOND INPUT
              Container(
                width: size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 1
                        ? Color.fromARGB(255, 223, 146, 94)
                        : kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlueColor.withOpacity(0.3),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Text(
                                "No or very little exercises",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: SvgPicture.asset(
                                "assets/svg/one.svg",
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // THIRD INPUT
              Container(
                width: size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 2
                        ? Color.fromARGB(255, 223, 146, 94)
                        : kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlueColor.withOpacity(0.3),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Text(
                                "1 to 3 times per week",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: SvgPicture.asset(
                                "assets/svg/two.svg",
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 3
                        ? Color.fromARGB(255, 223, 146, 94)
                        : kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlueColor.withOpacity(0.3),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 3;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Text(
                                "4 to 5 times per week",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: SvgPicture.asset(
                                "assets/svg/three.svg",
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 4
                        ? Color.fromARGB(255, 223, 146, 94)
                        : kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlueColor.withOpacity(0.3),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 4;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Text(
                                "Daily or intense exercises 3 to 4 times per week",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: SvgPicture.asset(
                                "assets/svg/fourth.svg",
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 5
                        ? Color.fromARGB(255, 223, 146, 94)
                        : kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlueColor.withOpacity(0.3),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 5;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Text(
                                "Daily intense exercises",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: SvgPicture.asset(
                                "assets/svg/fifth.svg",
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () async {
                    // print(
                    //     "http://192.168.218.237:5000/${gender}/${age}/${height}/${weight}/${index}");
                    // var dio = Dio();
                    // Response res = await dio.get(
                    //   "http://192.168.218.237:5000/${gender}/${age}/${height}/${weight}/${index}",
                    // );
                    // print("YES");
                    // var data = res.data;
                    // print(data);
                    Navigator.pushNamed(context, GoalsScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(size.width / 2.8, 20),
                      backgroundColor: kOrangeColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          color: kWhiteColor)),
                  child: const Text(
                    'NEXT',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}


                    // var dio = Dio();
                    // Response res = await dio.get(
                    //   "http://192.168.218.237:5000/${gender}/${age}/${height}/${weight}/${index}",
                    // );
                    // print("YES");
                    // var data = res.data;
                    // print(data);
                    // Navigator.pushNamed(context, GoalsScreen.routeName,
                    //     arguments: {'data': data});
