import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project/discover.dart';
import 'chatmain.dart';
import 'message.dart';
import 'network.dart';
import 'welcome_screen.dart';
import 'home_screen.dart';
import 'registration_screen.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'login_screen': (context) => LoginScreen(),
        'home_screen': (context) => HomeScreen(),
        'discover': (context) => Discover(),
        'message': (context) => Message(),
        'network': (context) => Network(),
        'chatmain': (context) => Chat(),
      },
    );
  }
}
