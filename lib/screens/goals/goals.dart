import 'package:flutter/material.dart';
import 'package:gym_carrey/constants.dart';
import 'package:gym_carrey/screens/plan/TrainCard.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_carrey/screens/plan/plan.dart';

class GoalsScreen extends StatefulWidget {
  static String routeName = '/goals';

  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  List planList = [];
  int index = 0;
  final TextEditingController ageController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
          // Respond to item press.
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
                "Goals you want to achieve",
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
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Text(
                                "Maintain weight",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
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
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Text(
                                "Weight loss",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
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
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Text(
                                "Extreme weight loss",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
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
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Text(
                                "Mild weight gain",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
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
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Text(
                                "Weight gain",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
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
                    color: index == 6
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
                          index = 6;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Expanded(
                              flex: 3,
                              child: Text(
                                "Extreme weight gain",
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
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
                  onPressed: () {
                    Navigator.pushNamed(context, Plan.routeName);
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
