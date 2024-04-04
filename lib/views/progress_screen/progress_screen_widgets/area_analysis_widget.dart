import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_ui/common/widgets/custom_analysis_widget.dart';
import 'package:vie_app_ui/utils/app_consts/app_assets.dart';

import '../../../utils/app_text_styles.dart';
import '../../../utils/colors/color_constants.dart';

class AreaAnalysisWidget extends StatelessWidget {
  const AreaAnalysisWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.secondary,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Area Analysis',
              style: AppTextStyles.kBodyLargeDark.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black87.withOpacity(0.8),
              ),
            ),
            Text(
              'Focus on specific areas that require extra attention.',
              style: AppTextStyles.kBodyMediumDark,
            ),
            Gap(15),
            CustomAnalysisWidget(
                firstImageAsset: AppAssets.iconForeheadd,
                firstTitle: "Forehead",
                secondImageAsset: AppAssets.iconLip,
                secondTitle: "Lips"),
            Gap(15),
            CustomAnalysisWidget(
                firstImageAsset: AppAssets.iconNoses,
                firstTitle: "Nose",
                secondImageAsset: AppAssets.iconEye,
                secondTitle: "Eye"),
            Gap(15),
            CustomAnalysisWidget(
                firstImageAsset: AppAssets.iconJaw,
                firstTitle: "Jaws",
                secondImageAsset: AppAssets.iconCheek,
                secondTitle: "Cheeks")
          ],
        ),
      ),
    );
  }
}
