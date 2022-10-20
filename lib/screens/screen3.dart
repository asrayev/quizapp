import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizapp/screens/testscreen.dart';
import 'package:quizapp/utils/myfonts.dart';
import 'package:quizapp/utils/myicons.dart';
import 'package:quizapp/utils/myimages.dart';
import 'package:shared_preferences/shared_preferences.dart';
class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  TextEditingController passwordController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  var formKey = GlobalKey<FormState>();

  SharedPreferences? _phone;
  SharedPreferences? _password;
  SharedPreferences? _isregister;
  @override
  void initState() {

    super.initState();
  }

  Future<void> saved() async {
    _phone = await SharedPreferences.getInstance();
    _phone?.setString("Phone", phoneController.text);
    _password = await SharedPreferences.getInstance();
    _password?.setString("Password", phoneController.text);
    _isregister = await SharedPreferences.getInstance();
    _isregister?.setBool("Isregister", true);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(height: 20.h,),
                    Center(child: Text("Register", style: Myfonts.poppins.copyWith(fontSize: 25, fontWeight: FontWeight.w500),)),
                    SizedBox(height: 50.h,),
                    Center(child: SvgPicture.asset(Myicons.quizicon,width: 100, height: 50,)),
                    SizedBox(height: 60.h,),


                    TextFormField(
                      validator: (value) {
                        if (value!.length < 1)
                          return "Mobile phone is wrong";},
                      controller: phoneController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      decoration:  InputDecoration(
                          hintText: "Enter your mobile number",
                          border:  OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          )
                      ),
                    ),
                    SizedBox(height: 9,),
                    TextFormField(
                      validator: (value) {
                        if (value!.length < 8)
                          return "Password is short";},
                      controller: passwordController,
                      textInputAction: TextInputAction.done,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                          hintText: "Password",
                          border:  OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          )
                      ),
                    ),
                    SizedBox(height: 9,),
                    TextFormField(
                      validator: (value) {
                        if (value != passwordController.text)
                          return "password is not the same";},
                      textInputAction: TextInputAction.next,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                          hintText: "Coniform Password",
                          border:  OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          )
                      ),
                    ),


                    SizedBox(height: 60.h,),
                    ElevatedButton(
                      onPressed: (() {
                        formKey.currentState?.validate();
                        formKey.currentState?.validate() == true ?{ Navigator.push(context, MaterialPageRoute(builder: (context)=> testscreen(number: 0))),
                        saved(), }: 2==2;

                      }
                      ),
                      child: Container(
                        height: 60,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text("${formKey.currentState?.validate()}", style:  Myfonts.poppins.copyWith(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25)),
                        ),
                      ),
                    ),












                    SizedBox(height: 20,),
                    Text("if you have already account click here", style: Myfonts.poppins.copyWith(color: Colors.black26, fontSize: 18),),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
