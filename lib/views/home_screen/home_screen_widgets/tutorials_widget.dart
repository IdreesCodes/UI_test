import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../common/widgets/custom_app_button.dart';
import '../../../utils/app_consts/app_assets.dart';
import '../../../utils/app_text_styles.dart';


class TutorialsWidget extends StatelessWidget {
  const TutorialsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      clipBehavior: Clip.hardEdge,
      width: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(AppAssets.iconBackgroundBlue),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              child: Image.asset(
                AppAssets.iconPersonRed,
                fit: BoxFit.fitWidth,
                width: 140,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  'Face Care',
                  style: AppTextStyles.kHeadingLargeDark,
                ),
                Text(
                  'See Tutorials',
                  style: AppTextStyles.kBodyLargeDark,
                ),
                const Gap(5),
                const Spacer(),
                const CustomAppButton(),
                const Gap(15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
