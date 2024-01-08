import 'package:flutter/material.dart';
import 'package:stub_guys/Screens/MyTickets/Components/ticketduration.dart';
import 'package:stub_guys/Screens/MyTickets/ShowQr.dart';

class MyTickets extends StatefulWidget {
  const MyTickets({Key? key}) : super(key: key);

  @override
  State<MyTickets> createState() => _MyTicketsState();
}

class _MyTicketsState extends State<MyTickets> {
  final int numberofevents = 5;
  String _selectedButton = 'Button 1';

  void _showqr() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Set this property to true
      backgroundColor:
          Colors.transparent, // Set the background color (optional)
      builder: (BuildContext context) {
        return ShowQR(); // Replace with your filter widget
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Tickets",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 34,
                    fontFamily: 'SatoshiMedium',
                    height: 1.1,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                ticketduration(
                  onButtonSelected: _handleButtonSelection,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "${numberofevents} events",
              style: const TextStyle(
                color: Color(0xFF201335),
                fontSize: 16,
                fontFamily: 'SatoshiBold',
                height: 1.1,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            _selectedButton == 'Button 1'
                ? ContainerSlider(
                    containerCount: numberofevents, showQRFunction: _showqr)
                : Container(),
          ],
        ),
      ),
    );
  }

  void _handleButtonSelection(String buttonValue) {
    setState(() {
      _selectedButton = buttonValue;
    });
  }
}

class ContainerSlider extends StatelessWidget {
  final int containerCount;
  final VoidCallback showQRFunction;

  ContainerSlider({required this.containerCount, required this.showQRFunction});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          containerCount,
          (index) =>
              ContainerItem(index: index, showQRFunction: showQRFunction),
        ),
      ),
    );
  }
}

class ContainerItem extends StatelessWidget {
  final int index;
  final VoidCallback showQRFunction;

  ContainerItem({required this.index, required this.showQRFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(30.0),
        ),
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.58,
        margin: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(
                      "Assets/Images/Components/browseeventsexample3.png"),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 15.0,
                      top: 20.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Show QR Code
                        GestureDetector(
                          onTap: showQRFunction,
                          child: Container(
                            width: 106,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xFF8DC73F),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: const Center(
                              child: Text(
                                "Show QR Code",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'SatoshiMedium',
                                  height: 1.1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Expanded(child: Container()),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFDEFBB8),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Stubguys Launch 2023",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 18,
                            fontFamily: 'SatoshiMedium',
                            height: 1.1,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.035,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "November 1",
                                    style: TextStyle(
                                      color: Color(0xFF201335),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  Text(
                                    "Date",
                                    style: TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 12,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                            ),
                            const SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "6 PM",
                                    style: TextStyle(
                                      color: Color(0xFF201335),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  Text(
                                    "Time",
                                    style: TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 12,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "2",
                                    style: TextStyle(
                                      color: Color(0xFF201335),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  Text(
                                    "Tickets",
                                    style: TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 12,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                            ),
                            const SizedBox(
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "General Admission",
                                    style: TextStyle(
                                      color: Color(0xFF201335),
                                      fontSize: 14,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  Text(
                                    "Type",
                                    style: TextStyle(
                                      color: Color(0xFF696D61),
                                      fontSize: 12,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        const SizedBox(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "STUBG019200399012",
                                style: TextStyle(
                                  color: Color(0xFF201335),
                                  fontSize: 14,
                                  fontFamily: 'SatoshiMedium',
                                ),
                              ),
                              Text(
                                "Ticket #",
                                style: TextStyle(
                                  color: Color(0xFF696D61),
                                  fontSize: 12,
                                  fontFamily: 'SatoshiMedium',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
