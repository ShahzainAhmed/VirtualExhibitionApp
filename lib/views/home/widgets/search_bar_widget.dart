import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: AppColors.kSmokeColor.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: ListTile(
          minVerticalPadding: 0,
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            CupertinoIcons.search,
            color: AppColors.kGreyColor.withValues(alpha: 0.6),
          ),
          title: Text(
            "Search exhibition, event, or artwork...",
            style:
                AppTypography.kLight12.copyWith(color: AppColors.kSmokeColor),
          ),
        ),
      ),
    );
  }
}
