import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top:34.h),
          width: 375.w,
          child: Stack(
            children: [
              PageView(
                children: [
                  _page(
                    1,
                    context,
                    "next",
                    "first see Learning",
                    "Forget about troubles underneath physical study",
                    "image one"
                  ),
                  _page(
                      2,
                      context,
                      "next",
                      "first see Learning",
                      "Forget about troubles underneath physical study",
                      "image two"
                  ),
                  _page(
                      3,
                      context,
                      "get started",
                      "first see Learning",
                      "Forget about troubles underneath physical study",
                      "image three"
                  ),

                ],
              )
            ],
          ),

        ),
      ),
    );
  }

  Widget _page(int index, BuildContext context, String buttonName, String title, String subTile, String imagePath){
    return   Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Text(
            imagePath,
          ),
        ),
        Container(
          child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.normal,
              )
          ),
        ),
        Container(
          width: 337.w,
          padding: EdgeInsets.only(left: 30.w,right: 30.w),
          child: Text(
              subTile,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
              )
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 100.h, left: 25.w,right: 25.w),
          width: 325.w,
          height: 50.h,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15.w)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0,1)
                ),

              ]
          ),
          child: Center(
            child: Text(
                buttonName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal,
                )
            ),
          ),
        )
      ],
    );
  }
}
