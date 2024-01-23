import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddBank extends StatefulWidget {
  const AddBank({Key? key});

  @override
  State<AddBank> createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {
  String selectedState = "Texas";
  String selectedAccountType = "Checking";
  String selectedBankName = "Bank of America";
  TextEditingController routingNumberController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController confirmAccountNumberController =
      TextEditingController();
  TextEditingController accountNickNameController = TextEditingController();

  FocusNode routingNumberFocusNode = FocusNode();
  FocusNode accountNumberFocusNode = FocusNode();
  FocusNode confirmAccountNumberFocusNode = FocusNode();
  FocusNode accountNickNameFocusNode = FocusNode();

  @override
  void dispose() {
    routingNumberFocusNode.dispose();
    accountNumberFocusNode.dispose();
    confirmAccountNumberFocusNode.dispose();
    accountNickNameFocusNode.dispose();
    super.dispose();
  }

  void _unfocusAll() {
    routingNumberFocusNode.unfocus();
    accountNumberFocusNode.unfocus();
    confirmAccountNumberFocusNode.unfocus();
    accountNickNameFocusNode.unfocus();
  }
  

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return GestureDetector(
      onTap: _unfocusAll,
      child: Scaffold(
          body: SingleChildScrollView(
              child: Column(children: [
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
                  children: [
                    SvgPicture.asset(
                      "Assets/ORGANISER_APP/Icons/Orders/formkit_arrowleft.svg",
                    ),
                    SizedBox(width: mQuery.size.width * 0.1),
                    Text(
                      "Add Bank Account",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff201335),
                        fontFamily: 'SatoshiBold',
                        height: 1.1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: mQuery.size.height * 0.02),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "State",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff5E6366),
                  fontFamily: 'SatoshiMedium',
                  height: 1.1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: mQuery.size.height * 0.016,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xffF1F1F2), width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton<String>(
                value: selectedState,
                icon: SvgPicture.asset(
                  "Assets/ORGANISER_APP/Icons/Orders/dropdown.svg",
                ),
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffABAFB1),
                  fontFamily: 'SatoshiRegular',
                ),
                underline: Container(
                  height: 0,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedState = newValue!;
                  });
                },
                items: <String>['Texas', 'California', 'New York', 'Florida']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        SizedBox(height: mQuery.size.height * 0.02),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "Bank Account Type",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff5E6366),
                  fontFamily: 'SatoshiMedium',
                  height: 1.1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: mQuery.size.height * 0.016,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xffF1F1F2), width: 1),
          ),
          child: DropdownButton<String>(
            value: selectedAccountType,
            icon: SvgPicture.asset(
              "Assets/ORGANISER_APP/Icons/Orders/dropdown.svg",
            ),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xffABAFB1),
              fontFamily: 'SatoshiRegular',
            ),
            underline: Container(
              height: 0,
            ),
            onChanged: (String? newValue) {
              setState(() {
                selectedAccountType = newValue!;
              });
            },
            items: <String>['Checking', 'Savings', 'Business']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: mQuery.size.height * 0.02),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "Bank Name",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff5E6366),
                  fontFamily: 'SatoshiMedium',
                  height: 1.1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: mQuery.size.height * 0.016),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xffF1F1F2), width: 1),
          ),
          child: DropdownButton<String>(
            value: selectedBankName,
            icon: SvgPicture.asset(
              "Assets/ORGANISER_APP/Icons/Orders/dropdown.svg",
            ),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xffABAFB1),
              fontFamily: 'SatoshiRegular',
            ),
            underline: Container(
              height: 0,
            ),
            onChanged: (String? newValue) {
              setState(() {
                selectedBankName = newValue!;
              });
            },
            items: <String>['Bank of America', 'Wells Fargo', 'Chase', 'CitiBank']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: mQuery.size.height * 0.02),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "Routing Number",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff5E6366),
                  fontFamily: 'SatoshiMedium',
                  height: 1.1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: mQuery.size.height * 0.016),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: routingNumberFocusNode.hasFocus
                  ? Colors.grey
                  : const Color(0xffF1F1F2),
              width: 1,
            ),
          ),
          child: TextField(
            controller: routingNumberController,
            focusNode: routingNumberFocusNode,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Color(0xffF1F1F2)
                )
              ),
              hintText: "XXXXXXXXXX",
              hintStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xffABAFB1),
                fontFamily: 'SatoshiRegular',
              ),
              contentPadding: EdgeInsets.only(left: 16),
              border: InputBorder.none
            ),
          ),
        ),
        SizedBox(height: mQuery.size.height * 0.02),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "Account Number",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff5E6366),
                  fontFamily: 'SatoshiMedium',
                  height: 1.1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: mQuery.size.height * 0.016),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: accountNumberFocusNode.hasFocus
                  ? Colors.grey
                  : const Color(0xffF1F1F2),
              width: 1,
            ),
          ),
          child: TextField(
            controller: accountNumberController,
            focusNode: accountNumberFocusNode,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              hintText: "XXXXXXXXXX",
              hintStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xffABAFB1),
                fontFamily: 'SatoshiRegular',
              ),
                contentPadding: EdgeInsets.only(left: 16),
                border: InputBorder.none
            ),
          ),
        ),
        SizedBox(height: mQuery.size.height * 0.02),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "Confirm Account Number",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff5E6366),
                  fontFamily: 'SatoshiMedium',
                  height: 1.1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: mQuery.size.height * 0.016),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: confirmAccountNumberFocusNode.hasFocus
                  ? Colors.grey
                  : const Color(0xffF1F1F2),
              width: 1,
            ),
          ),
          child: TextField(
            controller: confirmAccountNumberController,
            focusNode: confirmAccountNumberFocusNode,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              hintText: "XXXXXXXXXX",
              hintStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xffABAFB1),
                fontFamily: 'SatoshiRegular',
              ),
                contentPadding: EdgeInsets.only(left: 16),
                border: InputBorder.none
            ),
          ),
        ),
        SizedBox(height: mQuery.size.height * 0.02),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "Account Nickname",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff5E6366),
                  fontFamily: 'SatoshiMedium',
                  height: 1.1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: mQuery.size.height * 0.016),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: accountNickNameFocusNode.hasFocus
                  ? Colors.grey
                  : const Color(0xffF1F1F2),
              width: 1,
            ),
          ),
          child: TextField(
            controller: accountNickNameController,
            focusNode: accountNickNameFocusNode,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.grey
                  )
              ),
              hintText: "e.g My Savings Wells Fargo",
              hintStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xffABAFB1),
                fontFamily: 'SatoshiRegular',
              ),
                contentPadding: EdgeInsets.only(left: 16),
                border: InputBorder.none
            ),
          ),
        ),
        SizedBox(
          height: mQuery.size.height * 0.02,
        ),
        GestureDetector(
            onTap: () {
              // Your onTap logic here
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: mQuery.size.height * 0.06,
              decoration: BoxDecoration(
                color: const Color(0xff201335),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "Withdraw",
                  style: TextStyle(
                    color: Color(0xffF1F1F2),
                    fontFamily: 'SatoshiBold',
                    fontSize: 16,
                    height: 1.0,
                  ),
                ),
              ),
            ))
      ]
              )
          )
      ),
    );
  }
}
