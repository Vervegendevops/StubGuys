import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/%20EventDetails/Components/ChoosePaymentMeth.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/%20EventDetails/GetTickets/Step3.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/HomeFeed.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/O_ChangePin.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/O_ChnagePassword.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/O_Notification.dart';
// import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/O_Notifications.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/AddBankAccount/AddBank.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_ConfirmOTP.dart';
// import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_Notifications.dart';

import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_WithdrawReceipt.dart';

import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_WithdrawMain.dart';

import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_WithdrawSuccess.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_WithdrawalsHistory.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_withdrawlAmount.dart';
// import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/SwitchBankAccount.dart';

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
      home: HomeFeed()
    );
  }
}
