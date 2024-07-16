import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:health_elevation_project/Constants/images_path.dart';
import 'package:health_elevation_project/Widgets/text_widget.dart';

import '../constants/colors.dart';

class Header {

  AppBar header1(String title,List<Widget> actionsList,{required bool isIconShow,bool isCenterTitle = false,double? toolbarHeight}){
    return AppBar(
        backgroundColor: bgColor,
        surfaceTintColor: bgColor,
        centerTitle: isCenterTitle,
        toolbarHeight: toolbarHeight,
        title: TextWidget(text: title, fontSize: 24.dp, fontWeight: FontWeight.w700, isTextCenter: false, textColor: themeColor),
        actions: actionsList,
        leading: Visibility(
          visible: isIconShow,
          child: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: Container(
                  padding: EdgeInsets.all(6),
                  height: 50,
                  width: 50,
                  child: Image.asset(ImagesPath.backIcon,height: 30,),
                )),
          ),
        )
    );
  }

  AppBar header2(String title,List<Widget> actionsList){
    return AppBar(
      backgroundColor: bgColor,
      surfaceTintColor: bgColor,
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: TextWidget(
          text: title, fontSize: 24.dp,
          fontWeight: FontWeight.w700, isTextCenter: false,
          textColor: themeColor),
      actions: actionsList,
    );
  }

}

