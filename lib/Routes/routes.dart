import "package:flutter/material.dart";

import "../View/Login_Screen_View/LoginScreen.dart";
import "../View/Splash_Screen_View/SplashScreen.dart";


Map<String,WidgetBuilder> routes = {
  SplashScreenView.routesName :(Context) => SplashScreenView(),
  LoginScreenView.routesName :(Context) => LoginScreenView(),
};