import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';
import 'package:virtual_exhibition_app/routes/app_routes.dart';
import 'package:virtual_exhibition_app/views/home/widgets/app_bar_widget.dart';
import 'package:virtual_exhibition_app/views/home/widgets/bottom_navbar_widget.dart';
import 'package:virtual_exhibition_app/views/home/widgets/large_tiles.dart';
import 'package:virtual_exhibition_app/views/home/widgets/search_bar_widget.dart';

class ExhibitionScreen extends StatelessWidget {
  const ExhibitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: AppBarWidget(),
      ),
      body: Column(
        children: [
          SizedBox(height: 10.h),
          SearchBarWidget(),
          SizedBox(height: 20.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14.w,
                  childAspectRatio: 0.54,
                ),
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
          )
        ],
      ),
    );
  }
}
