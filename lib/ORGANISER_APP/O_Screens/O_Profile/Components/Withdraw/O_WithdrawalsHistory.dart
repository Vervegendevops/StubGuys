import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WithdrawHistory extends StatefulWidget {
  const WithdrawHistory({super.key});

  @override
  State<WithdrawHistory> createState() => _WithdrawHistoryState();
}

class _WithdrawHistoryState extends State<WithdrawHistory> {
  void _showState(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Wrap(
            children: [
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.62,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: mQuery.size.height*0.05,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Filter by",style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff201335),
                            fontFamily: 'SatoshiBold'
                        ),),
                        GestureDetector(
                            onTap: ()
                            {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.close,color: Color(0xff201335),))
                      ],
                    ),
                    SizedBox(height: mQuery.size.height*0.025,),
                    Text("Currency",style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff696D61),
                        fontFamily: 'SatoshiRegular'
                    ),),

                    SizedBox(height: mQuery.size.height*0.018,),
                    // ROW 1
                    Row(
                      children: [
                        Container(
                          width: mQuery.size.width*0.22,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey
                              ),
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Center(
                            child: Text("Show all",style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'SatoshiMedium'
                            ),),
                          ),
                        ),
                        SizedBox(width: mQuery.size.width*0.05,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          width: mQuery.size.width*0.25,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: Colors.grey
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset("Assets/Images/Components/Flags/united states.svg"),
                              Center(
                                child: Text("USD",style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'SatoshiMedium'
                                ),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: mQuery.size.width*0.05,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          width: mQuery.size.width*0.25,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey
                              ),
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset("Assets/Images/Components/Flags/english.svg"),
                              Center(
                                child: Text("GBP",style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'SatoshiMedium'
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: mQuery.size.height*0.018,),

                    // ROW 2
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          width: mQuery.size.width*0.25,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: Colors.grey
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("Assets/Images/Components/Flags/eur.png"),
                              Center(
                                child: Text("EUR",style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'SatoshiMedium'
                                ),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: mQuery.size.width*0.05,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          width: mQuery.size.width*0.25,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: Colors.grey
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("Assets/Images/Components/Flags/jpy.png"),
                              Center(
                                child: Text("JPY",style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'SatoshiMedium'
                                ),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: mQuery.size.width*0.05,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          width: mQuery.size.width*0.25,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey
                              ),
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("Assets/Images/Components/Flags/cny.png"),
                              Center(
                                child: Text("CNY",style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'SatoshiMedium'
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: mQuery.size.height*0.018,),

                    // ROW 3
                    Row (
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          width: mQuery.size.width*0.25,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: Colors.grey
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("Assets/Images/Components/Flags/zar.png"),
                              Center(
                                child: Text("ZAR",style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'SatoshiMedium'
                                ),),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: mQuery.size.width*0.05,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          width: mQuery.size.width*0.25,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: Colors.grey
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("Assets/Images/Components/Flags/cad.png"),
                              Center(
                                child: Text("CAD",style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'SatoshiMedium'
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: mQuery.size.height*0.02,),

                    Text("Date",style: TextStyle(
                        color: Color(0xff696D61),
                        fontSize: 13,
                        fontFamily: 'SatoshiMedium'
                    ),),
                    SizedBox(height: mQuery.size.height*0.011,),

                    Container(
                      height: mQuery.size.height * 0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: mQuery.size.width * 0.14),
                          Text(
                            "From",
                            style: TextStyle(
                              color: Color(0xffD9D9D9),
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: mQuery.size.width * 0.02),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => _selectDate(context),
                              child: Text("DD/MM/YY",
                                style: TextStyle(fontSize: 13, color: Color(0xff696D61)),
                              ),
                            ),
                          ),
                          SizedBox(width: mQuery.size.width * 0.13),
                          Text(
                            "To",
                            style: TextStyle(
                              color: Color(0xffD9D9D9),
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: mQuery.size.width * 0.02),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => _selectDate(context),
                              child: Text("DD/MM/YY",
                                style: TextStyle(fontSize: 13, color: Color(0xff696D61)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                    SizedBox(height: mQuery.size.height*0.04,),
                    Container(
                      width: double.infinity,
                      height: mQuery.size.height*0.06,
                      decoration: BoxDecoration(
                          color: Color(0xff201335),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text("Apply",style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xffF1F1F2)
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            ]
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: mQuery.size.height*0.06,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Withdrawals",style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xff201335)
                  ),),
                  SvgPicture.asset("Assets/Images/Icon/bell.svg")
                ],
              ),
              SizedBox(height: mQuery.size.height*0.026,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: ()
                    {
                      _showState(context);
                    },
                    child: Container(
                      width: mQuery.size.width*0.28,
                      height: mQuery.size.height*0.07,
                      decoration: BoxDecoration(
                          color: Color(0xffF9F9F9),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(child: SvgPicture.asset("Assets/Images/Icon/dropdown.svg")),
                            Center(child: Text("Filter by",style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'SatoshiMedium'
                            ),),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: mQuery.size.height*0.01,),

              Container(
                  width: double.infinity,
                  height: mQuery.size.height*0.08,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("Assets/Images/Components/Flags/rightarrow.svg"),
                          SizedBox(width: mQuery.size.width*0.03,),
                          Text("Cavil Uduak Inwang",style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff696D61),
                              fontFamily: 'SatoshiBold'
                          ),),
                          SizedBox(width: mQuery.size.width*0.15,),
                          Text("\$1,500.85",style: TextStyle(
                              color: Color(0xff201335),
                              fontSize: 16,
                              fontFamily: 'SatoshiBold'
                          ),)
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Text("Bank account  • Oct 25, 2023",style: TextStyle(
                                color: Color(0xffBFBFBF),
                                fontSize: 10
                            ),),
                          ],
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        )
    );
  }
}

void _selectDate(BuildContext context) async {
  DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2101),
  );

  if (pickedDate != null) {
    // Do something with the selected date, like updating the TextField
    print("Selected date: $pickedDate");
  }
}
