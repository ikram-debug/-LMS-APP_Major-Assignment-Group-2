import "package:flutter/material.dart";


import "../View/Application_screen/Application View.dart";
import "../View/Application_screen/View_Application_Screen/View_Application..dart";
import "../View/Forms/Student_Affidavit/Student_Affidavit.dart";
import "../View/Home_Screen_View/Home_Screen.dart";
import "../View/Login_Screen_View/LoginScreen.dart";
import "../View/Splash_Screen_View/SplashScreen.dart";
import "../View/Student_HandBook_Screen/Student_HandBook_View.dart";
import "../View/Forgot_Password_Screen/Forgot Fasword_View.dart";


Map<String,WidgetBuilder> routes = {
  SplashScreenView.routesName :(Context) => SplashScreenView(),
  LoginScreenView.routesName :(Context) => LoginScreenView(),
  ForgotPasswordView.routeName :(Context) => ForgotPasswordView(),
  HomeScreenView.routeName :(Context) => HomeScreenView(),
  StudentHandbookView.routeName :(Context) => StudentHandbookView(),
  ApplicationView.routeName :(Context) => ApplicationView(),
  ViewApplication.routeName :(Context) => ViewApplication(),
  StudentAffidavitView.routeName :(Context) => StudentAffidavitView(),
  //Ikram-debug set
};