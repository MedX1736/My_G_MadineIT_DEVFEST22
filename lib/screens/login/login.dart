import 'package:flutter/material.dart';
import 'package:gym_carrey/constants.dart';
import 'package:gym_carrey/screens/infos/infos.dart';
import 'package:gym_carrey/screens/plan/plan.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //firebase
  // final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = Container(
      child: Column(children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'E-mail',
            style: TextStyle(
                color: Color(0xffFF5931), fontFamily: 'Roboto', fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
            autocorrect: false,
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return ("Veuillez saisir votre E-mail");
              }
              //reg expression for email validation
              if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]")
                  .hasMatch(value)) {
                return ("Veillez saisir une addrese e-mail valide");
              }
              return null;
            },
            onSaved: (value) {
              emailController.text = value!;
            },
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              fillColor: Color(0xffF2F2F2),
              filled: true,
              prefixIcon: const Icon(Icons.mail),
              iconColor: const Color(0xffFF5931),
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(width: 0)),
            ))
      ]),
    );

    //password field
    final passwordField = Container(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Password',
              style: TextStyle(
                  color: Color(0xffFF5931), fontFamily: 'Roboto', fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            controller: passwordController,
            validator: (value) {
              RegExp regex = RegExp(r'^,{6,}$');
              if (value!.isEmpty) {
                return ("Enter Your password");
              }
              if (!regex.hasMatch(value)) {
                return ("Enter a valid password");
              }
            },
            onSaved: (value) {
              passwordController.text = value!;
            },
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              fillColor: const Color(0xffF2F2F2),
              filled: true,
              prefixIcon: const Icon(Icons.vpn_key),
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
          )
        ],
      ),
    );

    //login button
    final loginButton = Material(
      borderRadius: BorderRadius.circular(10),
      color: kOrangeColor,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
        //minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.pushNamed(context, InfoScreen.routeName);
        },
        child: const Text(
          "LOG IN",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontFamily: 'Roboto'),
        ),
      ),
    );

    //login slide
    final loginslide = DraggableScrollableSheet(
      initialChildSize: 0.4,
      builder: (context, scrollController) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Color(0xFF081761)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 20),
                      emailField,
                      const SizedBox(height: 20),
                      passwordField,
                      const SizedBox(height: 30),
                      Align(
                        alignment: Alignment.centerRight,
                        child: loginButton,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );

    return Scaffold(
      backgroundColor: kOrangeColor,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Column(children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ]),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: loginslide),
          ),
        ],
      ),
    );
  }
}
