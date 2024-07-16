import 'package:flutter/cupertino.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:health_elevation_project/Constants/colors.dart';
import 'package:health_elevation_project/Widgets/text_widget.dart';
import 'package:provider/provider.dart';

import '../../../../Providers/onBoardProvider/onboard_provider.dart';

AnimatedContainer buildDot(int index, BuildContext context) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 200),
    margin: EdgeInsets.only(right: 5),
    height: 7,
    width: 25.w,
    decoration: BoxDecoration(
      color: Provider.of<OnboardingProvider>(context).currentPage == index ? blackColor : greyColor,
      borderRadius: BorderRadius.circular(5),
    ),
  );
}

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        TextWidget(text: text, fontSize: 24.dp,
          fontWeight: FontWeight.w600, isTextCenter: true,
          textColor: blackColor, maxLines: 2,),
        Spacer(),
        SizedBox(
          height: 61.8.h,
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        Spacer(),
      ],
    );
  }
}