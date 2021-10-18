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
      appBar: AppBar(
        title: Text('homepage_appbar_title').tr()
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("homepage_body").tr(),
TextButton(onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>SecondPage()));
}, child: Text('second_page_appbar_title').tr())          ],
        )
      )
    );
  }
}
