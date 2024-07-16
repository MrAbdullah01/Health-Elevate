import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:health_elevation_project/Constants/colors.dart';
import 'package:health_elevation_project/Providers/onBoardProvider/onboard_provider.dart';
import 'package:health_elevation_project/screens/AuthScreens/SplashScreen/splash_screen.dart';
import 'package:provider/provider.dart';

import 'Routes/routes.dart';
import 'Routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
        builder: (context, orientation, screenType) {
          return MultiProvider(providers: [
            ChangeNotifierProvider(create: (_)=>OnboardingProvider()),
          ],
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Health Elevate',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: themeColor,primary: themeColor),
                useMaterial3: true,
              ),
              home: const SplashScreen(),
              initialRoute: RoutesName.splashScreen,
              getPages: Routes.routes,
            ),
          );
        }
    );
  }
}

