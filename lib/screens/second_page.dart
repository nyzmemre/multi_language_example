import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

import '../language_change.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LanguageChange controller = context.read<LanguageChange>();

    return Scaffold(
      appBar: AppBar(
        title: Text("second_page_appbar_title").tr(),

      ),body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("second_page_info").tr(),
          SizedBox(height: 20,),
          Text("choose_language_text").tr(),
          TextButton(onPressed: (){
            // ignore: deprecated_member_use
            context.locale = Locale('en', 'US');
            controller.onLanguageChanged();
          }, child: Text("English")),
          TextButton(onPressed: (){
            // ignore: deprecated_member_use
            context.locale = Locale('tr', 'TR');
            controller.onLanguageChanged();
          }, child: Text("Türkçe"))
        ],
      ),
    ),
    );
  }
}
