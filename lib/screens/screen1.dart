import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizapp/screens/screen2.dart';
import 'package:quizapp/screens/screen3.dart';
import 'package:quizapp/utils/myfonts.dart';
import 'package:quizapp/utils/myicons.dart';
import 'package:quizapp/utils/myimages.dart';
class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.h,),
                Center(child: Text("Login", style: Myfonts.poppins.copyWith(fontSize: 25, fontWeight: FontWeight.w500),)),
                SizedBox(height: 17.h,),
                Center(child: SvgPicture.asset(Myicons.phon, width: 130, height: 250,)),
                SizedBox(height: 60.h,),

                Container(
                  width: 350,
                  height: 60,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.length < 1)
                        return "Mobile phone is wrong";},
                    textInputAction: TextInputAction.next,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(
                        hintText: "Enter your mobile number",
                        border:  OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        )
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
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
                SizedBox(height: 210.h,),
                Text("term’s and conditons apply", style: Myfonts.poppins.copyWith(color: Colors.black26, ),),
                Text("POWERD BY - sparrowdevops.com", style: Myfonts.poppins.copyWith(color: Colors.black26, ),)

              ],
            ),
          ),
      ),
    );
  }
}

