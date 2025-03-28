import 'package:flutter/material.dart';
import 'package:oop/core/theming/styles.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctor Speciality",
          style: TextStyles.font18blackbold,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            "See All",
            style: TextStyles.font12BlueRegular,
          ),
        ),
      ],
    );
  }
}
