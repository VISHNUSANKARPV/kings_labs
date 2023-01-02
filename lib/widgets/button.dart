import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key, this.height, this.width, required this.text, this.shadowColor})
      : super(key: key);

  final double? height;
  final double? width;
  final String text;
  final Color? shadowColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height ?? 50.h,
      width: width ?? 140.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        gradient: const LinearGradient(
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
        boxShadow:  [
          BoxShadow(
            color: shadowColor ?? Colors.grey,
            offset:const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: shadowColor ?? Colors.grey,
            offset:const Offset(5.0, 5.0),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
        ],
      ),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.sp, color: Colors.white),
      ),
    );
  }
}