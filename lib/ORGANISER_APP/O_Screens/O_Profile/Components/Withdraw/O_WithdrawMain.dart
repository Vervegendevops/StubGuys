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
              )
            ],
          ),
        ));
  }
}
