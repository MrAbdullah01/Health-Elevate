import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:health_elevation_project/Constants/images_path.dart';
import 'package:health_elevation_project/Routes/routes_name.dart';
import 'package:health_elevation_project/Widgets/submit_button.dart';
import 'package:provider/provider.dart';

import '../../../Providers/onBoardProvider/onboard_provider.dart';
import 'Comp/dot_container.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({super.key});

  final List<Map<String, String>> onboardingData = [
    {
      "text": "Book your Doctor\nany time any where",
      "image": ImagesPath.onboard1Image
    },
    {
      "text": "Blood Sample Test\nany Time any Where",
      "image": ImagesPath.onboard2Image
    },
    {
      "text": "Blood Sample Test\nany Time any Where",
      "image": ImagesPath.onboard3Image
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<OnboardingProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(onboardingData.length, (index) => buildDot(index, context)),
              ),
              SizedBox(height: 40,),
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    provider.setPage(value);
                  },
                  itemCount: onboardingData.length,
                  itemBuilder: (context, index) => OnboardingContent(
                    image: onboardingData[index]["image"]!,
                    text: onboardingData[index]["text"]!,
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SubmitButton(
        width: 70.w,
          radius: 50,
          title: "Get Started",
          press: (){
          Get.toNamed(RoutesName.signIn);
          }
      ),
    );
  }
}
