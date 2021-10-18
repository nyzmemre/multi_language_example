import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import '../language_change.dart';
import 'second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    context.watch<LanguageChange>();
    return Scaffold(
        appBar: homePageAppbar(),
        body: Center(
            child: homepageColumn(context)));
  }

  AppBar homePageAppbar() => AppBar(title: Text('homepage_appbar_title').tr());

  Column homepageColumn(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("homepage_body").tr(),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SecondPage()));
              },
              child: Text('second_page_appbar_title').tr())
        ],
      );
  }
}
