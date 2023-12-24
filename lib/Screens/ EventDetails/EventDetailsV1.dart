import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Components/Agenda.dart';
import 'Components/HorizontalImage.dart';
import 'Components/Sponsors.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  bool isExpanded = false;
  final List<String> TimeList = [
    '9 AM',
    '10 AM',
    '11:30 AM',
    '9 AM',
    '3:30 AM',
    '9 AM',
    '8 PM',
  ];
  final List<String> AgendaList = [
    'Registration and Networking',
    'Opening Ceremony and Welcome Address',
    'Keynote Speech on “Harnessing Innovation for Sustainble Developent in Africa',
    'Lunch Break and Networking',
    'Workshop Session 1: “Building Entrepreneurial Mindsets”',
    'Coffee Break',
    'Networking Rececption and Cultural Showcase',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Stack(
                      children: [
                        Image.asset("Assets/Images/EventDetails.jpg"),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.04),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'Assets/Images/Components/ellipse1.svg'),
                                        const Icon(
                                          Icons.arrow_back,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                'Assets/Images/Components/redheartellipse.svg'),
                                            SvgPicture.asset(
                                                'Assets/Images/Components/redheart.svg'),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 7.0),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  'Assets/Images/Components/redheartellipse.svg'),
                                              const Icon(
                                                Icons.share,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                ),
                                Container(
                                  child: SvgPicture.asset(
                                      'Assets/Images/Components/playbutton.svg'),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                const Text(
                                  "Watch Video",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SatoshiRegular',
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                ),
                                SvgPicture.asset(
                                    'Assets/Images/Components/sponsored.svg'),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Contents below video
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        const Text(
                          "Unleashing Africa’s Future with Bill Gates",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF201335),
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),

                        // Timing Section
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              // Center the children within the Stack
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.16,
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  color: const Color(0xFF8DC73F),
                                ),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // Center the Column vertically
                                  children: [
                                    Text(
                                      "30",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'SatoshiBold',
                                      ),
                                    ),
                                    Text(
                                      "June",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),

                            // Timing Section
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Time",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF696D61),
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.001,
                                    ),
                                    const Text(
                                      "10:00 AM - 01:00PM",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF696D61),
                                        fontFamily: 'SatoshiMedium',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Price",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF696D61),
                                        fontFamily: 'SatoshiRegular',
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.001,
                                    ),
                                    const Text(
                                      "25.00",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF696D61),
                                        fontFamily: 'SatoshiMedium',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),

                        /*Follow section*/
                        Row(
                          children: [
                            Image.asset(
                                "Assets/Images/Components/profilesmall.jpg"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04,
                            ),
                            const Text(
                              "PAN-AFRICAN \nINNOVATION FORUM.",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF201335),
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.08,
                            ),
                            Container(
                              width: 100.0, // Customize the width
                              height: 40.0, // Customize the height
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                // Customize the border radius
                                border: Border.all(
                                  color: const Color(0xFF8DC73F),
                                  // Customize the border color
                                  width: 1.0, // Customize the border width
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Follow',
                                  style: TextStyle(
                                    color: Color(
                                        0xFF8DC73F), // Customize the text color
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        const Text(
                          "About Event",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'We’re celebrating our 30th edition of the  Pan African Youth Innovation Forum 2023. We will have Bill Gates as our guest speaker. exercitation ullamco laboris nisi '
                              'ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
                              'in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                              'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia '
                              'deserunt mollit anim id est laborum.',
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'SatoshiRegular',
                              ),
                              maxLines: isExpanded ? null : 5,
                              // Show only 3 lines initially
                              overflow: TextOverflow.ellipsis,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isExpanded = !isExpanded;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  isExpanded ? 'Read More' : 'Read Less',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF8DC73F),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        const Text(
                          "Location",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Image.asset("Assets/Images/Components/Map.png"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        const Text(
                          "Media Gallery",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ],
                    ),
                  ),
                  HorizontalAssetImageList(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Agenda",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                  ),
                  // Agenda Section
                  TextListViewBuilder(
                    timeList: TimeList,
                    agendaList: AgendaList,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Sponsors",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Sponsors(
                          imagePath:
                              'Assets/Images/Components/TemoraryComponents/spon1.png',
                        ),
                        Sponsors(
                          imagePath:
                              'Assets/Images/Components/TemoraryComponents/spon2.png',
                        ),
                        Sponsors(
                          imagePath:
                              'Assets/Images/Components/TemoraryComponents/spon3.png',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Divider(
                      height: 20, // Adjust the height of the line
                      thickness: 0.4, // Adjust the thickness of the line
                      color: Colors.grey, // Adjust the color of the line
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Refund Policy",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Refunds up to 7 days before event. Stubguys fees are non-refundable.",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'SatoshiRegular',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF8DC73F),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0), // Adjust the radius as needed
                topRight: Radius.circular(20.0), // Adjust the radius as needed
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.09,
            padding: const EdgeInsets.all(16.0),

            // Customize the color of the button container
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Get Tickets",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'SatoshiBold',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                SvgPicture.asset(
                    'Assets/Images/Components/getticket.svg')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
