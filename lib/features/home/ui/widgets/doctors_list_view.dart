import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oop/core/helpers/spaces.dart';
import 'package:oop/core/theming/styles.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10, // Replace with your actual item count
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              // color: Colors.amber,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/images/doctor.png",
                    height: 120.h,
                    width: 110.w,
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      "Name",
                      style: TextStyles.font18blackbold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(5),
                    Text(
                      "Degree",
                      style: TextStyles.font12GrayRegular,
                    ),
                    verticalSpace(5),
                    Text(
                      "Email",
                      style: TextStyles.font12GrayRegular,
                    ),
                    verticalSpace(5),
                  ],
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
