import 'package:flutter/material.dart';
import 'package:inride_driver/screens/screens_barrel.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:go_router/go_router.dart';

//This is the screen where the driver indicates how many passengers their vehicle can carry
class PassengerChoiceScreen extends StatefulWidget {
  const PassengerChoiceScreen({super.key});

  static String routeName = "PassengerChoiceScreen";

  @override
  State<PassengerChoiceScreen> createState() => _PassengerChoiceScreenState();
}

class _PassengerChoiceScreenState extends State<PassengerChoiceScreen> {
  //For sample purposes, this will serve as the selection for the choice widgets
  int selectedChoice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 24,
          ),
        ),
        title: const Text(
          "Detail",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What type of vehicle do you use?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Space.h(24),
            CustomChoiceWithRadio(
              label: "1",
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
              label: "2",
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
              label: "3",
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
            Space.h(16),
            CustomChoiceWithRadio(
              label: "4",
              value: 4,
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
              label: "5",
              value: 5,
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
              label: "6",
              value: 6,
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
                onPressed: () => context.goNamed(TakePhotoScreen.routeName)),
          ],
        ),
      )),
    );
  }
}
