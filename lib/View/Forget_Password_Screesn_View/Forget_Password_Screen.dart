import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../Core/Constants/Constans.dart';
import '../../Core/Widgets/Custom_Button1.dart';
import '../../Core/Widgets/Custom_Button2.dart';
import '../Login_Screen_View/LoginScreen.dart';

class ForgotPasswordView extends StatefulWidget {
  static String routeName = 'ForgotPasswordView';

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            // TOP SECTION
            Container(
              height: 40.h,
              width: 100.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Logo.png',
                    height: 120,
                    width: 120,
                    color: kTextWhiteColor,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Password?',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Don't worry, let's get you back in.",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            // FORM SECTION
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                decoration: BoxDecoration(
                  color: kTextWhiteColor,
                  borderRadius: kTopBorderRadius,
                ),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        buildIDTextFormField(),

                        SizedBox(height: 20),

                        DefaultButton(
                          onPress: () {
                            if (_formKey.currentState!.validate()) {
                              // ADD YOUR PASSWORD SENDING LOGIC HERE
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Password sent successfully!")),
                              );
                            }
                          },
                          title: 'Send Password',
                        ),

                        SizedBox(height: 20),

                        // LOGIN REDIRECT
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Remembered Password?',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontSize: 12,
                                color: kTextBlackColor,
                              ),
                            ),
                            SizedBox(width: 5),
                            CustomInkWellButton(
                              text: 'Login',
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  LoginScreenView.routesName,
                                      (route) => false,
                                );
                              },
                              fontsize: 12,
                            ),
                          ],
                        ),

                        SizedBox(height: 20),

                        // SUPPORT INFO
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'For any query email us at',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontSize: 12,
                                  color: kPrimaryColor,
                                ),
                              ),
                              Text(
                                'info@pmdc.edu.pk',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontSize: 12,
                                  color: kTextBlackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // TEXT FIELD
  TextFormField buildIDTextFormField() {
    return TextFormField(
      controller: idController,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.number,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Enter Your ID',
        prefixIcon: Icon(Icons.person),
        prefixIconColor: kPrimaryColor,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter ID';
        } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
          return 'Only numbers are allowed';
        }
        return null;
      },
    );
  }
}
