import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../../../Constants/colors.dart';
import '../../../Routes/routes_name.dart';
import '../../../Widgets/header.dart';
import '../../../Widgets/submit_button.dart';
import '../../../Widgets/text_widget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: true,
      appBar: Header().header1("", [], isIconShow: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10.h,),
          TextWidget(text: "Enter the Code", fontSize: 24.dp,
              fontWeight: FontWeight.w600, isTextCenter: false,
              textColor: blackColor),
          SizedBox(height: 30,),
          TextWidget(text: "We have emailed you an activation code",
              fontSize: 16.dp, fontWeight: FontWeight.w500,
              isTextCenter: false, textColor: darkGreyColor),
          SizedBox(height: 30,),
          Center(
            child: Pinput(
              onTapOutside: (value){
                FocusScope.of(context).unfocus();
              },
              length: 4,
              onCompleted: (pin) {
                // if(otpP.code == int.parse(pin)){
                //   signUpProvider.signUp();
                // }else{
                //   Get.snackbar("error", "invalid OTP");
                // }
              },
              defaultPinTheme: PinTheme(
                width: 20.w,
                height: 56,
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                  color: lightGreyColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: lightGreyColor),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Consumer(builder: (context, value, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: TextWidget(
                      text: "Code will be send in 1:30",
                      fontSize: 16.dp, fontWeight: FontWeight.w500,
                      isTextCenter: false, textColor: darkGreyColor),
                ),
              ],
            );
          },),

          SizedBox(height: 30,),
          SubmitButton(
              radius: 15,
              width: 70.w,
              title: "Confirm Code",
              press: (){
                Get.toNamed(RoutesName.newPassword);
                // if(formKey.currentState!.validate()){
                //    Get.to(()=>NewPasswordScreen());
                //
                // }
              }
          ),

          SizedBox(height: 10,),
          GestureDetector(
            onTap: () async{

            },
            child: Center(
                child: TextWidget(
                    text: "Resend Code", fontSize: 14.dp,
                    fontWeight: FontWeight.w600, isTextCenter: false,
                    textColor: blackColor)),
          ),
        ],
      ),
    );
  }
}
