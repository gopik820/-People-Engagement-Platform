import 'package:flutter/material.dart';
import 'rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/img1.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 75.0, vertical: 100),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              RoundedButton(
                colour: Color.fromARGB(255, 103, 181, 125),
                title: 'Log In',
                onPressed: () {
                  Navigator.pushNamed(context, 'login_screen');
                },
              ),
              RoundedButton(
                  colour: Color.fromARGB(255, 103, 181, 125),
                  title: 'Register',
                  onPressed: () {
                    Navigator.pushNamed(context, 'registration_screen');
                  }),
            ]),
      ),
    );
  }
}
