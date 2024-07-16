import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:health_elevation_project/Routes/routes_name.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/images_path.dart';
import '../../../Widgets/field_widget.dart';
import '../../../Widgets/header.dart';
import '../../../Widgets/submit_button.dart';
import '../../../Widgets/text_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  var formKey = GlobalKey<FormState>();

  var forgotC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar:Header().header1("", [], isIconShow: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
                text: "Forgot Password", fontSize: 20.dp,
                fontWeight: FontWeight.w700, isTextCenter: false,
                textColor: blackColor),
            SizedBox(height: 30,),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Please Write you",
                    style: TextStyle(
                        color: darkGreyColor,
                        fontSize: 16.dp,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(text: " Email ",
                          style: TextStyle(
                              color: blackColor,
                              fontSize: 16.dp,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: "to receive the confirmation code to set",
                          style: TextStyle(
                              color: darkGreyColor,
                              fontSize: 16.dp,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: " new password",
                          style: TextStyle(
                              color: blackColor,
                              fontSize: 16.dp,
                              fontWeight: FontWeight.w500)),
                    ]
                )),
            SizedBox(height: 30,),
            Form(
              key: formKey,
              child: InputField(
                inputController: forgotC,
                prefixIcon: Container(
                    padding: EdgeInsets.all(24),
                    height: 9.h,
                    child: Image.asset(ImagesPath.emailIcon)),
                hintText: "Email",
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: SubmitButton(
                  radius: 15,
                  width: 70.w,
                  title: "Confirm Email",
                  press: (){
                    Get.toNamed(RoutesName.otpVerificationScreen);
                    // if(formKey.currentState!.validate()){
                    //    Get.to(()=>NewPasswordScreen());
                    //
                    // }
                  }
              ),
            ),

          ],
        ),
      ),
    );
  }
}
