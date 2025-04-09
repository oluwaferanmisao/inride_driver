import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inride_driver/screens/enable_location_screen.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:go_router/go_router.dart';

//This is the screen that requests for push notification permission
class PushNotificationScreen extends StatelessWidget {
  const PushNotificationScreen({super.key});

  static String routeName = "PushNotificationScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity.w,
                height: 240.h,
                padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 30.h),
                child: Image.asset(
                  "assets/images/push_notification.png",
                  fit: BoxFit.cover,
                ),
              ),
              Space.h(30),
              Column(
                children: [
                  Text(
                    "Get real-time updates by activating Push notifications",
                    textAlign: TextAlign.center,
                    style: AppTheme.displayMediumBold
                        .copyWith(fontSize: 22.sp, fontWeight: FontWeight.w800),
                  ),
                  Space.h(10),
                  Text(
                    "Receive notifications about ride requests, passenger details, and important alerts.",
                    textAlign: TextAlign.center,
                    style: AppTheme.textMediumRegular.copyWith(fontSize: 18.sp),
                  ),
                ],
              ),
              Space.h(30),
              Column(
                children: [
                  CustomFilledButton(
                    label: "Accept",
                    onPressed: () =>
                        context.goNamed(EnableLocationScreen.routeName),
                  ),
                  Space.h(8),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: AppTheme.textMediumRegular.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 17.sp,
                        color: Palette.blackText,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
