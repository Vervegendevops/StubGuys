import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Components/HashTextField.dart';

class CE_Step1 extends StatefulWidget {
  const CE_Step1({super.key});

  @override
  State<CE_Step1> createState() => _CE_Step1State();
}

class _CE_Step1State extends State<CE_Step1> {
  String selectedAccountType = "Checking";

  void _showState(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: const Center(
            child: Text('Your Dynamic Bottom Sheet Content'),
          ),
        );
      },
    );
  }

  void _onAccountTypeSelected(String accountType) {
    // Close the bottom sheet
    setState(() {
      selectedAccountType = accountType; // Update the selected account type
    });
    Navigator.of(context).pop();
  }

  void _showBankAccount(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        var mQuery = MediaQuery.of(context);
        return Container(
            height: mQuery.size.height * 0.42,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: mQuery.size.height * 0.048,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Bank account type",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff201335),
                              fontFamily: 'SatoshiBold'),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Color(0xff545454),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onAccountTypeSelected("Checking");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedAccountType == "Checking"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedAccountType == "Checking"
                            ? const Color(0xffF0FFDD)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Checking",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: selectedAccountType == "Checking"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedAccountType == "Checking")
                              if (selectedAccountType == "Checking")
                                SvgPicture.asset(
                                    "Assets/ORGANISER_APP/Images/O_Profile/prime_check-circle.svg")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onAccountTypeSelected("Savings");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedAccountType == "Savings"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedAccountType == "Savings"
                            ? const Color(0xffF0FFDD)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Savings",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: selectedAccountType == "Savings"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedAccountType == "Savings")
                              SvgPicture.asset(
                                  "Assets/ORGANISER_APP/Images/O_Profile/prime_check-circle.svg")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedAccountType = selectedAccountType;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      width: double.infinity,
                      height: mQuery.size.height * 0.055,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff201335)),
                      child: const Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Color(0xffF1F1F2),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'SatoshiMedium'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFFDEFBB8),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.14,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('Assets/Images/Components/cross.svg'),
                        const Text(
                          "Create Event",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 24,
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                        SvgPicture.asset(
                          'Assets/Images/Components/createevent1.svg',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  //Event title
                  const Text(
                    "Event Title",
                    style: TextStyle(
                      color: Color(0xFF5E6366),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 0.065,
                    child: Theme(
                      data: ThemeData(
                        textTheme: const TextTheme(
                          subtitle1: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xFFABAFB1),
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF8DC73F)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF8DC73F)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          labelText: 'Keep it short and straight to the point',
                          suffixIcon: SvgPicture.asset(
                              "Assets/Images/Components/generate.svg"),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "0/80",
                        style: TextStyle(
                          color: Color(0xFFABAFB1),
                          fontSize: 12,
                          fontFamily: 'SatoshiRegular',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                  ),
                  //Event Organizer
                  const Text(
                    "Event Organizer",
                    style: TextStyle(
                      color: Color(0xFF5E6366),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Theme(
                      data: ThemeData(
                        textTheme: const TextTheme(
                          subtitle1: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xFFABAFB1),
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFF1F1F2)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFF1F1F2)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          labelText: 'Who is the organizer of this event',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                  ),
                  //Category
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  //Event title
                  const Text(
                    "Category",
                    style: TextStyle(
                      color: Color(0xFF5E6366),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  //category
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(
                          color: const Color(0xFFF1F1F2),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Music",
                            style: TextStyle(
                              color: Color(0xFFABAFB1),
                              fontSize: 13,
                              fontFamily: 'SatoshiMedium',
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFF5E6366))
                        ],
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    "Event type",
                    style: TextStyle(
                      color: Color(0xFF5E6366),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showBankAccount(context);
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all(
                            color: const Color(0xFFF1F1F2),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedAccountType,
                              style: const TextStyle(
                                color: Color(0xFFABAFB1),
                                fontSize: 13,
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFF5E6366),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    "Hashtags",
                    style: TextStyle(
                      color: Color(0xFF5E6366),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ), 
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const HashTag(),
                  //Location
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  const Text(
                    "Location",
                    style: TextStyle(
                      color: Color(0xFF5E6366),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),

                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(
                          color: const Color(0xFFF1F1F2),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Music",
                            style: TextStyle(
                              color: Color(0xFFABAFB1),
                              fontSize: 13,
                              fontFamily: 'SatoshiMedium',
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFF5E6366))
                        ],
                      )),
                  //Venue Address
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  //Event Organizer
                  const Text(
                    "Venue address",
                    style: TextStyle(
                      color: Color(0xFF5E6366),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Theme(
                      data: ThemeData(
                        textTheme: const TextTheme(
                          subtitle1: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xFFABAFB1),
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFF1F1F2)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFF1F1F2)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          labelText: '123 Address',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50.0, // Adjust the width as needed
                        height: 50.0, // Adjust the height as needed
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF1F1F2),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xFF141619),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button press here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF201335),
                          minimumSize: const Size(181, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: const Text(
                          'Save and Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily:
                                'SatoshiMedium', // You can adjust the font weight
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
