import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WithdrawMain extends StatefulWidget {
  const WithdrawMain({super.key});

  @override
  State<WithdrawMain> createState() => _WithdrawMainState();
}

class _WithdrawMainState extends State<WithdrawMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Withdraw\nFunds",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color(0xff201335),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  Stack(
                    children: [
                      SvgPicture.asset(
                        'Assets/Images/Icon/bell.svg',
                      ),
                      Positioned(
                        top:
                            -4.0, // Adjust the top value to position the container
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
                              fontSize: 10.0, // Adjust the font size as needed
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Text(
                "Available Balance",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff696D61),
                  fontFamily: 'SatoshiMedium',
                  height: 1.1,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "1750.00",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color(0xff201335),
                      fontFamily: 'SatoshiBold',
                      height: 1.1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent, // Set your desired color
                    ),
                    child: Container(
                      width: 110.0,
                      height: 47.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            16.0), // Set your desired border radius
                        color: Colors
                            .transparent, // Set your desired background color
                        border: Border.all(
                          color: const Color(
                              0xFFF1F1F2), // Set your desired border color
                          width: 1.0, // Set your desired border width
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Container(
                              width: 30.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(
                                      0xFFF1F1F2), // Set your desired border color
                                  width: 1.0, // Set your desired border width
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                              width:
                                  8.0), // Adjust the spacing between elements
                          const Text(
                            "USD",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff201335),
                              fontFamily: 'SatoshiMedium',
                              height: 1.1,
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black, // Set your desired icon color
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              const Text(
                "Update Payout details",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff8DC73F),
                  fontFamily: 'SatoshiMedium',
                  height: 1.1,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              //Withdraw Button
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.055,
                decoration: BoxDecoration(
                    color: const Color(0xff201335),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    "Withdraw",
                    style: TextStyle(
                        color: Color(0xffF1F1F2),
                        fontFamily: 'SatoshiBold',
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "RECENT WITHDRAWALS",
                    style: TextStyle(
                      color: Color(0xff696D61),
                      fontFamily: 'SatoshiRegular',
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Color(0xff8DC73F),
                        fontFamily: 'SatoshiBold',
                        fontSize: 16),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
