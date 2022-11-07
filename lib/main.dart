import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playstore/second_screen.dart';
import 'package:provider/provider.dart';

import 'detail_screen.dart';
import 'first_screen.dart';
import 'home_provider.dart';
import 'home_screen.dart';

void main()
{

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.amber)
  );

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<screenoeprovider>(create:(context) => screenoeprovider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home(),
          '/sone':(context) => screenone(),
          '/stwo':(context) => screentwo(),
          '/detail':(context) => detailsScreen(),
        },
      ),
    ),
  );
}