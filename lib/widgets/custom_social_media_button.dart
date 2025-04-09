import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This widget is the button used for social media sign up/signin
class CustomSocialMediaButton extends StatelessWidget {
  const CustomSocialMediaButton({
    super.key,
    required this.path,
    this.function,
  });

  //This will be the icon of the button
  final String path;

  //This will be the function of the button
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .20,
      height: MediaQuery.of(context).size.width * .20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
            color: Palette.accentTextColor.withValues(alpha: 0.1), width: 2),
        borderRadius: BorderRadius.all(Radius.circular(
          MediaQuery.of(context).size.width * .05,
        )), // Incase this breaks, remove MediaQuery.of(context).size.width * .02, and put 10
      ),
      child: TextButton(onPressed: function, child: Image.asset(path)),
    );
  }
}
