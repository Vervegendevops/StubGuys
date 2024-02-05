import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/%20EventDetails/GetTickets/Step3.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/HomeFeed.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Splashes/Splash.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/Components/fullarticle.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/GetHelp.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/GetHelpTopic.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Support/SupportMain.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step1.dart';
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
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Profile/Components/Withdraw/O_withdrawlAmount.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_QR/QR.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Support/O_GetHelp.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Support/O_GetHelpTopic.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Support/O_SupportMain.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Support/O_fullarticle.dart';
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

     home : HomeFeed()
    );
  }
}



