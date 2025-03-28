import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oop/core/theming/colors_manager.dart';
import 'package:oop/core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi,Omar!",
              style: TextStyles.font18blackbold,
            ),
            Text(
              "How Are you Today?",
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.moreLightergray,
          child: SvgPicture.asset('assets/svgs/notification.svg'),
        )
      ],
    );
  }
}
