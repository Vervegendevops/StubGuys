import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WithdrawAmount extends StatefulWidget {
  const WithdrawAmount({Key? key});

  @override
  State<WithdrawAmount> createState() => _WithdrawAmountState();
}

class _WithdrawAmountState extends State<WithdrawAmount> {
  TextEditingController accountnumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: mQuery.size.height * 0.17,
              color: const Color(0xffDEFBB8),
              child: Column(
                children: [
                  SizedBox(
                    height: mQuery.size.height * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                            "Assets/ORGANISER_APP/Icons/Orders/formkit_arrowleft.svg"),
                        const Text(
                          "Withdraw",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff201335),
                            fontFamily: 'SatoshiRegular',
                            height: 1.1,
                          ),
                        ),
                        SvgPicture.asset(
                            "Assets/Images/Components/Profile/p_gethelp.svg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: mQuery.size.height * 0.02),
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Bank Name", style: TextStyle(
                      fontSize: 12
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: mQuery.size.height*0.016,),
            // Add some spacing
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xffF1F1F2),
                  width: 1
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Capital One",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffABAFB1),
                      fontFamily: 'SatoshiRegular',
                    ),
                  ),
                  SvgPicture.asset("Assets/ORGANISER_APP/Icons/Orders/dropdown.svg"),
                ],
              ),
            ),
        
            SizedBox(height: mQuery.size.height * 0.02),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Account number", style: TextStyle(
                      fontSize: 12
                  ),),
                ),
              ],
            ),
        
            SizedBox(height: mQuery.size.height*0.016,),
        
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffF1F1F2),
                )
              ),
              child: TextField(
                controller: accountnumberController,
                decoration: InputDecoration(
                  hintText: "******20203",
                  hintStyle: TextStyle(
                    fontSize: 13,
                    color: Color(0xffABAFB1)
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Color(0xffF1F1F2),
                          width: 1
                      )
                  ),
                )
              )
            ),
        
            SizedBox(height: mQuery.size.height*0.012,),
            Text("Switch Bank Account", style: TextStyle(
              color: Color(0xff8DC73F),
              fontSize: 13,
              fontFamily: 'SatoshiMedium',
            ),),
        
            SizedBox(height: mQuery.size.height*0.03,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Balance (\$)    1,750.00",style: TextStyle(
                    fontSize: 13,
                      color: Color(0xff696D61)
                  ),)
                ],
              ),
            ),
        
            SizedBox(height: mQuery.size.height*0.015,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Withdrawable Balance (\$)    1,750.00",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff696D61)
                  ),)
                ],
              ),
            ),
            
            SizedBox(height: mQuery.size.height*0.03,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text("Withdrawal Amount", style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff5E6366),
                  ),),
                ],
              ),
            ),
        
            SizedBox(height: mQuery.size.height*0.016,),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffF1F1F2),
                    )
                ),
                child: TextField(
                    decoration: InputDecoration(
                      hintText: "Amount (\$)                                               min. 50.00",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: Color(0xffABAFB1)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              color: Color(0xffF1F1F2),
                              width: 1
                          )
                      ),
                    ),
                )
            ),

            SizedBox(height: mQuery.size.height*0.025,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: mQuery.size.height * 0.06,
              decoration: BoxDecoration(
                  color: Color(0xff201335),
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                child: Text(
                  "Withdraw",
                  style: TextStyle(
                      color: Color(0xffF1F1F2),
                      fontFamily: 'SatoshiBold',
                      fontSize: 16
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
