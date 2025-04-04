import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:virtual_exhibition_app/models/categories_model.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';
import 'package:virtual_exhibition_app/routes/app_routes.dart';
import 'package:virtual_exhibition_app/views/home/widgets/app_bar_widget.dart';
import 'package:virtual_exhibition_app/views/home/widgets/bottom_navbar_widget.dart';
import 'package:virtual_exhibition_app/views/home/widgets/categories_widget.dart';
import 'package:virtual_exhibition_app/views/home/widgets/large_tiles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                "Good Morning, \nShahzain...",
                style: AppTypography.kBold24,
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
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
                    style: AppTypography.kLight12
                        .copyWith(color: AppColors.kSmokeColor),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h),
            SizedBox(
              height: 80.h,
              width: Get.width,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                itemCount: categoriesIcons.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                itemBuilder: (context, index) =>
                    CategoriesWidget(categoriesModel: categoriesIcons[index]),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exhibition", style: AppTypography.kBold18),
                  Text(
                    "See all",
                    style: AppTypography.kMedium12
                        .copyWith(color: AppColors.kSmokeColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 250.h,
              width: Get.width,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                separatorBuilder: (context, index) => SizedBox(width: 14.w),
                scrollDirection: Axis.horizontal,
                itemCount: tileModelList.length,
                itemBuilder: (context, index) {
                  return LargeTiles(
                    tileModel: tileModelList[index],
                    onTap: () {
                      Get.toNamed(
                        AppRoutes.detailScreen,
                        arguments: tileModelList[index],
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavbarWidget(),
    );
  }
}
/* 
Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20.w),
            //   child: FadeInUp(
            //     controller: (controller) => controller = controller,
            //     delay: const Duration(milliseconds: 500),
            //     child: AnimatedTextKit(
            //       isRepeatingAnimation: false,
            //       animatedTexts: [
            //         TyperAnimatedText(
            //           speed: const Duration(milliseconds: 150),
            //           "Top Destinations",
            //           textStyle: AppTypography.kBold20,
            //         ),
            //       ],
            //     ),
            //   ),
            // )
 */


/* 
FadeInUp(
                  controller: (controller) => controller = controller,
                  duration: const Duration(milliseconds: 1500),
                  child: LargeTiles(
                    tileModel: tileModelList[index],
                    onTap: () {
                      Get.toNamed(
                        AppRoutes.detailScreen,
                        arguments: tileModelList[index],
                      );
                    },
                  ),
                )
 */