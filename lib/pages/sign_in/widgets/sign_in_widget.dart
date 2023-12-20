import 'package:edy_learner/common/entities/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: AppColors.primarySecondaryBackground,
          height: 1.0,
        ),
      ),
      title: Center(
        child: Text(
          "Log In",
          style: TextStyle(
            color: AppColors.primaryText,
            fontWeight: FontWeight.normal,
            fontSize: 16.sp,
          ),
        ),
      ));
}

Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _reusableIcons("apple"),
        _reusableIcons("google"),
        _reusableIcons("facebook")
      ],
    ),
  );
}

Widget _reusableIcons(String iconName) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40.w,
      height: 40.w,
      child: Image.asset("assets/icons/$iconName.png"),
    ),
  );
}

Widget reusableText(String texts) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      texts,
      style: TextStyle(
          color: Colors.grey.withOpacity(0.5),
          fontWeight: FontWeight.normal,
          fontSize: 14.sp),
    ),
  );
}

Widget buildTextField(String hintText, String textType, String iconName) {
  return Container(
    width: 325.w,
    height: 50.h,
    margin: EdgeInsets.only(bottom: 20.h),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
        border: Border.all(color: AppColors.primaryFourElementText)),
    child: Row(children: [
      Container(
        width: 16.w,
        height: 16.h,
        margin: EdgeInsets.only(left: 17.w),
        child: Image.asset("assets/icons/$iconName.png"),
      ),
      SizedBox(
        width: 270.w,
        height: 50.h,
        child: TextField(
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
              hintText: hintText,
              border: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.transparent,
              )),
              disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.transparent,
              )),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.transparent,
              )),
              hintStyle: const TextStyle(color: AppColors.primaryElementText
                  //color: Colors.grey.withOpacity(0.5)
                  ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.transparent,
              ))),
          style: const TextStyle(
            color: AppColors.primaryText,
            fontFamily: "Aveniri",
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
          autocorrect: false,
          obscureText: textType == "password" ? true : false,
        ),
      ),
    ]),
  );
}

Widget forgotPassword() {
  return Container(
    margin: EdgeInsets.only(left: 25.w),
    height: 44.h,
    width: 260.w,
    child: GestureDetector(
      onTap: () {},
      child: Text(
        "Forgot Password",
        style: TextStyle(
          color: AppColors.primaryText,
          decoration: TextDecoration.underline,
          fontSize: 12.sp,
          decorationColor: AppColors.primaryText,
        ),
      ),
    ),
  );
}

Widget buildLoginAndRegisterButton(String buttonName, String buttonType) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.only(
          left: 25.w, right: 25.w, top: buttonType == "login" ? 40.h : 20.h),
      height: 50.h,
      width: 325.w,
      decoration: BoxDecoration(
          color: buttonType == "login"
              ? AppColors.primaryElement
              : AppColors.primaryBackground,
          borderRadius: BorderRadius.circular(15.w),
          border: Border.all(
              color: buttonType == "login"
                  ? Colors.transparent
                  : AppColors.primaryElement),
          boxShadow: [
            BoxShadow(
              color: buttonType == "login"
                  ? AppColors.primaryBackground
                  : AppColors.primaryElement,
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ]),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            color: buttonType == "login"
                ? AppColors.primaryBackground
                : AppColors.primaryText,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
