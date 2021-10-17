import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second_page_appbar_title".tr()),

      ),body:Center(
      child: Text("second_page_info".tr()),
    ),
    );
  }
}
