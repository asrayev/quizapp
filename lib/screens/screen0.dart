import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizapp/screens/screen1.dart';
import 'package:quizapp/screens/screen3.dart';
import 'package:quizapp/screens/testscreen.dart';
import 'package:quizapp/utils/myfonts.dart';
import 'package:quizapp/utils/myicons.dart';
import 'package:quizapp/utils/myimages.dart';
import 'package:shared_preferences/shared_preferences.dart';
class screen0 extends StatefulWidget {
  const screen0({super.key});

  @override
  State<screen0> createState() => _screen0State();
}

class _screen0State extends State<screen0> {




  bool isLog = false;
  Future<bool> isLoggedIn() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    isLog = _pref.getBool("Isregister") ?? false;
    return _pref.getBool("Isregister") ?? false;
  }
  @override
  void initState() {
    super.initState();
    isLoggedIn();
    onNextPage();
  }

  onNextPage(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return isLog ? testscreen(number: 0) : screen3();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4047C1),
      body: Center(child: Image.asset(Myimages.intro, height: 850, width: 420, fit: BoxFit.cover,)),
    );
  }
}

