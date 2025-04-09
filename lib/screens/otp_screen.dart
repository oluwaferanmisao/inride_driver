import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:inride_driver/screens/screens_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This is the screen where the user enters their OTP
class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  static String routeName = "OtpScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24.h,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Insert the OTP code",
                style: AppTheme.displayPSmallBold,
              ),
              Text(
                "Enter the code sent to Placeholder@gmail.com",
                style: AppTheme.textLargeRegular.copyWith(fontSize: 18),
              ),
              Space.h(20),
              const CustomOtpField(),
              Space.h(248),
              CustomFilledButton(
                label: "Continue",
                onPressed: () {
                  context.goNamed(TermsScreen.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
