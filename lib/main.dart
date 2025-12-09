import 'package:flutter/material.dart';
import 'package:lms_app/themes.dart';
import 'package:sizer/sizer.dart';

import 'Routes/routes.dart';
import 'View/Splash_Screen_View/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: CustomTheme().baseTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreenView.routesName,
        routes: routes,
      );
    },
    );
  }
}

