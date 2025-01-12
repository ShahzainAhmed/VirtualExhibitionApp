import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';


class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      splashBorderRadius: BorderRadius.circular(20.r),
      tabAlignment: TabAlignment.start,
      dividerColor: AppColors.kTransparentColor,
      padding: EdgeInsets.zero,
      isScrollable: true,
      indicatorPadding: EdgeInsets.zero,
      labelPadding: EdgeInsets.symmetric(horizontal: 23.w),
      labelColor: AppColors.kBlackColor,
      unselectedLabelColor: AppColors.kDarkGreyColor,
      labelStyle: AppTypography.kBold16,
      unselectedLabelStyle: AppTypography.kMedium16,
      indicatorColor: AppColors.kBlackColor,
      indicatorSize: TabBarIndicatorSize.label,
      tabs: const [
        Tab(text: "Jungle"),
        Tab(text: "Beach"),
        Tab(text: "Mountain"),
        Tab(text: "Water"),
        Tab(text: "River")
      ],
    );
  }
}
