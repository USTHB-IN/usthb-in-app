import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideRectangle extends StatelessWidget {
  final Color color;
  const SideRectangle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12.sp,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(3.sp),
        ),
      ),
    );
  }
}
