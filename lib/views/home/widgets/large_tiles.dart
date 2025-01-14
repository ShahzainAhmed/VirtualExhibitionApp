import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:virtual_exhibition_app/models/tile_model.dart';

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
        child: Container(
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
      ),
    );
  }
}
