import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onTap: onTap,
      duration: const Duration(milliseconds: 100),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: Get.width,
          height: 55.h,
          decoration: BoxDecoration(
            color: AppColors.kBlackColor,
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Center(
            child: Text(
              title,
              style:
                  AppTypography.kBold16.copyWith(color: AppColors.kWhiteColor),
            ),
          ),
        ),
      ),
    );
  }
}



/* 
Bounce(
      onTap: onTap,
      duration: const Duration(milliseconds: 100),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: Get.width,
          height: 90.h,
          decoration: BoxDecoration(
            color: AppColors.kBlackColor,
            borderRadius: BorderRadius.circular(borderRadius.r),
          ),
          child: Center(
            child: Text(
              title,
              style: AppTypography.kBold16.copyWith(color: AppColors.kWhiteColor),
            ),
          ),
        ),
      ),
    )
 */
