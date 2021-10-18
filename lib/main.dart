import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

import 'language_change.dart';
import 'screens/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageChange()),
      ],
      child: EasyLocalization(
          supportedLocales: [Locale('tr', 'TR'), Locale('en', 'US')],
          path: 'assets/translations',
          fallbackLocale: Locale('en', 'US'),
          child: MultiLanguageExample())));
}

class MultiLanguageExample extends StatelessWidget {
  const MultiLanguageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: "Multi Language Example",
        home: HomePage());
  }
}
