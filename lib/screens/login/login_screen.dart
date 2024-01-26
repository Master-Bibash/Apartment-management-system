import 'package:flutter/material.dart';
import 'package:flutter_apartmentmanagementsystem_1/screens/login/components/widgets/text_field_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();
GlobalKey<FormState> globalKey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 169.h,
            child: Stack(
              children: [
                Positioned(
                  top: -10,
                  child: Image.asset(
                    "assets/lower.png",
                    width: MediaQuery.of(context).size.width,
                    height: 98.h,
                  ),
                ),
                Positioned(
                  // top: 1,
                  child: Image.asset(
                    "assets/header.png",
                    width: MediaQuery.of(context).size.width,
                    // height: 200
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Login",
            style: theme.textTheme.bodyText1,
          ),
          SizedBox(
            height: 32.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Form(
                key: globalKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    TextFieldWidget(
                      controller: emailcontroller,
                      type: TextInputType.emailAddress,
                      hinttext: 'abc@gmail.com',

                       valid: (value) {
                        if (value!.isEmpty) {
                          return "fields cannot be empty";
                        }
                        return '';
                      },
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      "Password",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    TextFieldWidget(
                      valid: (value) {
                        if (value!.isEmpty) {
                          return "fields cannot be empty";
                        }
                        return '';
                      },
                      controller: passwordcontroller,
                      type: TextInputType.text,
                      hinttext: "*****",
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 16.h,
                            width: 16.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4)),
                            child: Theme(
                                data: ThemeData(
                                    unselectedWidgetColor: Color(0xff00C8E8)),
                                child: Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  activeColor: Colors.yellow,
                                  fillColor: MaterialStatePropertyAll(
                                      theme.primaryColor),
                                  value: false,
                                  onChanged: (value) {},
                                ))),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "Remember me",
                          style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 12.sp, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: theme.shadowColor))),
                          child: Text(
                            "Forgot password ?",
                            style: theme.textTheme.bodySmall!
                                .copyWith(color: theme.shadowColor),
                          ),
                        ),
                        // Row(
                        //   // mainAxisAlignment: MainAxisAlignment.start,
                        //   // crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: [

                        //   ],
                        // ),

                        // Column(
                        //   children: [
                        //     Text(
                        //       "Forgot password?",
                        //       style: theme.textTheme.bodySmall!.copyWith(
                        //         color: theme.shadowColor,
                        //       ),
                        //     )
                        //   ],
                      ],
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    SizedBox(
                      height: 40.h,
                      width: 312.w,
                      child: ElevatedButton(
                        onPressed: () {
                          if (globalKey.currentState!.validate()) {
                            print("done");
                          }
                          return print("npew");
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF142933),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4))),
                        child: Text(
                          "Login",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    ));
  }
}
