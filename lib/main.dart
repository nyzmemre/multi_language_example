import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

import 'language_change.dart';
import 'screens/homepage.dart';
//Türkçe açıklamalar
/// easy localization örneği;
///temel olarak yapmanız gerekenler
/// 1- Proje ana dizinine assets klasörünü içine localization klasörünü ekleyin.
/// 2- pubspec.yaml dosyasına easy_localization ve provider paketlerini ekleyin.
///   -ayrıca assets/translations/ ekleyin
/// 3- main fonksiyonuna [A] bölümünü ekleyin.
/// 4- [B] bölümünü runApp içine ekleyin.
///   -supportedLocales(desteklenen dil listesi),
///   -fallbacklocale(hata anında çevrilecek varsayılan dil)
///   -path(dil dosyalarınızın yolu)

//EN descriptions
/// easy localization example;
///fundamental todos
/// 1- Add the localization folder in the assets folder in project main directory.
/// 2- add the easy_localization and provider packages to pubspec.yaml file.
///   -Also add assets/translations/ path
/// 3- add part [A] to main function.
/// 4- add part [B] in runApp.

void main() async {
  //TODO:  A Bölümü / A section
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      // TODO: B Bölümü / B section
      EasyLocalization(
      supportedLocales: [Locale('tr', 'TR'), Locale('en', 'US')],
      path: 'assets/translations',
      fallbackLocale: Locale('tr', 'TR'),
      child: MultiLanguageExample()));
}

class MultiLanguageExample extends StatelessWidget {
  const MultiLanguageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageChange()),
      ],
      child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
        //  locale: context.locale,
          locale: Locale("tr","TR"),
          debugShowCheckedModeBanner: false,
          title: "Multi Language Example",
          home: HomePage()),
    );
  }
}
