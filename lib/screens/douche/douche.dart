import 'package:flutter/material.dart';
import 'package:gym_carrey/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DoucheScreen extends StatefulWidget {
  static String routeName = '/douche';
  const DoucheScreen({super.key});
  @override
  State<DoucheScreen> createState() => _doucheState();
}

class _doucheState extends State<DoucheScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Hi User",
          style: TextStyle(fontFamily: 'Roboto', color: Colors.blueGrey),
        ),
      ),
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
      body: Column(
        children: const <Widget>[
          Spacer(),
          TextHeader(),
          Spacer(),
          ElevatedCardExample(),
          FilledCardExample(),
          OutlinedCardExample(),
          Spacer(),
          ButtonsContainer(),
          Spacer(),
        ],
      ),
    );
  }
}

class TextHeader extends StatelessWidget {
  const TextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "You’re done for today, we prepared a shower room for you.",
      textAlign: TextAlign.center,
    ));
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Card(
          elevation: 0,
          color: Color(0xffD9D9D9),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Center(child: Text('')),
          ),
        ),
        Card(
          elevation: 0,
          color: Color(0xff081761),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Center(
                child: Text(
              '2',
              style: TextStyle(color: Color(0xffF2F2F2), fontSize: 30),
            )),
          ),
        ),
      ],
    ));
  }
}

class FilledCardExample extends StatelessWidget {
  const FilledCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Card(
          elevation: 0,
          color: Color(0xffD9D9D9),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Center(child: Text('')),
          ),
        ),
        Card(
          elevation: 0,
          color: Color(0xffD9D9D9),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Center(child: Text('')),
          ),
        ),
      ],
    ));
  }
}

class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Card(
          elevation: 0,
          color: Color(0xffD9D9D9),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Center(child: Text('')),
          ),
        ),
        Card(
          elevation: 0,
          color: Color(0xffD9D9D9),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Center(child: Text('')),
          ),
        ),
      ],
    ));
  }
}

class ButtonsContainer extends StatelessWidget {
  const ButtonsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff081761),
            foregroundColor: Colors.black87,
            minimumSize: Size(88, 36),
            padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 24.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Done',
            style: TextStyle(color: Color(0xffF2F2F2)),
          ),
        ),
      ],
    ));
  }
}
