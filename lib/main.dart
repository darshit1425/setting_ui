import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui/screen/view/ios_setting.dart';
import 'package:setting_ui/screen/view/setting.dart';
import 'screen/provider/home_provider.dart';
import 'screen/provider/ios_provider/ios_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => provider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Iosprovider(),
        )
      ],
      child: Platform.isAndroid?iOS():android()
      // child: iOS(),
    ),
  );
}

Widget android() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Settings(),
    },
  );
}

Widget iOS() {
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (p0) => ios_screen(),
    },
  );
}
