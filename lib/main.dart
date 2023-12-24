import 'package:flutter/material.dart';
import 'Screens/ EventDetails/Components/Agenda.dart';
import 'Screens/ EventDetails/EventDetailsV1.dart';
import 'Screens/Authentication/Login.dart';
import 'Screens/OnBoardings/OnboardingScreen.dart';
import 'Screens/PickInterest/picInterest.dart';
import 'Screens/Splashes/SplashWelcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stub Guys',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: EventDetails(),
    );
  }
}
