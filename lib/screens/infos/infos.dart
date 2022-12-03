import 'package:flutter/material.dart';
import 'package:gym_carrey/constants.dart';
import 'package:gym_carrey/screens/level/level.dart';
import 'package:gym_carrey/screens/plan/TrainCard.dart';

class InfoScreen extends StatefulWidget {
  static String routeName = '/info';

  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  List planList = [];
  bool male = true;
  final TextEditingController ageController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  double? height, weight;
  int? age;
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
                "Tell us about yourself",
                style: TextStyle(
                    fontSize: 21,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlueColor.withOpacity(0.2),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Gender",
                        style: TextStyle(
                          fontSize: 21,
                          color: kGreyColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              male = true;
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5.0,
                            color: male ? kOrangeColor : kWhiteColor,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.male_outlined,
                                  size: 70,
                                  color: male ? kWhiteColor : kDarkBlue,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    color: male ? kWhiteColor : kDarkBlue,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                )
                              ],
                            ),
                          ),
                        ),
                        // FEMALE
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              male = false;
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5.0,
                            color: !male ? kOrangeColor : kWhiteColor,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.female_outlined,
                                  size: 70,
                                  color: !male ? kWhiteColor : kDarkBlue,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    color: !male ? kWhiteColor : kDarkBlue,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                ),
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
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlueColor.withOpacity(0.3),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Age",
                        style: TextStyle(
                          fontSize: 21,
                          color: kGreyColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextField(
                            onChanged: (value) {
                              age = int.parse(value);
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              fillColor: const Color(0xffFFF9F6),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(width: 0)),
                              hintText: 'Enter Your Age',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Expanded(
                            child: Text(
                          "Years",
                          style: TextStyle(
                            color: kDarkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ))
                      ],
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
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlueColor.withOpacity(0.3),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Height",
                        style: TextStyle(
                          fontSize: 21,
                          color: kGreyColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextField(
                            onChanged: (value) {
                              height = double.parse(value);
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              fillColor: const Color(0xffFFF9F6),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(width: 0)),
                              hintText: 'Enter Your Height',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Expanded(
                            child: Text(
                          "Cm",
                          style: TextStyle(
                            color: kDarkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ))
                      ],
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
              // SECOND INPUT
              Container(
                width: size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: kBlueColor.withOpacity(0.3),
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Weight",
                        style: TextStyle(
                          fontSize: 21,
                          color: kGreyColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextField(
                            onChanged: (value) {
                              weight = double.parse(value);
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              fillColor: const Color(0xffFFF9F6),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(width: 0)),
                              hintText: 'Enter Your Weight',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Expanded(
                            child: Text(
                          "Kg",
                          style: TextStyle(
                            color: kDarkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ))
                      ],
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
                    Navigator.pushNamed(context, LevelScreen.routeName,
                        arguments: {
                          'gender': male ? "male" : "female",
                          'age': age,
                          'height': height,
                          'weight': weight
                        });
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(size.width / 2.8, 20),
                      backgroundColor: kOrangeColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
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
