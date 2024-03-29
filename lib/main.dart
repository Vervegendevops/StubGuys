import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/HomeFeed.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_OrganiserOnboarding/addOrgProfile.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_OrganiserOnboarding/checklist.dart';

import 'package:stub_guys/ORGANISER_APP/O_Screens/O_OrganiserOnboarding/profile1.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_OrganiserOnboarding/profile2.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_OrganiserOnboarding/verify.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/O_ChangePin.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/O_ChnagePassword.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_ConfirmOTP.dart';

import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_WithdrawReceipt.dart';

import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_WithdrawMain.dart';

import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_WithdrawSuccess.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_withdrawlAmount.dart';

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

      // home: const checklist(),
      // home: const ProfileSet(),
      // home: const ProfileSet2(),
      home: const addProfile(),
      // home: SwitchBankAccount(),
    );
  }
}
