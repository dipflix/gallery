import 'package:flutter/material.dart';
import 'package:gallery_qulisoft/src/uikit.dart';

ThemeData CustomTheme(BuildContext context) => Theme.of(context).copyWith(
    scaffoldBackgroundColor: Colors.white,
    shadowColor: const Color(0xffECECEC),
    textTheme: Theme.of(context)
        .textTheme
        .apply(fontFamily: 'Poppins', bodyColor: Colors.black));
