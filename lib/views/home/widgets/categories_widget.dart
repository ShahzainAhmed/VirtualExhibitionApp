import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:virtual_exhibition_app/models/categories_model.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';

class CategoriesWidget extends StatelessWidget {
  final CategoriesModel categoriesModel;
  const CategoriesWidget({super.key, required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 34.r,
          backgroundColor: AppColors.kBlackColor,
          child: Icon(categoriesModel.icon,
              color: AppColors.kWhiteColor, size: 34),
        ),
        SizedBox(height: 6.h),
        Text(
          categoriesModel.title,
          style: AppTypography.kMedium10,
          selectionColor: AppColors.kBlackColor,
        ),
      ],
    );
  }
}
