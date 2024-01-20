import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: mQuery.size.height*0.17,
              color: Color(0xffDEFBB8),
              child: Column(
                children: [
                  SizedBox(height: mQuery.size.height*0.1,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/arrowleft.svg"),
                        SizedBox(width: mQuery.size.width*0.1,),
                        Text("Change Password",style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: mQuery.size.height*0.02,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Current Password",style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff5E6366)
                          ),),
                        ],
                      ),
                      CustomTextField(passwordController)
                    ],
                  ),

                  SizedBox(height: mQuery.size.height*0.02,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("New Password",style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff5E6366)
                          ),),
                        ],
                      ),
                      CustomTextField(passwordController),
                    ],
                  ),

                  SizedBox(height: mQuery.size.height*0.52,),

                  Container(
                    width: double.infinity,
                    height: mQuery.size.height*0.055,
                    decoration: BoxDecoration(
                        color: Color(0xff201335),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text("Change Password",style: TextStyle(
                          color: Color(0xffF1F1F2),
                          fontWeight: FontWeight.w700,
                          fontSize: 16
                      ),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

CustomTextField(TextEditingController controller)
{
  return Builder(
      builder: (context) {
        var mQuery = MediaQuery.of(context);
        return Container(
          width: double.infinity,
          height: mQuery.size.height*0.052,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        color: Color(0xffF1F1F2),
                        width: 1
                    )
                )
            ),
          ),
        );
      }
  );
}
