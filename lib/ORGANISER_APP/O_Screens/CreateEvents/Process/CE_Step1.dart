import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CE_Step1 extends StatefulWidget {
  const CE_Step1({super.key});

  @override
  State<CE_Step1> createState() => _CE_Step1State();
}

class _CE_Step1State extends State<CE_Step1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color(0xFFDEFBB8),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.17,
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
                  height: MediaQuery.of(context).size.height * 0.02,
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
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
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
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
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
                          "Public Event",
                          style: TextStyle(
                            color: Color(0xFFABAFB1),
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xFF5E6366),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
