import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oop/core/helpers/spaces.dart';
import 'package:oop/core/theming/colors_manager.dart';
import 'package:oop/core/theming/styles.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 32.r,
                  backgroundColor: ColorsManager.lightblue,
                  child: SvgPicture.asset(
                    'assets/svgs/doctor_svg.svg',
                    fit: BoxFit.fill,
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                verticalSpace(8),
                Text(
                  "Specialization",
                  style: TextStyles.font12DarkRegular,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
