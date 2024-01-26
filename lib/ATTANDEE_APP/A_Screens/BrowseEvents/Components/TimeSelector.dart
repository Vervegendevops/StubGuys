import 'package:flutter/material.dart';

class TimeSelector extends StatefulWidget {
  const TimeSelector({Key? key}) : super(key: key);

  @override
  State<TimeSelector> createState() => _TimeSelectorState();
}

class _TimeSelectorState extends State<TimeSelector> {
  TextEditingController _selectedButtonController = TextEditingController();
  String _selectedButton = 'Button 1';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: buildElevatedButton('Button 1', 'Today',MediaQuery.of(context).size.width*0.22)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.032,
            ),
            Expanded(child: buildElevatedButton('Button 2', 'This Week',MediaQuery.of(context).size.width*0.25)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.032,
            ),
            Expanded(child: buildElevatedButton('Button 3', 'This Month',MediaQuery.of(context).size.width*0.25)),
          ],
        ),
      );
  }

  Widget buildElevatedButton(String buttonValue, String buttonText,double width) {
    return ElevatedButton(
      onPressed: () {
        _handleButtonSelection(buttonValue);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return _selectedButton == buttonValue
                ? const Color(0xFFDEFBB8)
                : Colors.white;
          },
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
              (Set<MaterialState> states) {
            if (_selectedButton != buttonValue) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(
                  color: Color(0xFFF1F1F2),
                ),
              );
            } else {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              );
            }
          },
        ),
        elevation: MaterialStateProperty.all(0),
      ),
      child: Container(
        width: width,
        height: 50,
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontFamily: 'SatoshiMedium',
            ),
          ),
        ),
      ),
    );
  }

  void _handleButtonSelection(String buttonValue) {
    setState(() {
      _selectedButton = buttonValue;
      _selectedButtonController.text = buttonValue;
    });
  }
}
