import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/resources/app_typography.dart';
import 'package:virtual_exhibition_app/routes/app_routes.dart';
import 'package:virtual_exhibition_app/views/home/widgets/bottom_navbar_widget.dart';
import 'package:virtual_exhibition_app/views/home/widgets/large_tiles.dart';
import 'package:virtual_exhibition_app/views/home/widgets/tabbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleSpacing: 20.w,
        title: AnimatedTextKit(
          isRepeatingAnimation: false,
          animatedTexts: [
            TyperAnimatedText(
              "Discover",
              textStyle: AppTypography.kBold22,
              speed: const Duration(milliseconds: 150),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const Icon(
              CupertinoIcons.search,
              color: AppColors.kBlackColor,
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            FadeInUp(
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 300),
              child: const TabbarWidget(),
            ),
            SizedBox(height: 26.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exhibition", style: AppTypography.kBold16),
                  Text(
                    "See all",
                    style: AppTypography.kMedium12
                        .copyWith(color: AppColors.kSmokeColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 200.h,
              width: Get.width,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                separatorBuilder: (context, index) => SizedBox(width: 14.w),
                scrollDirection: Axis.horizontal,
                itemCount: tileModelList.length,
                itemBuilder: (context, index) {
                  return FadeInUp(
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
