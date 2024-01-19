import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Sales.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/firstreporttext.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/mostperformingevents.dart';

class O_Dashboard extends StatefulWidget {
  const O_Dashboard({super.key});

  @override
  State<O_Dashboard> createState() => _O_DashboardState();
}

class _O_DashboardState extends State<O_Dashboard> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Dashboard",
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 38,
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: SvgPicture.asset(
                          'Assets/ORGANISER_APP/Icons/Dashboard/hamburger.svg', // Replace with your SVG file path
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'Assets/ORGANISER_APP/Icons/Dashboard/bell.svg', // Replace with your SVG file path
                            ),
                          ),
                          Positioned(
                            right: 1,
                            child: Container(
                              width: 17, // Adjust the width as needed
                              height: 17, // Adjust the height as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Color(0xFF8DC73F), // Set the circle color
                              ),
                              child: const Center(
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    color: Colors.white, // Set the text color
                                    fontSize:
                                        10, // Adjust the font size as needed
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              MyClickableText(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SalesDetails(),
                  SalesDetails(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Column(
                children: [
                  Container(
                    // height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xFFF1F1F2))),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Your Most Performing Event(s)",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 12,
                            fontFamily: 'SatoshiBold',
                            height: 1.1,
                          ),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.02,
                        ),

                        // Unleashing Africa's Future with bill Gates
                        const MostPerformingEvents(
                          imageurl:
                              'Assets/Images/Components/browseeventsexample1.jpg',
                          topic:
                              '"Unleashing Africa\'s Future with bill Gates"',
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.012,
                        ),
                        const MostPerformingEvents(
                          imageurl:
                              'Assets/Images/Components/browseeventsexample2.jpg',
                          topic: 'StubGuys Launch 2023',
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.012,
                        ),
                        const MostPerformingEvents(
                          imageurl:
                              'Assets/Images/Components/browseeventsexample1.jpg',
                          topic: 'Cookathon Event',
                        ),

                        // Cookathon Event
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: mQuery.size.width * 0.43,
                        height: mQuery.size.height * 0.06,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: const Color(0xff96cc39)),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "Manage Events",
                            style: TextStyle(
                                color: Color(0xff96cc39),
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      Container(
                        width: mQuery.size.width * 0.43,
                        height: mQuery.size.height * 0.06,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "Create New Event",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.03,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
