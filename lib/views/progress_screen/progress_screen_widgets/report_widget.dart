import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_ui/utils/app_text_styles.dart';
import 'package:vie_app_ui/utils/colors/color_constants.dart';

class DailyReportWidget extends StatelessWidget {
  const DailyReportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.secondary),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                'Total Days    ',
                style: AppTextStyles.kBodyMediumDark,
              ),
              Text(
                '1',
                style: AppTextStyles.kHeadingLargeDark,
              ),
            ],
          ),
          Container(
              width: 1,
              height: 50,
              color: ColorConstants.black.withOpacity(0.2)),
          Row(
            children: [
              Text(
                'Workout    ',
                style: AppTextStyles.kBodyMediumDark,
              ),
              Text(
                '6',
                style: AppTextStyles.kHeadingLargeDark,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
