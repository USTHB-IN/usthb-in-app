import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:usthbin/constants/const.dart';

class Loading extends StatelessWidget {
  final Color color;
  const Loading({super.key, this.color = kBlue});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
          child: Column(
        children: [
          SvgPicture.asset(
            '${images}logo_splash.svg',
            width: 100.sp,
            height: 100.sp,
          ),
        ],
      )),
    );
  }
}
