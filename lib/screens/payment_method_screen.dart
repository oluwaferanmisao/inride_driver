import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inride_driver/screens/screens_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:go_router/go_router.dart';

//This is the screen where the user will choose their preferred mode of payment
class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  static String routeName = "PaymentSelectionSCreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "How would you like to be paid",
                softWrap: true,
                style: AppTheme.displaySmallBold.copyWith(fontSize: 22.sp),
              ),
              Space.h(10),
              Text(
                "The amount will be deposited to your account once the trip is completed.",
                style: AppTheme.textLargeRegular.copyWith(fontSize: 18.sp),
              ),
              Space.h(24),
              CustomChoiceListTile(
                leading: Icons.money_rounded,
                title: "Cash",
                subtitle: "Traditional payment method using physical currency.",
                onTap: () => context.goNamed(VehicleChoiceScreen.routeName),
              ),
              Space.h(16),
              CustomChoiceListTile(
                leading: Icons.attach_money_rounded,
                title: "Bank Transfers",
                subtitle:
                    "Transfer funds electronically between bank accounts.",
                onTap: () => context.goNamed(VehicleChoiceScreen.routeName),
              ),
              Space.h(16),
              CustomChoiceListTile(
                leading: Icons.wallet_rounded,
                title: "Mobile Wallet",
                subtitle:
                    "Digital wallets linked to credit cards, debit cards, or bank accounts.",
                onTap: () => context.goNamed(VehicleChoiceScreen.routeName),
              ),
              Space.h(71),
              Center(
                child: Text(
                  "Don't worry, we don't store your payment information",
                  textAlign: TextAlign.center,
                  style: AppTheme.textSmallRegular
                    ..copyWith(
                      color: Color(0xff767676),
                      fontSize: 18,
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomChoiceListTile extends StatelessWidget {
  const CustomChoiceListTile({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  //This is the leading icon for the tile
  final IconData leading;

  //This is the title of the tile
  final String title;

  //This is the subtitle of the tile
  final String subtitle;

  //This is the function of the listtile
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.w,
      height: 92.h,
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x331976D2),
            spreadRadius: 1,
            blurRadius: 100,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          leading,
          size: 30.w,
          color: Palette.accentTextColor,
        ),
        title: Text(
          title,
          style: AppTheme.textSmallBold,
        ),
        subtitle: Text(
          subtitle,
          style: AppTheme.textSmallRegular,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 24.w,
          color: Color(0xff1d1d1d),
        ),
      ),
    );
  }
}
