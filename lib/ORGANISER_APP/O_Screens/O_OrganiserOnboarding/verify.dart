import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class verifyOrd extends StatefulWidget {
  const verifyOrd({super.key});

  @override
  State<verifyOrd> createState() => _verifyOrdState();
}

class _verifyOrdState extends State<verifyOrd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close),
        title: const Text(
          'Verification',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF201335),
            fontSize: 20,
            fontFamily: 'Satoshi',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 30,
            ),
            SvgPicture.asset("Assets/icons/verify.svg"),
            SizedBox(
              height: 20,
            ),
            Text(
              'Build trust by verifying your identity',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF201335),
                fontSize: 24,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 389,
              height: 234,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 389,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Container(
                              width: 30.84,
                              height: 30.84,
                              child: SvgPicture.asset("Assets/icons/tick.svg")),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Verify your identity with CLEAR and add it\nto your StubGuys profile.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 5.50,
                                child: Container(
                                    width: 37.50,
                                    height: 32,
                                    child: SvgPicture.asset(
                                        "Assets/icons/pro.svg")),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: 346,
                          child: Text(
                            'You’ll need a valid government-issued ID.                 Stubguys may display the issuing country of your ID on your profile.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 389,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 33,
                          height: 33,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 5.50,
                                child: Container(
                                    width: 32,
                                    height: 37.50,
                                    child: SvgPicture.asset(
                                        "Assets/icons/dem.svg")),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          width: 346,
                          child: Text(
                            'The name on your ID will need to match the name on your StubGuys profile.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
