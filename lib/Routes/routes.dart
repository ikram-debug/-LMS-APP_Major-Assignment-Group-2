import "package:flutter/material.dart";

import "../View/Forget_Password_Screesn_View/Forget_Password_Screen.dart";
import "../View/Home_Screen_View/Home_Screen.dart";
import "../View/Login_Screen_View/LoginScreen.dart";
import "../View/Splash_Screen_View/SplashScreen.dart";


Map<String,WidgetBuilder> routes = {
  SplashScreenView.routesName :(Context) => SplashScreenView(),
  LoginScreenView.routesName :(Context) => LoginScreenView(),
  ForgotPasswordView.routeName :(Context) => ForgotPasswordView(),
  HomeScreenView.routeName :(Context) => HomeScreenView(),
  //Ikram-debug set
};