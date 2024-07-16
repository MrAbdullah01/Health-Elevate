import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/images_path.dart';
import '../../../Widgets/field_widget.dart';
import '../../../Widgets/header.dart';
import '../../../Widgets/submit_button.dart';
import '../../../Widgets/text_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  var formKey = GlobalKey<FormState>();

  var emailC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      appBar: Header().header1("", [], isIconShow: true),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [

          SizedBox(height: 10.h,),
          TextWidget(text: "Sign Up", fontSize: 20.dp,
              fontWeight: FontWeight.w700, isTextCenter: false,
              textColor: blackColor),

          SizedBox(height: 20,),
          Form(
            key: formKey,
            child: Column(
              children: [
                InputField(
                  inputController: emailC,
                  prefixIcon: Container(
                      padding: EdgeInsets.all(24),
                      height: 9.h,
                      child: Image.asset(ImagesPath.personIcon)),
                  hintText: "Full Name",
                ),

                SizedBox(height: 20,),
                InputField(
                  inputController: emailC,
                  prefixIcon: Container(
                      padding: EdgeInsets.all(24),
                      height: 9.h,
                      child: Image.asset(ImagesPath.emailIcon)),
                  hintText: "Email",
                ),
                SizedBox(height: 20,),

                Consumer(
                  builder: (context, value, child) {
                    return InputField(
                      inputController: emailC,
                      prefixIcon: Container(
                          padding: EdgeInsets.all(24),
                          height: 9.h,
                          child: Image.asset(ImagesPath.lockIcon)),
                      suffixIcon: IconButton(
                          onPressed: (){

                          },
                          icon: Icon(Icons.visibility)),
                      hintText: "Password",
                    );
                  },),

                SizedBox(height: 20,),
                Consumer(
                  builder: (context, value, child) {
                    return InputField(
                      inputController: emailC,
                      prefixIcon: Container(
                          padding: EdgeInsets.all(24),
                          height: 9.h,
                          child: Image.asset(ImagesPath.lockIcon)),
                      suffixIcon: IconButton(
                          onPressed: () {
                            // value.hideConfirmPassword();
                          },
                          icon: Icon(Icons.visibility)),
                      hintText: "Password",
                    );
                  },),
              ],
            ),
          ),

          SizedBox(height: 70,),
          Center(
            child: Consumer(builder: (context, value, child) {
              return SubmitButton(
                  radius: 15,
                  width: 70.w,
                  title: "Sign up",
                  press: (){
                    Get.snackbar("Error", "Passwords are not same!");
                    // if(signUpP.passwordC.text == signUpP.confirmPasswordC.text){
                    //   if(formKey.currentState!.validate()){
                    //     otpP.otpSend(signUpP.emailC.text);
                    //   }
                    // }else{
                    //
                    // }
                  }
              );
            },),
          ),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                  text: "Already have an Account?", fontSize: 16.dp,
                  fontWeight: FontWeight.w500, isTextCenter: false,
                  textColor: darkGreyColor),
              GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: TextWidget(
                      text: "Login", fontSize: 16.dp,
                      fontWeight: FontWeight.w500, isTextCenter: false,
                      textColor: blackColor)),
            ],
          )
        ],
      ),
    );
  }
}
