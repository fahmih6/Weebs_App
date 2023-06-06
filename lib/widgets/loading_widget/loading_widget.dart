import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weebs_app/global/assets_constant.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 200.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Image.asset(AssetsConstant.loadingGif, fit: BoxFit.cover),
      ),
    );
  }
}
