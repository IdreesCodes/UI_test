import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_ui/utils/app_consts/app_assets.dart';
import 'package:vie_app_ui/utils/app_text_styles.dart';
import 'package:vie_app_ui/utils/colors/color_constants.dart';

class TimeCaloriesWidget extends StatelessWidget {
  const TimeCaloriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 65,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConstants.primary,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.access_time_filled_sharp, size: 16),
                  Text('20min',
                      style: AppTextStyles.kHeadingSmallDark
                          .copyWith(fontSize: 15)),
                ],
              ),
            ),
          ),
          const Gap(3),
          Expanded(
            flex: 1,
            child: Container(
              width: 65,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConstants.primary,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.iconFire, height: 14, width: 14),
                  Text('20cal',
                      style: AppTextStyles.kHeadingSmallDark
                          .copyWith(fontSize: 15)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
