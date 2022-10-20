import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapp/screens/screen0.dart';
import 'package:quizapp/screens/screen1.dart';
import 'package:quizapp/screens/screen2.dart';
import 'package:quizapp/screens/screen3.dart';
import 'package:quizapp/screens/testscreen.dart';
import 'package:quizapp/screens/tugadi.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext contex, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          home: screen0(),
        );
      },
    );
  }
}