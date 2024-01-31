import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class addProfile extends StatefulWidget {
  const addProfile({super.key});

  @override
  State<addProfile> createState() => _addProfileState();
}

class _addProfileState extends State<addProfile> {
  @override
  int continu = 1;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color(0xff201335),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 105, left: 10, right: 10),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xff797186),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 120,
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 13),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xffffffff)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Center(
                          child: Icon(Icons.arrow_back_ios, size: 14),
                        )),
                    const Text(
                      'Add Organiser Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                    Container(
                        width: 40,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFFfFfFf)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Center(
                          child: Icon(Icons.close, size: 20),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height: 1,
                    width: double.infinity,
                    color: const Color(0xffffffff),
                    child: Stack(
                      children: [
                        continu == 1
                            ? Row(
                                children: [
                                  Container(
                                    height: 1,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    color: const Color(0xff8DC73F),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 1,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    color: const Color(0xff8DC73F),
                                  ),
                                ],
                              ),
                      ],
                    )),
              ),
              continu == 1 ? const p2() : const p3(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    continu = 1 - continu;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    // width: 388,
                    height: 53,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 34, vertical: 5),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF8DC73F),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFffffff)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 16,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          height: 0.05,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ],
    ));
  }
}

class p2 extends StatefulWidget {
  const p2({super.key});

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
      child: Container(
        height: 550,
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Text(
                'Organizer Name',
                style: TextStyle(
                  color: Color(0xFF5E6366),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffffffff)
                      .withOpacity(0.18), // Set the shadow color
                  spreadRadius: 0, // Set the spread radius
                  blurRadius: 62, // Set the blur radius
                  offset: const Offset(0, 4), // Set the shadow offset
                ),
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'StubGuys Event',
                hintStyle:
                    TextStyle(fontFamily: 'Satoshi', color: Color(0xFF696D61)),
                labelStyle: TextStyle(color: Color(0xff6E678C)),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xfff1f1f2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xFF8DC73F)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '0',
                style: TextStyle(
                  color: Color(0xFFAAAEB1),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              Text(
                '/80',
                style: TextStyle(
                  color: Color(0xFFAAAEB1),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 389,
            height: 170,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFF1F1F2)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 30,
                      height: 30,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: SvgPicture.asset("Assets/icons/camera.svg")),
                  const SizedBox(height: 9),
                  const Text(
                    'Tap to Upload \nOrganization logo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFD2D2D2),
                      fontSize: 13,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Text(
                'Country',
                style: TextStyle(
                  color: Color(0xFF5E6366),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffffffff)
                      .withOpacity(0.18), // Set the shadow color
                  spreadRadius: 0, // Set the spread radius
                  blurRadius: 62, // Set the blur radius
                  offset: const Offset(0, 4), // Set the shadow offset
                ),
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'United States',
                hintStyle:
                    TextStyle(fontFamily: 'Satoshi', color: Color(0xFF696D61)),
                labelStyle: TextStyle(color: Color(0xff6E678C)),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xfff1f1f2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xFF8DC73F)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Text(
                'Website',
                style: TextStyle(
                  color: Color(0xFF5E6366),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffffffff)
                      .withOpacity(0.18), // Set the shadow color
                  spreadRadius: 0, // Set the spread radius
                  blurRadius: 62, // Set the blur radius
                  offset: const Offset(0, 4), // Set the shadow offset
                ),
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'https://',
                hintStyle:
                    TextStyle(fontFamily: 'Satoshi', color: Color(0xFF696D61)),
                labelStyle: TextStyle(color: Color(0xff6E678C)),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xfff1f1f2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xFF8DC73F)),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class p3 extends StatefulWidget {
  const p3({super.key});

  @override
  State<p3> createState() => _p3State();
}

class _p3State extends State<p3> {
  String selectedCountry = 'Instagram';
  List<String> countries = ['Instagram', 'Facebook', 'Linkdin', 'Twitter'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
      child: Container(
        height: 550,
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Text(
                'Describe your organization',
                style: TextStyle(
                  color: Color(0xFF5E6366),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffffffff)
                      .withOpacity(0.18), // Set the shadow color
                  spreadRadius: 0, // Set the spread radius
                  blurRadius: 62, // Set the blur radius
                  offset: const Offset(0, 4), // Set the shadow offset
                ),
              ],
            ),
            child: const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText:
                    'StubGuys event publishes events organized by StubGuys Inc.',
                hintStyle: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFAAAEB1),
                ),
                labelStyle: TextStyle(color: Color(0xff6E678C)),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xfff1f1f2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xFF8DC73F)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '70',
                style: TextStyle(
                  color: Color(0xFFAAAEB1),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              Text(
                '/150',
                style: TextStyle(
                  color: Color(0xFFAAAEB1),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Text(
                'Social Profiles',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffffffff).withOpacity(0.18),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: DropdownButtonFormField<String>(
              value: selectedCountry,
              style: const TextStyle(color: Color(0xFF696D61)),
              focusColor: const Color(0xffffffff),
              icon: const Icon(Icons.keyboard_arrow_down),
              onChanged: (newValue) {
                setState(() {
                  selectedCountry = newValue!;
                });
              },
              items: countries.map((country) {
                return DropdownMenuItem(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              decoration: const InputDecoration(
                hintText: 'Select a Social Media',
                hintStyle:
                    TextStyle(fontFamily: 'Satoshi', color: Color(0xFF696D61)),
                labelStyle: TextStyle(color: Color(0xfff1f1f2)),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xfff1f1f2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xfff1f1f2)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffffffff)
                      .withOpacity(0.18), // Set the shadow color
                  spreadRadius: 0, // Set the spread radius
                  blurRadius: 62, // Set the blur radius
                  offset: const Offset(0, 4), // Set the shadow offset
                ),
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'https://',
                hintStyle: TextStyle(
                    fontFamily: 'Satoshi',
                    color: Color(0xFF696D61),
                    fontSize: 13),
                labelStyle: TextStyle(color: Color(0xff6E678C)),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xfff1f1f2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Color(0xFF8DC73F)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '+ Add more',
                style: TextStyle(
                  color: Color(0xFF8DC73F),
                  fontSize: 16,
                  fontFamily: 'Satoshi',
                  fontWeight: FontWeight.w400,
                  height: 0.05,
                ),
              ),
            ],
          )
        ]),
      ),
    );
    ;
  }
}
