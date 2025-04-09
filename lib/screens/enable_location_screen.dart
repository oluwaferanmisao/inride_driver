import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inride_driver/screens/payment_method_screen.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:go_router/go_router.dart';

//This is the screen that the user sees to enable location permission
class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({super.key});

  static String routeName = "EnableLocationScreen";

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
                "assets/images/location.png",
                fit: BoxFit.cover,
              ),
            ),
            Space.h(30),
            Column(
              children: [
                Text(
                  "Enable location",
                  textAlign: TextAlign.center,
                  style: AppTheme.displaySmallMedium
                      .copyWith(fontSize: 22, fontWeight: FontWeight.w800),
                ),
                Space.h(10),
                Text(
                  "To enable location, show we will know your location.",
                  textAlign: TextAlign.center,
                  style: AppTheme.textLargeRegular
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Space.h(30),
            Column(
              children: [
                CustomFilledButton(
                  label: "Enable Location",
                  onPressed: () =>
                      context.goNamed(PaymentMethodScreen.routeName),
                ),
                Space.h(8),
                const CustomOutlinedButton(
                  label: "Use Current Location",
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
