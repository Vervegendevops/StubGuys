import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class checklist extends StatefulWidget {
  const checklist({super.key});

  @override
  State<checklist> createState() => _checklistState();
}

class _checklistState extends State<checklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            const SizedBox(
              height: 70,
            ),
            const Row(
              children: [
                Text(
                  "Get Started",
                  style: TextStyle(
                    fontFamily: "Satoshi",
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff201335),
                    height: 45 / 40,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  "Complete your account setup.",
                  style: TextStyle(
                    fontFamily: "Satoshi",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000),
                    height: 22 / 16,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(children: [
                  Container(
                    height: 86,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFF1F1F2)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 46,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child: SvgPicture.asset(
                                    "Assets/icons/greenTick.svg"),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 243.52,
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Complete Organiser Profile Setup',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.5,
                                        fontFamily: 'Satoshi',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      'Done',
                                      style: TextStyle(
                                        color: Color(0xFF8DC73F),
                                        fontSize: 11,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 28.45,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color(0xff545454),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 86,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFF1F1F2)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 46,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child:
                                    SvgPicture.asset("Assets/icons/empty.svg"),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 243.52,
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Verify Organiser Account',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.5,
                                        fontFamily: 'Satoshi',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      'Pending',
                                      style: TextStyle(
                                        color: Color(0xFFE71D36),
                                        fontSize: 11,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 28.45,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color(0xff545454),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 86,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFF1F1F2)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 46,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child:
                                    SvgPicture.asset("Assets/icons/empty.svg"),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 243.52,
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Add Payout and Tax Info',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.5,
                                        fontFamily: 'Satoshi',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      'Pending',
                                      style: TextStyle(
                                        color: Color(0xFFE71D36),
                                        fontSize: 11,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 28.45,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color(0xff545454),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 86,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFF1F1F2)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 46,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child:
                                    SvgPicture.asset("Assets/icons/empty.svg"),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 243.52,
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Create PIN',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.5,
                                        fontFamily: 'Satoshi',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      'Pending',
                                      style: TextStyle(
                                        color: Color(0xFFE71D36),
                                        fontSize: 11,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 28.45,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color(0xff545454),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 86,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFF1F1F2)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 46,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child:
                                    SvgPicture.asset("Assets/icons/empty.svg"),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 243.52,
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Create First Event',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.5,
                                        fontFamily: 'Satoshi',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    Text(
                                      'Pending',
                                      style: TextStyle(
                                        color: Color(0xFFE71D36),
                                        fontSize: 11,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 28.45,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color(0xff545454),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
