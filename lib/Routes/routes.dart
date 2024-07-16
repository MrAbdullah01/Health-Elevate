import 'package:get/get.dart';
import 'package:health_elevation_project/Routes/routes_name.dart';
import 'package:health_elevation_project/screens/AuthScreens/NewPasswordScreen/new_password_screen.dart';
import 'package:health_elevation_project/screens/AuthScreens/OnBoardScreen/onboard_screen.dart';
import 'package:health_elevation_project/screens/AuthScreens/SignInScreen/sign_in_screen.dart';

import '../screens/AuthScreens/ForgotPasswordScreen/forgot_password_screen.dart';
import '../screens/AuthScreens/OtpScreen/otp_screen.dart';
import '../screens/AuthScreens/SignUpScreen/sign_up_screen.dart';
import '../screens/AuthScreens/SplashScreen/splash_screen.dart';

class Routes{
  static final routes  =[
    GetPage(
        name: RoutesName.splashScreen,
        page: ()=> SplashScreen()
    ),
    GetPage(
        name: RoutesName.onboardScreen,
        page: ()=> OnboardScreen()
    ),
    GetPage(
        name: RoutesName.signIn,
        page: ()=> SignInScreen()
    ),
    GetPage(
        name: RoutesName.signUp,
        page: ()=> SignUpScreen()
    ),
    GetPage(
        name: RoutesName.forgotPassword,
        page: ()=> ForgotPasswordScreen()
    ),
    GetPage(
        name: RoutesName.otpVerificationScreen,
        page: ()=> OtpScreen()
    ),
    GetPage(
        name: RoutesName.newPassword,
        page: ()=> NewPasswordScreen()
    ),
    // GetPage(
    //     name: RoutesName.bottomNavigationBar,
    //     page: ()=> BottomNavbarScreen()
    // ),
  ];
}