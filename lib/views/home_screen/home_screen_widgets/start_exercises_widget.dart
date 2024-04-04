import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_ui/common/widgets/custom_app_button.dart';
import 'package:vie_app_ui/utils/app_consts/app_assets.dart';
import 'package:vie_app_ui/utils/app_text_styles.dart';
import 'package:vie_app_ui/views/home_screen/home_screen_widgets/time_cal_widget.dart';

class StartExercises extends StatelessWidget {
  const StartExercises({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage(
                    AppAssets.iconBackground,
                  ),
                  fit: BoxFit.fitWidth)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          height: 310,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage(
                    AppAssets.iconBackground,
                  ),
                  fit: BoxFit.fitWidth)),
        ),
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage(
                    AppAssets.iconExercises,
                  ),
                  fit: BoxFit.fitWidth)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  'Face Massage',
                  style: AppTextStyles.kHeadingLargeDark,
                ),
                Text(
                  'Beginner Exercises',
                  style: AppTextStyles.kBodyLargeDark,
                ),
                const Gap(5),
                const TimeCaloriesWidget(),
                const Spacer(),
                const CustomAppButton(),
                const Gap(32),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
