import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oop/core/helpers/spaces.dart';
import 'package:oop/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:oop/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:oop/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:oop/features/home/ui/widgets/doctors_list_view.dart';
import 'package:oop/features/home/ui/widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              verticalSpace(10.h),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorSpecialitySeeAll(),
              verticalSpace(8.h),
              const DoctorSpecialityListView(),
              verticalSpace(8.h),
              const DoctorsListView()
            ],
          ),
        ),
      ),
    );
  }
}
