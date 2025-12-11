import "package:flutter/material.dart";
import "../View/Application_screen/Application View.dart";
import "../View/Application_screen/View_Application_Screen/View_Application..dart";
import "../View/Change_Password_Screen/Change_Passoword_View.dart";
import "../View/Examination/Date_Sheet_Screen/Date_Sheet_Screen.dart";
import "../View/Examination/Examination_Screen/Detail_Screen/Class_6th_Result.dart";
import "../View/Examination/Examination_Screen/Detail_Screen/Class_7th_Result.dart";
import "../View/Examination/Examination_Screen/Detail_Screen/Class_8th_Result.dart";
import "../View/Examination/Examination_Screen/Detail_Screen/Class_9th_Result.dart";
import "../View/Examination/Examination_View.dart" show ExaminationView;
import "../View/Fee&Finance/Fee_Record_Screen/Fee_Screen_view.dart";
import "../View/Fee&Finance/Fee_Schedule_Screen/Fee_Schedule_Screen_view.dart";
import "../View/Fee&Finance/Samister_Registration_Screen/Samister_Registration_View.dart";
import "../View/Forms/Student_Affidavit/Student_Affidavit.dart";
import "../View/Home_Screen_View/Home_Screen.dart";
import "../View/LMS_Notificstion-Screen/LMS_Notification_View.dart";
import "../View/Login_Screen_View/LoginScreen.dart";
import "../View/My_Class_Screen/Attendence_Screen/Attendence Screen View.dart";
import "../View/Profile_Screen_View/Profile_Screen.dart";
import "../View/SMS_Notification_Screen/SMS_Notification_View.dart";
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
  SmsNotificationView.routeName :(Context) => SmsNotificationView(),
  LmsNotificationView.routeName :(Context) => LmsNotificationView(),
  Cls6thResult.routeName :(Context) => Cls6thResult(),
  Cls7thResult.routeName :(Context) => Cls7thResult(),
  Cls8thResult.routeName :(Context) => Cls8thResult(),
  Cls9thResult.routeName :(Context) => Cls9thResult(),
  DateScheetScreenView.routeName :(Context) => DateScheetScreenView(),
  ExaminationView.routeName :(Context) => ExaminationView(),
  FeeScreenView.routeName :(Context) => FeeScreenView(),
  FeeScheduleView.routeName :(Context) => FeeScheduleView(),
  SemestartRegistrationView.routeName :(Context) => SemestartRegistrationView(),
  ChangePasswordView.routeName :(Context) => ChangePasswordView(),
  ProfileScreenView.routeName :(Context) => ProfileScreenView(),
  AttendenceView.routeName :(Context) => AttendenceView(),

  //Ikram-debug set
};