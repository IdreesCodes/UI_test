import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_ui/utils/app_consts/app_assets.dart';
import 'package:vie_app_ui/utils/app_text_styles.dart';
import 'package:vie_app_ui/utils/colors/color_constants.dart';
import 'package:vie_app_ui/views/home_screen/home_screen_widgets/time_cal_widget.dart';

class ExerciseTypeWidget extends StatelessWidget {
  const ExerciseTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.5,
                mainAxisSpacing: 18.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  clipBehavior: Clip.hardEdge,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(AppAssets.iconBackgroundTypes),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          AppAssets.iconLips,
                          fit: BoxFit.fitWidth,
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lips', style: AppTextStyles.kHeadingMediumDark),
                            const Gap(3),
                            Text('Shape your lips with Yoga', style: AppTextStyles.kBodySmallDark),
                            const Gap(3),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: ColorConstants.primary,
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.access_time_filled_sharp, size: 14),
                                          Text('20min', style: AppTextStyles.kHeadingSmallDark),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Gap(3),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: ColorConstants.primary,
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(AppAssets.iconFire, height: 12, width: 12),
                                          Text('20cal', style: AppTextStyles.kHeadingSmallDark),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Gap(15),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      );













  }
}
