import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddBank extends StatefulWidget {
  const AddBank({Key? key});

  @override
  State<AddBank> createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return GestureDetector(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: mQuery.size.height * 0.17,
                color: const Color(0xffDEFBB8),
                child: Column(
                  children: [
                    SizedBox(
                      height: mQuery.size.height * 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "Assets/ORGANISER_APP/Icons/Orders/formkit_arrowleft.svg",
                          ),
                          SizedBox(width: mQuery.size.width * 0.1),
                          const Text(
                            "Add Bank Account",
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xff201335),
                              fontFamily: 'SatoshiBold',
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: mQuery.size.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "State",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff5E6366),
                        fontFamily: 'SatoshiMedium',
                        height: 1.1,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            10), // Adjust border radius as needed
                        border: Border.all(
                          color: const Color(
                              0xFFF1F1F2), // Adjust border color as needed
                          width: 2, // Adjust border width as needed
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Texas",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xffABAFB1),
                                fontFamily: 'SatoshiMedium',
                                height: 1.1,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down_rounded,
                                color: Color(0xffABAFB1))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
