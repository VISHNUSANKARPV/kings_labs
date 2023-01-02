import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:machine_labs/home/view/view.dart';
import 'package:machine_labs/widgets/button.dart';
import 'package:machine_labs/widgets/fields.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 80.h,
              width: 120.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.amber,

                      //add more colors for gradient
                    ],
                    begin: Alignment.topLeft, //begin of the gradient color
                    end: Alignment.bottomRight, //end of the gradient color
                    stops: [
                      0.1,
                      0.5,
                    ] //stops for individual color
                    //set the stops number equal to numbers of color
                    ),
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Please sign in your account",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 25.h),
                const Fields(
                  prifix: Icon(Icons.mail),
                  hint: "Email",
                ),
                SizedBox(
                  height: 20.h,
                ),
                const Fields(
                  prifix: Icon(Icons.lock),
                  hint: "Password",
                ),
                SizedBox(
                  height: 40.h,
                ),
                 Align(
                  alignment: Alignment.center,
                  child:  GestureDetector(
                    onTap: (){
                      Get.to(const HomeView());
                    },
                    child: const Buttons(
                      text: "Login",
                    ),
                  ),
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}