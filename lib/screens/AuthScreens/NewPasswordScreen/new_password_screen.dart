import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/images_path.dart';
import '../../../Widgets/field_widget.dart';
import '../../../Widgets/header.dart';
import '../../../Widgets/submit_button.dart';
import '../../../Widgets/text_widget.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});

  var passwordC = TextEditingController();
  var confirmPasswordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: Header().header1("", [], isIconShow: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(text: "New Password", fontSize: 20.dp,
                fontWeight: FontWeight.w700, isTextCenter: false,
                textColor: blackColor),

            SizedBox(height: 30,),
            TextWidget(
                text: "Please write your new password",
                fontSize: 16.dp, fontWeight: FontWeight.w700,
                isTextCenter: false, textColor: blackColor),

            SizedBox(height: 30,),
            Consumer(builder: (context, value, child) {
              return InputField(
                inputController: passwordC,
                prefixIcon: Container(
                    padding: EdgeInsets.all(24),
                    height: 9.h,
                    child: Image.asset(ImagesPath.lockIcon)),
                hintText: "Password",
                suffixIcon: IconButton(
                    onPressed: (){
                      // value.hidePassword();
                    },
                    icon: Icon(Icons.visibility)
                ),
              );
            },),

            SizedBox(height: 30,),
            Consumer(
              builder: (context, value, child) {
                return InputField(
                  inputController: confirmPasswordC,
                  prefixIcon: Container(
                      padding: EdgeInsets.all(24),
                      height: 9.h,
                      child: Image.asset(ImagesPath.lockIcon)),
                  hintText: "Confirm Password",
                  suffixIcon: IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.visibility)
                  ),
                );
              },),

            SizedBox(height: 30,),
            Center(
              child: Consumer(builder: (context, value, child) {
                return SubmitButton(
                    radius: 15,
                    width: 70.w,
                    title: "Confirm Password",
                    press: (){
                      Get.snackbar("Error", "Passwords are not same!");

                      // if(value.passwordC.text == value.confirmPasswordC.text){
                      //   value.forgotPassword();
                      // }else{
                      // }
                    }
                );
              },),
            ),
          ],
        ),
      ),
    );
  }
}
