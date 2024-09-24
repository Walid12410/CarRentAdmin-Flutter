import 'package:carrent/Color/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20).w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20.w,
                    )),
                SizedBox(height: 15.h),
                Text(
                  'Welcome to RentWay! 🎉',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: tdBlack),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Create your account to start renting with ease',
                  style: TextStyle(fontSize: 12.sp, color: tdGrey),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Email address',
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: tdBlack,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.h),
                Container(
                  width: double.infinity,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12).w,
                      border: Border.all(color: tdGrey)),
                  child: Padding(
                    padding: const EdgeInsets.all(5).w, // Add padding for text
                    child: TextField(
                      cursorColor: tdGrey,
                      decoration: InputDecoration(
                        border:
                        InputBorder.none, // Removes the default underline
                        hintText: 'Your email address', // Placeholder text
                        hintStyle: TextStyle(
                            color: tdGrey,
                            fontSize: 12.sp), // Style for hint text
                      ),
                      textInputAction:
                      TextInputAction.done, // Adjust action as needed
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: tdBlack,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.h),
                Container(
                  width: double.infinity,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12).w,
                      border: Border.all(color: tdGrey)),
                  child: Padding(
                    padding: const EdgeInsets.all(5).w, // Add padding for text
                    child: TextField(
                      cursorColor: tdGrey,
                      decoration: InputDecoration(
                        border:
                        InputBorder.none, // Removes the default underline
                        hintText: 'Your password', // Placeholder text
                        hintStyle: TextStyle(
                            color: tdGrey,
                            fontSize: 12.sp), // Style for hint text
                      ),
                      textInputAction:
                      TextInputAction.done, // Adjust action as needed
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Confirm password',
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: tdBlack,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.h),
                Container(
                  width: double.infinity,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12).w,
                      border: Border.all(color: tdGrey)),
                  child: Padding(
                    padding: const EdgeInsets.all(5).w, // Add padding for text
                    child: TextField(
                      cursorColor: tdGrey,
                      decoration: InputDecoration(
                        border:
                        InputBorder.none, // Removes the default underline
                        hintText: 'Retype password', // Placeholder text
                        hintStyle: TextStyle(
                            color: tdGrey,
                            fontSize: 12.sp), // Style for hint text
                      ),
                      textInputAction:
                      TextInputAction.done, // Adjust action as needed
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 40.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12).w,
                        color: tdBlueLight),
                    child: Center(
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: tdWhite,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Already have account?',
                      style: TextStyle(fontSize: 12.sp, color: tdGrey),
                    ),
                    TextButton(
                        onPressed: () {
                          context.push("/logIn");
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: tdBlueLight,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
