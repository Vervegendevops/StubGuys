import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WithdrawSuccess extends StatelessWidget {
  const WithdrawSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
       backgroundColor: Color(0xffdefbb8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height*0.29,),
            Center(child: SvgPicture.asset("Assets/Images/Components/Flags/tick.svg",
            height: 182,width: 182,)),
            SizedBox(height: mQuery.size.height*0.007,),
            Text("Withdraw Successful",style: TextStyle(
              fontSize: 36,
              fontFamily: 'SatoshiBold',
              color: Color(0xff201335)
            ),),
            SizedBox(height: mQuery.size.height*0.007,),
            Text("Transfer was completed.",style: TextStyle(
              fontSize: 16
            ),),
            SizedBox(height: mQuery.size.height*0.21,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: mQuery.size.height*0.055,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff201335)
                ),
                child: Center(
                  child: Text("Okay, got it",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'SatoshiMedium'
                  ),),
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.015,),
            Text("Download receipt",style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'SatoshiMedium'
            ),)
          ],
        ),
      ),
    );
  }
}
