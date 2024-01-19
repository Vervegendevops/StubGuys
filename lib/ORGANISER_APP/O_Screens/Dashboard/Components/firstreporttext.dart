import 'package:flutter/material.dart';

class MyClickableText extends StatelessWidget {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'This is the bottom sheet content.',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Reports for",
            style: TextStyle(
              color: Color(0xFF201335),
              fontSize: 16,
              fontFamily: 'SatoshiBold',
              height: 1.1,
            ),
          ),
          GestureDetector(
            onTap: () {
              _showBottomSheet(context);
            },
            child: const Text(
              " Stubguys Organiser",
              style: TextStyle(
                color: Color(0xFF8DC73F),
                fontSize: 16,
                fontFamily: 'SatoshiBold',
                height: 1.1,
              ),
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Color(0xFF8DC73F),
          )
        ],
      ),
    );
  }
}
