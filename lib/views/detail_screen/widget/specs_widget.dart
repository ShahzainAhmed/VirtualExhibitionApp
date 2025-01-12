import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';
class SpecsWidget extends StatelessWidget {
  final String title;
  final String value;

  const SpecsWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 80.h,
      width: 90.w,
      decoration: BoxDecoration(
        color: AppColors.kBackgroundColor,
        border: Border.all(
          color: AppColors.kDarkGreyColor.withValues(alpha: 0.5),
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTypography.kLight12.copyWith(
              color: AppColors.kBlackColor,
            ),
          ),
          Text(
            value,
            style: AppTypography.kExtraBold18.copyWith(
              color: AppColors.kSkyBlue,
            ),
          ),
        ],
      ),
    );
  }
}
