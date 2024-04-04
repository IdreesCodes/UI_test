import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vie_app_ui/utils/app_text_styles.dart';
import 'package:vie_app_ui/views/progress_screen/progress_screen_widgets/area_analysis_widget.dart';
import 'package:vie_app_ui/views/progress_screen/progress_screen_widgets/history_workout_widget.dart';
import 'package:vie_app_ui/views/progress_screen/progress_screen_widgets/report_widget.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Progress Report',
                  style: AppTextStyles.kHeadingLargeDark,
                ),
                const Gap(10),
                const DailyReportWidget(),
                const Gap(10),
                const AreaAnalysisWidget(),
                const Gap(10),
                const HistoryWorkoutWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
