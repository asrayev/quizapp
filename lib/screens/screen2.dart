import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizapp/screens/screen3.dart';
import 'package:quizapp/utils/myfonts.dart';
import 'package:quizapp/utils/myicons.dart';
import 'package:quizapp/utils/myimages.dart';
class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              Center(child: Text("Otp", style: Myfonts.poppins.copyWith(fontSize: 25, fontWeight: FontWeight.w500),)),
              SizedBox(height: 50.h,),
              Center(child: SvgPicture.asset(Myicons.quizicon,width: 100, height: 50,)),
              SizedBox(height: 60.h,),
              Text("Enter your 6 digit otp here", style: Myfonts.poppins.copyWith(color: Colors.black26, fontSize: 23 ),),
              SizedBox(height: 30,),
              Text("_ _ _ _ _ _", style: Myfonts.poppins.copyWith(color: Colors.black, fontSize: 40 ),),
              SizedBox(height: 60.h,),
              InkWell(
                onTap: ((){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => screen3()));
                }
                ),

                child: Container(
                  height: 60,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xFFFCA82F),

                  ),
                  child: Center(
                    child: Text("Login", style:  Myfonts.poppins.copyWith(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25)),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("login with social media", style: Myfonts.poppins.copyWith(color: Colors.black26, fontSize: 20 ),),
              SizedBox(height: 94.h,),
               SvgPicture.asset(Myicons.village, width: 270,)
            ],
          ),
        ),
      ),
    );
  }
}

