import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:health_elevation_project/Routes/routes_name.dart';
import 'package:provider/provider.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/images_path.dart';
import '../../../Widgets/field_widget.dart';
import '../../../Widgets/submit_button.dart';
import '../../../Widgets/text_widget.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  var formKey = GlobalKey<FormState>();

  var emailC = TextEditingController();

  var passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: bgColor,
        surfaceTintColor: bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h,),
              TextWidget(text: "Sign In", fontSize: 20.dp,
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
                          child: Image.asset(ImagesPath.emailIcon)),
                      hintText: "Email",
                    ),

                    SizedBox(height: 20,),
                    Consumer(builder: (context, value, child) {
                      return InputField(
                        inputController: passwordC,
                        prefixIcon: Container(
                            padding: EdgeInsets.all(24),
                            height: 9.h,
                            child: Image.asset(ImagesPath.lockIcon)),
                        suffixIcon: IconButton(
                            onPressed: (){

                            },
                            icon: Icon(Icons.visibility
                            )),
                        hintText: "Password",

                      );
                    },
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(RoutesName.forgotPassword);
                    },
                    child: SizedBox(
                        height: 30,
                        child: Center(
                            child: TextWidget(
                                text: "Forget Password?", fontSize: 12.dp,
                                fontWeight: FontWeight.w700, isTextCenter: false,
                                textColor: blackColor))),
                  ),
                ],
              ),
              SizedBox(height: 70,),

              Center(
                child: Consumer(builder: (context,value,child){
                  return SubmitButton(
                      radius: 15,
                      width: 70.w,
                      title: "Log in",
                      press: (){
                        if(formKey.currentState!.validate()){

                        }
                      }
                  );
                }),
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(text: "New User?", fontSize: 16.dp,
                      fontWeight: FontWeight.w500, isTextCenter: false,
                      textColor: darkGreyColor),
                  GestureDetector(
                      onTap: (){
                        Get.toNamed(RoutesName.signUp);
                      },
                      child: TextWidget(text: "Register Now", fontSize: 16.dp,
                          fontWeight: FontWeight.w500, isTextCenter: false,
                          textColor: blackColor)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
