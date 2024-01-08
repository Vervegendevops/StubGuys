import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconTextRow extends StatelessWidget {
  final String iconData;
  final String text;

  IconTextRow({required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            SizedBox(
              width: 30,
              child: SvgPicture.asset(
                iconData,
              ),
            ),
            SizedBox(width: 23.0),
            Text(
              text,
              style: TextStyle(
                color: Color(0xFF201335),
                fontSize: 16,
                fontFamily: 'SatoshiMedium',
                height: 1.1,
              ),
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: Color(0xFF545454), // Adjust the color as needed
          size: 20.0,
        ),
      ],
    );
  }
}

class IconTextRowSwitch extends StatefulWidget {
  final String iconData;
  final String text;

  IconTextRowSwitch({required this.iconData, required this.text});

  @override
  _IconTextRowSwitchState createState() => _IconTextRowSwitchState();
}

class _IconTextRowSwitchState extends State<IconTextRowSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: 2.0),
            SizedBox(
              width: 30,
              child: SvgPicture.asset(
                widget.iconData,
              ),
            ),
            SizedBox(width: 20.0),
            Text(
              widget.text,
              style: const TextStyle(
                color: Color(0xFF201335),
                fontSize: 16,
                fontFamily: 'SatoshiMedium',
              ),
            ),
          ],
        ),
        Spacer(),
        SizedBox(
          child: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeColor: Colors.green, // Set your preferred active color
            activeTrackColor: Colors.green
                .withOpacity(0.5), // Set your preferred active track color
            inactiveThumbColor:
                Colors.white, // Set your preferred inactive thumb color
            inactiveTrackColor: Color(0xFFD9D9D9)
                .withOpacity(0.5), // Set your preferred inactive track color
            materialTapTargetSize:
                MaterialTapTargetSize.shrinkWrap, // Remove padding
          ),
        ),
      ],
    );
  }
}
