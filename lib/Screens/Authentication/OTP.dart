import 'package:stub_guys/Screens/PickInterest/picInterest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

const mailId = "test@gmail.com";
bool isOtp = false;

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0, // Set elevation to 0 for a flat app bar
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              // Navigate to another page when the back arrow is pressed
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => AnotherPage(),
              // ));
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'We sent you a 4-digit code',
                style: TextStyle(
                  color: Color(0xFF201335),
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'Enter the 4-digit code we sent to ${mailId}',
                style: TextStyle(
                  color: Color(0xFF201335),
                  fontSize: 13.0,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Center(
                child: Text(
                  '02:27',
                  style: TextStyle(
                    color: Color(0xFF8DC73F),
                    fontSize: 13.0,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              OtpTextField(
                numberOfFields: 4,
                showFieldAsBox: true,
                fieldWidth: 70,
                focusedBorderColor: Color.fromARGB(255, 0, 128, 0),
                enabledBorderColor: const Color.fromARGB(255, 224, 224, 224),
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                onSubmit: (String verificationCode) {
                  isOtp = true;
                },
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const picInterest()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: const Size(390.0, 55.0),
                  primary: const Color(0xFF8DC73F),
                ),
                child: Container(
                  width: 390.0,
                  height: 55.0,
                  alignment: Alignment.center,
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'SatoshiBold',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "Didn't receive the OTP? Resend",
                  style: const TextStyle(
                    fontFamily: "Satoshi",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8dc73f),
                    height: 38 / 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ));
  }
}
