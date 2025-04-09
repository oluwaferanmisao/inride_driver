import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inride_driver/screens/passenger_choice_screen.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:go_router/go_router.dart';

//This is the screen where the user picks their preferred vehcile for providing their service
class VehicleChoiceScreen extends StatefulWidget {
  const VehicleChoiceScreen({super.key});

  static String routeName = "VehicleChoiceScreen";

  @override
  State<VehicleChoiceScreen> createState() => _VehicleChoiceScreenState();
}

class _VehicleChoiceScreenState extends State<VehicleChoiceScreen> {
  //For sample purposes, this is the overall value for this list of CustomChoiceWithRadio list
  int selectedChoice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24.sp,
          ),
        ),
        title: Text(
          "Detail",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What type of vehicle do you use?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Space.h(24),
            CustomChoiceWithRadio(
              label: "Car",
              value: 1,
              groupValue: selectedChoice,
              function: (newValue) {
                setState(
                  () {
                    selectedChoice = newValue;
                  },
                );
              },
            ),
            Space.h(16),
            CustomChoiceWithRadio(
              label: "Tricycle",
              value: 2,
              groupValue: selectedChoice,
              function: (newValue) {
                setState(
                  () {
                    selectedChoice = newValue;
                  },
                );
              },
            ),
            Space.h(16),
            CustomChoiceWithRadio(
              label: "Bus",
              value: 3,
              groupValue: selectedChoice,
              function: (newValue) {
                setState(
                  () {
                    selectedChoice = newValue;
                  },
                );
              },
            ),
            const Spacer(),
            CustomFilledButton(
                label: "Next",
                onPressed: () =>
                    context.goNamed(PassengerChoiceScreen.routeName)),
          ],
        ),
      )),
    );
  }
}
