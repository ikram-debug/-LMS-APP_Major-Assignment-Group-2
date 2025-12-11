import 'package:flutter/material.dart';

import '../../../Core/Constants/Constans.dart';


class UfmNoticeView extends StatefulWidget {
  static String routeName = 'UfmNoticeView';

  @override
  State<UfmNoticeView> createState() => _UfmNoticeViewState();
}

class _UfmNoticeViewState extends State<UfmNoticeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: kTextWhiteColor,
        ),
        title: Text(
          'File',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        color: kTextWhiteColor,
        child: Center(
          child: SizedBox(
            height: 500,
            width: double.infinity,
            child:Image.asset('assets/UFM.jpeg'),
          ),
        ),
      ),
    );
  }
}
