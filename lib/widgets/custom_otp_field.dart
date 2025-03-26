import 'package:flutter/material.dart';

//This widget is the textfield used to enter OTP
class CustomOtpField extends StatelessWidget {
  const CustomOtpField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.12,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(width: 2, color: const Color(0xFFDFE2E8)),
      ),
      // child: TextField(),
    );
  }
}
