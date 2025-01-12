import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';


class SmallTiles extends StatelessWidget {
  final VoidCallback onTap;
  final TileModel tileModel;
  const SmallTiles({super.key, required this.tileModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65.h,
        width: 160.w,
        decoration: BoxDecoration(
          color: AppColors.kDarkGreyColor.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(22.r),
              child: Image.asset(
                tileModel.image,
                fit: BoxFit.cover,
                width: 74.w,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileModel.title,
                    style: AppTypography.kBold14,
                  ),
                  Text(
                    "Brazil",
                    style: AppTypography.kLight12.copyWith(
                      color: AppColors.kDarkGreyColor.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
