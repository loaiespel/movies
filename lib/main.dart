import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:move/translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: 'assets/translations/', // <-- change the path of the translation files
        fallbackLocale: const Locale('en'),
        assetLoader: const CodegenLoader(),
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: MyHomePage()
    );
  }
}
//branch1