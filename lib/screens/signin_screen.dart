import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This is the screen where the user logs in from
class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  static String routeName = "SignInPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, size: 24.h),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomOnboardingHeader(),
                Space.h(8),
                const CustomSignInForm(),
                Space.h(46),
                const CustomAltSignInOptions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
