import 'package:flutter/material.dart';
import '../../Core/Constants/Constans.dart';
import '../Login_Screen_View/LoginScreen.dart';


class SplashScreenView extends StatefulWidget {
  static String routesName = 'SplashScreenView';

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {

  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
            () {
          Navigator.pushNamedAndRemoveUntil(context, LoginScreenView.routesName, (routes)=>false);
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Logo.png',
              height: 150,
              width: 150,
              color: kTextWhiteColor,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'PMDC',
              style: Theme.of(context).textTheme.headlineSmall,
            )
          ],
        ),
      ),
    );
  }
}