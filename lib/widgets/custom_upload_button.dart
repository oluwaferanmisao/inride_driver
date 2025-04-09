import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:dotted_border/dotted_border.dart';

//This is an upload button with a dotted container
class CustomUploadButton extends StatelessWidget {
  const CustomUploadButton({
    super.key,
    required this.icon,
    required this.label,
  });

  //This is the icon of the button
  final IconData icon;

  //This is the label of the button
  final String label;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        borderPadding: EdgeInsets.all(5),
        borderType: BorderType.RRect,
        radius: Radius.circular(MediaQuery.of(context).size.width * .02),
        color: Palette.accentTextColor,
        strokeWidth: 1,
        child: SizedBox(
          width: 112.66.w,
          height: 82.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Palette.accentTextColor,
                size: 25.h,
              ),
              // SizedBox(height: MediaQuery.of(context).size.height * .01),
              Text(
                label,
                softWrap: true,
                textAlign: TextAlign.center,
                style: AppTheme.textSmallRegular.copyWith(
                  letterSpacing: 0,
                ),
              ),
            ],
          ),
        ));
  }
}
