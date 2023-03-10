
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui/screen/view/setting.dart';

import 'screen/provider/home_provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => provider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Settings(),
        },
      ),
    ),
  );
}