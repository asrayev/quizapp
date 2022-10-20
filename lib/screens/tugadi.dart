import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizapp/screens/testscreen.dart';
import 'package:quizapp/utils/myfonts.dart';
import 'package:quizapp/utils/myicons.dart';
import 'package:quizapp/utils/myimages.dart';

import '../widgets/timer_widget.dart';
class tugadi extends StatefulWidget {
  final int num;
  const tugadi({Key? key, required this.num }) : super(key: key);

  @override
  State<tugadi> createState() => _tugadiState();
}

class _tugadiState extends State<tugadi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 50,),
              SvgPicture.asset(Myicons.quizicon),
              SizedBox(height: 250,),
              Center(child: Container(
               width: 300,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFebf08b),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(children:[
                      SizedBox(width: 60,),
                      Text("Questions", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.blue),),
                      Text(" - 10", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, ),)]),
                    Row(children: [
                      SizedBox(width: 30,),
                      Text("Your score is " , style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.blue),),
                      Text("- ${widget.num} ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, ),),
                      Text(widget.num < 4 ? "😢" : widget.num>7 ? "😎" : "🙂" , style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, ),)


                    ]),
                  ],


                ),
              )),

              SizedBox(height: 250,),
              Row(
                children: [
                  SizedBox(width: 55,),
                  InkWell(
                    onTap: ((){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => testscreen(number: 0,)));


                    }

                    ),
                    child: Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(child: Text("Again", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),)),
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: ((){
                      setState(() {
                        SystemNavigator.pop();
                      });
                    }),
                    child: Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(child: Text("Exit", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
