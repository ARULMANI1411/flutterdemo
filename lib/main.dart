import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/amazon.dart';
import 'package:untitled/amazon2.dart';
import 'package:untitled/class.dart';
import 'package:untitled/dedail.dart';
import 'package:untitled/home.dart';
import 'package:untitled/instagram.dart';
import 'package:untitled/kids%20mode.dart';
import 'package:untitled/login%20page.dart';
import 'package:untitled/ott.dart';
import 'package:untitled/profile%20page.dart';
import 'package:untitled/respancive.dart';
import 'package:untitled/search.dart';
import 'package:untitled/show%20dedail.dart';
import 'package:untitled/splash%20screen.dart';
import 'package:untitled/sport.dart';
import 'package:untitled/spotifiy.dart';
import 'package:untitled/validation2.dart';
import 'package:untitled/video%20player.dart';
import 'aravinth2.dart';
import 'demo.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context,orientaion,devicetype) {
      return MaterialApp(
        builder: (context, child) =>
            ResponsiveWrapper.builder(
                child,
                maxWidth: 1200,
                minWidth: 480,
                defaultScale: true,
                breakpoints: [
                  ResponsiveBreakpoint.resize(480, name: MOBILE),
                  ResponsiveBreakpoint.autoScale(480, name: MOBILE),
                  ResponsiveBreakpoint.autoScale(800, name: TABLET),
                  ResponsiveBreakpoint.resize(1000, name: DESKTOP),
                ],
                background: Container(color: Color(0xFFF5F5F5))),
        title: 'Flutter Demo',

        // theme: ThemeData(
        //     colorScheme: ColorScheme.light(brightness: Brightness.light,
        //       background: Colors.grey.shade900,
        //       primary: Colors.grey.shade700,
        //       secondary: Colors.grey.shade500,)
        // ),
        // darkTheme: ThemeData(
        //     brightness: Brightness.dark,
        //     colorScheme: ColorScheme.dark(
        //       background: Colors.grey.shade400,
        //       primary: Colors.grey.shade300,
        //       secondary: Colors.grey.shade200,
        //     )
        // ),

        home: splash(),
        debugShowCheckedModeBanner: false,
      );
    }
    );

  }
}

class Breakpoint {
  const Breakpoint();
}

