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
      appBar: secondPageAppbar(),
      body: Center(
        child: buildColumn(context, controller),
      ),
    );
  }

  AppBar secondPageAppbar() {
    return AppBar(
      title: Text("second_page_appbar_title").tr(),
    );
  }

  Widget buildColumn(BuildContext context, LanguageChange controller) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("second_page_info").tr(),
        SizedBox(
          height: 20,
        ),
        Text("choose_language_text").tr(),
        TextButton(
            onPressed: () {
              context.setLocale(Locale('en', 'US'));
              controller.onLanguageChanged();
            },
            child: Text("English")),
        TextButton(
            onPressed: () {
              context.setLocale(Locale('tr', 'TR'));

              controller.onLanguageChanged();
            },
            child: Text("Türkçe"))
      ],
    );
  }
}
