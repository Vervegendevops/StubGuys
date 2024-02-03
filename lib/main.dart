import 'package:flutter/material.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_AttendeesList/Attendees.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stub Guys',
      theme: ThemeData(
        useMaterial3: true,
      ),
      // home: HomeFeed(),
      home: O_Attendees(),
    );
  }
}
