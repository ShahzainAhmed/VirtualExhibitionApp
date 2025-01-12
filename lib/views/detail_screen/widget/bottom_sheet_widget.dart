import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';

class BottomSheetWidget extends StatelessWidget {
  final String price;
  const BottomSheetWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Price",
                style: AppTypography.kLight16.copyWith(
                  color: AppColors.kDarkGreyColor.withValues(alpha: 0.8),
                ),
              ),
              Text(
                price,
                style: AppTypography.kExtraBold30.copyWith(
                  color: AppColors.kBlackColor,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Bounce(
                child: CircleAvatar(
                  radius: 38.r,
                  backgroundColor: AppColors.kBlackColor,
                  child: const Center(
                    child: Icon(
                      size: 40,
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
