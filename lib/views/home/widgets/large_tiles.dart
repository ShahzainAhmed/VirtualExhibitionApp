import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';

class LargeTiles extends StatelessWidget {
  final VoidCallback onTap;
  final TileModel tileModel;
  const LargeTiles({
    super.key,
    required this.tileModel,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Hero(
        tag: tileModel.image,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 190.h,
              padding: const EdgeInsets.all(20),
              width: 170.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                image: DecorationImage(
                  image: AssetImage(tileModel.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "Michael Angelo's",
              style: AppTypography.kMedium14,
            ),
            SizedBox(height: 2.h),
            Text("May 23 - June 23",
                style: AppTypography.kLight12
                    .copyWith(color: AppColors.kBlackColor.withAlpha(100))),
          ],
        ),
      ),
    );
  }
}
