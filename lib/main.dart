import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gallery_qulisoft/src/uikit.dart';

import 'src/common/router.dart';

Future main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  static final AppRouter _router = AppRouter();

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Unsplash Gallery',
      theme: CustomTheme(context),
      routeInformationParser: _router.getRouter.routeInformationParser,
      routerDelegate: _router.getRouter.routerDelegate,

      debugShowCheckedModeBanner: false,
    );
  }
}

