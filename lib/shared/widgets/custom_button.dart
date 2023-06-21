import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/constants/const.dart';

class CustomButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final Function()? onTap;
  const CustomButton({Key? key, this.icon, required this.label, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 198.sp,
        padding: EdgeInsets.symmetric(horizontal: 40.sp, vertical: 12.sp),
        decoration: BoxDecoration(
          color: kBlue,
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: kWhite),
            ),
            if (icon != null)
              Expanded(
                child: Row(
                  children: [
                    const Spacer(),
                    Container(
                      width: 25.sp,
                      height: 25.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: kWhite,
                      ),
                      child: Icon(
                        icon,
                        color: kBlue,
                        size: 17.sp,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
