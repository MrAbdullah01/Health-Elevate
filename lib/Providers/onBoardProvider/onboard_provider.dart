import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../Routes/routes_name.dart';

class OnboardingProvider with ChangeNotifier {

  int _currentPage = 0;

  int get currentPage => _currentPage;

  void setPage(int page) {
    _currentPage = page;
    notifyListeners();
  }

  void timer(){
    Timer(Duration(seconds: 3), () {
      Get.toNamed(RoutesName.onboardScreen);
    },);
  }

}