import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/ManageOrders/Components/orderssampledata.dart';

class ManageOrders extends StatefulWidget {
  const ManageOrders({super.key});

  @override
  State<ManageOrders> createState() => _ManageOrdersState();
}

class _ManageOrdersState extends State<ManageOrders> {
  TextEditingController searchController = TextEditingController();
  String selectedOption = '';

  @override
  void initState() {
    super.initState();
    selectedOption = 'Option 1'; // Set the first option as selected by default
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: const Text(
                    "Manage\nOrders",
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 40,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: SvgPicture.asset(
                        'Assets/ORGANISER_APP/Icons/Dashboard/bell.svg', // Replace with your SVG file path
                      ),
                    ),
                    Positioned(
                      right: 1,
                      child: Container(
                        width: 17, // Adjust the width as needed
                        height: 17, // Adjust the height as needed
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF8DC73F), // Set the circle color
                        ),
                        child: const Center(
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: Colors.white, // Set the text color
                              fontSize: 10, // Adjust the font size as needed
                              fontWeight: FontWeight.bold,
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
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomTextField(
                    searchController, "Search", Icons.search),
                Container(
                  width: 114.0,
                  height: MediaQuery.of(context).size.height * 0.060,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9F9F9),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.menu_sharp,
                          size: 14,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          "Filter by",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 16,
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Text(
              "Showing 1 of 795 orders",
              style: TextStyle(
                color: Color(0xFF201335),
                fontSize: 16,
                fontFamily: 'SatoshiRegular',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOption = 'Option 1';
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Orders',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: selectedOption == 'Option 1'
                                    ? 'SatoshiBold'
                                    : 'SatoshiRegular',
                                color: selectedOption == 'Option 1'
                                    ? const Color(0xFF8DC73F) // Selected color
                                    : const Color(0xFF696D61),
                              ),
                            ),
                            selectedOption == 'Option 1'
                                ? Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Container(
                                      height: 2.0,
                                      width: 150.0,
                                      color: const Color(0xFF8DC73F),
                                    ),
                                  )
                                : Container(
                                    height: 2.0,
                                    width: 150.0,
                                  ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOption = 'Option 2';
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Refund Requests',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: selectedOption == 'Option 2'
                                    ? 'SatoshiBold'
                                    : 'SatoshiRegular',
                                color: selectedOption == 'Option 2'
                                    ? const Color(0xFF8DC73F) // Selected color
                                    : const Color(0xFF696D61),
                              ),
                            ),
                            selectedOption == 'Option 2'
                                ? Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Container(
                                      height: 2.0,
                                      width: 150.0,
                                      color: const Color(0xFF8DC73F),
                                    ),
                                  )
                                : Container(
                                    height: 2.0,
                                    width: 150.0,
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  selectedOption.isNotEmpty
                      ? Column(
                          children: [
                            const Text(
                              'Selected Option:',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            Text(
                              selectedOption,
                              style: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Add additional content based on the selected option
                            // For example, you can show different widgets or data here
                          ],
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
            // Scrollable ListView.builder
            Expanded(
              child: ListView.builder(
                itemCount:
                    transactionData.length, // Adjust the item count as needed
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                            width: 38.0,
                            height: 38.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  transactionData[index]['status'] == 'outgoing'
                                      ? const Color(0xFFECFFD2)
                                      : const Color(0xFFFFD2D2),
                            ),
                            child: Center(
                              child:
                                  transactionData[index]['status'] == 'outgoing'
                                      ? SvgPicture.asset(
                                          'Assets/ORGANISER_APP/Icons/Orders/outgoing.svg',
                                          width: 16.0,
                                          height: 16.0,
                                        )
                                      : SvgPicture.asset(
                                          'Assets/ORGANISER_APP/Icons/Orders/incoming.svg',
                                          width: 16.0,
                                          height: 16.0,
                                        ),
                            )),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transactionData[index]['name']!,
                              style: const TextStyle(
                                color: Color(0xFF696D61),
                                fontSize: 16,
                                fontFamily: 'SatoshiBold',
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  transactionData[index]['details']!,
                                  style: const TextStyle(
                                    color: Color(0xFF696D61),
                                    fontSize: 10,
                                    fontFamily: 'SatoshiMedium',
                                  ),
                                ),
                                Text(
                                  transactionData[index]['timestamp']!,
                                  style: const TextStyle(
                                    color: Color(0xFF696D61),
                                    fontSize: 10,
                                    fontFamily: 'SatoshiMedium',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text("Hello")
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UiHelper {
  static CustomTextField(
      TextEditingController controller, String text, IconData icon) {
    return Builder(
      builder: (context) {
        var mQuery = MediaQuery.of(context);
        return SizedBox(
          height: mQuery.size.height * 0.060,
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFF1F1F2),
                  width: 1.0, // Unfocused border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFF1F1F2),
                  width: 2.0, // Focused border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFF1F1F2),
                  width: 1.0, // Unfocused border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: text,
              hintStyle: const TextStyle(color: Color(0xFFF1F1F2)),
              prefixIcon: Icon(
                icon,
                color: const Color(0xFFF1F1F2),
              ),
            ),
          ),
        );
      },
    );
  }
}
