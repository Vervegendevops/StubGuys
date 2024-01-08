import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/Screens/Notifications.dart/Notifications.dart';
import 'package:stub_guys/Screens/Profile/Components/Logout.dart';
import 'package:stub_guys/Screens/Profile/Components/optiontiles.dart';
import 'package:stub_guys/Screens/Profile/ProfileSections/Editprofile.dart';
import 'package:stub_guys/Screens/Profile/ProfileSections/Favourites.dart';
import 'package:stub_guys/Screens/Profile/ProfileSections/Language.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void _showLogoutBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Logout();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              //topbar
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "My Profile",
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 40,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Notifications()),
                      )
                    },
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'Assets/Images/Icon/bell.svg',
                        ),
                        Positioned(
                          top:
                              -2.0, // Adjust the top value to position the container
                          right:
                              5.0, // Adjust the right value to position the container
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                              color: Color(
                                  0xFF8DC73F), // Adjust the background color as needed
                              shape: BoxShape.circle,
                            ),
                            child: const Text(
                              '5', // Replace with the actual number of notifications
                              style: TextStyle(
                                color: Colors
                                    .white, // Adjust the text color as needed
                                fontSize:
                                    10.0, // Adjust the font size as needed
                              ),
                            ),
                          ),
                        ),






                        
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              // Profile Details
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 122,
                    height: 122,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          'Assets/Images/Icon/profilecircle.svg',
                        ),
                        const Center(
                          child: Text(
                            "C",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 40,
                              fontFamily: 'SatoshiMedium',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Cavil Inwang",
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 21,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                      const Text(
                        "lordcavil@gmail.com",
                        style: TextStyle(
                          color: Color(0xFF696D61),
                          fontSize: 12,
                          fontFamily: 'SatoshiMedium',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.058,
                          child: ElevatedButton(
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EditProfile()),
                              )
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF8DC73F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    18.0), // Set border radius
                              ),
                              // Button text color
                              side: const BorderSide(
                                  color: Color(0xFF8DC73F),
                                  width: 2.0), // Border color and width
                              elevation: 0, // Remove button shadow
                              minimumSize: const Size(
                                  120, 40), // Set minimum width and height
                            ),
                            child: const Text(
                              "Edit Profile",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'SatoshiBold',
                                height: 1.1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Favourites()),
                  )
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconTextRow(
                    iconData: "Assets/Images/Components/Profile/p_heart.svg",
                    text: "Favourites",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconTextRow(
                  iconData: "Assets/Images/Components/Profile/p_inbox.svg",
                  text: "Inbox",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Language()),
                  )
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconTextRow(
                    iconData: "Assets/Images/Components/Profile/p_language.svg",
                    text: "Language",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconTextRow(
                  iconData: "Assets/Images/Components/Profile/p_location.svg",
                  text: "Location",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconTextRowSwitch(
                  iconData: "Assets/Images/Components/Profile/p_gethelp.svg",
                  text: "Get help",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconTextRowSwitch(
                  iconData: "Assets/Images/Components/Profile/p_om.svg",
                  text: "Organiser Mode",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              GestureDetector(
                onTap: _showLogoutBottomSheet, // Open the bottom sheet on tap
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconTextRow(
                    iconData: "Assets/Images/Components/Profile/p_logout.svg",
                    text: "Log Out",
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
    );
  }
}
