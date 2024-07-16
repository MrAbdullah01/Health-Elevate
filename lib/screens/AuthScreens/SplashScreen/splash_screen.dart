import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:health_elevation_project/Constants/images_path.dart';
import 'package:health_elevation_project/Providers/onBoardProvider/onboard_provider.dart';
import 'package:health_elevation_project/Routes/routes_name.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<OnboardingProvider>(context,listen: false).timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Center(
          child: Image.asset(ImagesPath.splashImage,height: 25.h,),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImagesPath.bgImage),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
