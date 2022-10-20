import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizapp/screens/tugadi.dart';
import 'package:quizapp/utils/classlar.dart';
import 'package:quizapp/utils/myfonts.dart';
import '../widgets/timer_widget.dart';

class testscreen extends StatefulWidget {
  final int number;
  const testscreen({Key? key, required this.number}) : super(key: key);

  @override
  State<testscreen> createState() => _testscreenState();
}

int trying = 5;
int pass = 0;

class _testscreenState extends State<testscreen> {
  @override
  void initState() {
    super.initState();
    Myanswers.tests[0].index = widget.number;
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (start != 0) {
        setState(() {
          start--;
        });
      } else {

        setState(() {
          Myanswers.tests[0].index+=1;
          start = 15;
        });

      }
    });
  }
  int start = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 15,),
                Stack(
                  children: [
                    Positioned(
                      child: TimerWidget(second: start),
                      top: 8,
                      left: 8,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: TweenAnimationBuilder<double>(
                        builder: (BuildContext context, value, Widget? child) {
                          return CircularProgressIndicator(
                            strokeWidth: 1,
                            backgroundColor: Colors.transparent,
                            color: Colors.red,
                            value: value,
                          );
                        },
                        tween: Tween<double>(begin: 0.0, end: start / 15),
                        duration: Duration(seconds: 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 290,),
                Icon(Icons.lightbulb,size: 30, color: Colors.yellow, ),
                Text(" ${trying}", style: Myfonts.poppins.copyWith(fontWeight: FontWeight.w700, fontSize: 20),)
              ],
            ),     // topdagi narsalar
            SizedBox(height: 90,),
            Center(
              child: Container(
                height: 200,
                width: 350,
                child: Image.network(
                  Myanswers.tests[Myanswers.tests[0].index].trueimage == 1 ? "https://countryflagsapi.com/png/${Myanswers.tests[Myanswers.tests[0].index].answer1}" : Myanswers.tests[Myanswers.tests[0].index].trueimage == 2 ? "https://countryflagsapi.com/png/${Myanswers.tests[Myanswers.tests[0].index].answer2}" : Myanswers.tests[Myanswers.tests[0].index].trueimage == 3 ? "https://countryflagsapi.com/png/${Myanswers.tests[Myanswers.tests[0].index].answer3}" : Myanswers.tests[Myanswers.tests[0].index].trueimage == 4 ? "https://countryflagsapi.com/png/${Myanswers.tests[Myanswers.tests[0].index].answer4}" : "https://countryflagsapi.com/png/usa"
                )
                                                                          //uzbekistan
              ),
            ),// Bayroq rasmi

            SizedBox(height: 40,),
            Column(
            children: [
              SizedBox(width: 20,),
              InkWell(
                onTap: ((){
                  setState(() {
                    if ("${Myanswers.tests[Myanswers.tests[0].index].trueimage}" == "1")
                      {
                         Myanswers.tests[Myanswers.tests[0].index].istruemui1 = 1;
                         Myanswers.tests[1].index +=1;
                      }
                    else{
                      Myanswers.tests[Myanswers.tests[0].index].istruemui1==-1 ? trying-=1 : pass = 0  ;
                      Myanswers.tests[Myanswers.tests[0].index].istruemui1 = 0;

                      if (trying < 1){
                        showdilog();
                      }
                    }
                  });
                }),
                child: Container(height: 50,width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),

                    color: Myanswers.tests[Myanswers.tests[0].index].istruemui1==-1 ? Colors.black12: (Myanswers.tests[Myanswers.tests[0].index].istruemui1 == 1 ? Colors.green: Colors.red),
                  ),

                child: Center(child: Text(Myanswers.tests[Myanswers.tests[0].index].answer1)),),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: ((){
                  setState(() {
                    if ("${Myanswers.tests[Myanswers.tests[0].index].trueimage}" == "2")
                    {
                      Myanswers.tests[Myanswers.tests[0].index].istruemui2 = 1;
                      Myanswers.tests[1].index +=1;
                    }
                    else{
                      Myanswers.tests[Myanswers.tests[0].index].istruemui2==-1 ? trying-=1 : pass = 0  ;
                      Myanswers.tests[Myanswers.tests[0].index].istruemui2 = 0;

                      if (trying < 1){
                        showdilog();
                      }
                    }
                  });
                }),
                child: Container(height: 50,width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Myanswers.tests[Myanswers.tests[0].index].istruemui2==-1 ? Colors.black12: (Myanswers.tests[Myanswers.tests[0].index].istruemui2 == 1 ? Colors.green: Colors.red),
                  ),
                  child: Center(child: Text(Myanswers.tests[Myanswers.tests[0].index].answer2)),),
              ),
              SizedBox(height: 10,),
              InkWell(
                   onTap: ((){
                     setState(() {
                       if ("${Myanswers.tests[Myanswers.tests[0].index].trueimage}" == "3")
                       {
                         Myanswers.tests[Myanswers.tests[0].index].istruemui3 = 1;
                         Myanswers.tests[1].index +=1;
                       }
                       else{
                         Myanswers.tests[Myanswers.tests[0].index].istruemui3==-1 ? trying-=1 : pass = 0  ;
                         Myanswers.tests[Myanswers.tests[0].index].istruemui3 = 0;

                         if (trying < 1){
                           showdilog();
                         }
                       }
                     });
                   }),
                   child: Container(height: 50,width: 300,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Myanswers.tests[Myanswers.tests[0].index].istruemui3==-1 ? Colors.black12: (Myanswers.tests[Myanswers.tests[0].index].istruemui3 == 1 ? Colors.green: Colors.red),
                     ),
                     child: Center(child: Text(Myanswers.tests[Myanswers.tests[0].index].answer3)),),
                 ),
              SizedBox(height: 10,),
              InkWell(
                   onTap: ((){
                     setState(() {
                       if ("${Myanswers.tests[Myanswers.tests[0].index].trueimage}" == "4")
                       {
                         Myanswers.tests[Myanswers.tests[0].index].istruemui4 = 1;
                         Myanswers.tests[1].index +=1;
                       }
                       else{
                         Myanswers.tests[Myanswers.tests[0].index].istruemui4==-1 ? trying-=1 : pass = 0  ;
                         Myanswers.tests[Myanswers.tests[0].index].istruemui4 = 0;
                         if (trying < 1){
                           showdilog();
                         }
                       }
                     });
                   }),
                   child: Container(height: 50,width: 300,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Myanswers.tests[Myanswers.tests[0].index].istruemui4==-1 ? Colors.black12: (Myanswers.tests[Myanswers.tests[0].index].istruemui4 == 1 ? Colors.green: Colors.red),
                     ),
                     child: Center(child: Text(Myanswers.tests[Myanswers.tests[0].index].answer4)),),
                 )
            ],
          ),  //Javoblar

            SizedBox(height: 70,),
            InkWell(
              onTap: ((){
                setState(() {
                 if(
                 Myanswers.tests[Myanswers.tests[0].index].istruemui1 == 1 ||
                 Myanswers.tests[Myanswers.tests[0].index].istruemui2 == 1 ||
                 Myanswers.tests[Myanswers.tests[0].index].istruemui3 == 1 ||
                 Myanswers.tests[Myanswers.tests[0].index].istruemui4 == 1
                 ) {Myanswers.tests[0].index == 9? showdilog() : Myanswers.tests[0].index+=1;}
                 start = 15;
                });
              }),
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  color:
                Myanswers.tests[Myanswers.tests[0].index].istruemui1 == 1 ||
                Myanswers.tests[Myanswers.tests[0].index].istruemui2 == 1 ||
                Myanswers.tests[Myanswers.tests[0].index].istruemui3 == 1 ||
                Myanswers.tests[Myanswers.tests[0].index].istruemui4 == 1
                 ? Colors.lightBlueAccent : Colors.grey
                ),
                child: Center(child: Text("Next", style: Myfonts.poppins.copyWith(color: Colors.white),)),
              ),
            ) //Next

          ],
        ),
      ),
    );
  }
  void showdilog(){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => tugadi(num: Myanswers.tests[1].index)));

  }
  bool trycheck(){
    if (

    Myanswers.tests[Myanswers.tests[0].index].istruemui1==-1 ||
    Myanswers.tests[Myanswers.tests[0].index].istruemui2==-1 ||
    Myanswers.tests[Myanswers.tests[0].index].istruemui3==-1 ||
    Myanswers.tests[Myanswers.tests[0].index].istruemui4==-1

    ){
      return true;
    }
    else
      return false;
}

}
