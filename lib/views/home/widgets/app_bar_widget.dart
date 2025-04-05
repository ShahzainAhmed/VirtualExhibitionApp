import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:virtual_exhibition_app/resources/app_assets.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';
import 'package:virtual_exhibition_app/routes/app_routes.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.kBlackColor,
            child: GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.aboutScreen),
              child: Icon(
                Icons.grid_view_outlined,
                color: AppColors.kWhiteColor,
                size: 20,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                "Current location",
                style: AppTypography.kMedium12
                    .copyWith(color: AppColors.kBlackColor.withAlpha(100)),
              ),
              Row(
                children: [
                  Icon(CupertinoIcons.location_solid, size: 14),
                  SizedBox(width: 4.w),
                  Text("Birmingham, UK", style: AppTypography.kBold12),
                ],
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: AppColors.kBackgroundColor,
            backgroundImage: AssetImage(AppAssets.kProfile),
          ),
        ],
      ),
    );
  }
}
