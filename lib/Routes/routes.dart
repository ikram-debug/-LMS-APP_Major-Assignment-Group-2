import "package:flutter/material.dart";

import "../View/Forget_Password_Screesn_View/Forget_Password_Screen.dart";
import "../View/Home_Screen_View/Home_Screen.dart";
import "../View/Login_Screen_View/LoginScreen.dart";
import "../View/Splash_Screen_View/SplashScreen.dart";
import "../View/Student_HandBook_Screen/Student_HandBook_View.dart";


Map<String,WidgetBuilder> routes = {
  SplashScreenView.routesName :(Context) => SplashScreenView(),
  LoginScreenView.routesName :(Context) => LoginScreenView(),
  ForgotPasswordView.routeName :(Context) => ForgotPasswordView(),
  HomeScreenView.routeName :(Context) => HomeScreenView(),
  StudentHandbookView.routeName :(Context) => StudentHandbookView(),
  //Ikram-debug set
};