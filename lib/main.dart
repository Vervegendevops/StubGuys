import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/HomeFeed.dart';

//hello
// hello i am ankit
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Stub Guys',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomeFeed(),
      // home: ChatPage(),
    );
  }
}
