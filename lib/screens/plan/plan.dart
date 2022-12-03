import 'package:flutter/material.dart';
import 'package:gym_carrey/constants.dart';
import 'package:gym_carrey/screens/douche/douche.dart';
import 'package:gym_carrey/screens/plan/TrainCard.dart';
import 'Exercice.dart';
import "static.dart";

class Plan extends StatefulWidget {
  static String routeName = '/plan';

  const Plan({super.key});

  @override
  State<Plan> createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  List planList = [];
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Today's Plan",
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Roboto', color: Colors.blueGrey),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: [
                  ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: res.length,
                      itemBuilder: (context, index) => Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 15.0),
                            child: TrainCard(
                              width: size.width / 1.1,
                              title: res[index][0],
                              rep: res[index][1][0],
                              set: res[index][1][1],
                            ),
                          )),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, DoucheScreen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(size.width / 2.8, 20),
                        backgroundColor: kBlackText,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            color: kWhiteColor)),
                    child: const Text(
                      'DONE',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
