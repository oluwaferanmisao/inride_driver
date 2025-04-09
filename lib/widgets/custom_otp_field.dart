import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This widget is the textfield used to enter OTP
class CustomOtpField extends StatefulWidget {
  const CustomOtpField({
    super.key,
  });

  @override
  State<CustomOtpField> createState() => _CustomOtpFieldState();
}

class _CustomOtpFieldState extends State<CustomOtpField> {
  // final TextEditingController _pin = TextEditingController();
  final pin = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          6,
          (index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.12,
              height: MediaQuery.of(context).size.height * 0.07,
              child: TextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                onSaved: (newValue) {
                  pin.add(newValue);
                },
                style: AppTheme.textLargeRegular,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  hintText: "$index",
                  border: OutlineInputBorder(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
