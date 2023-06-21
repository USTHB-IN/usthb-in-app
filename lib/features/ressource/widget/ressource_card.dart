import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/constants/const.dart';

class RessourceCard extends StatelessWidget {
  final String subjectName;
  final Color bgColor;
  final Function onTap;
  const RessourceCard(
      {super.key,
      required this.subjectName,
      required this.bgColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap(),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 35.sp),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Center(
          child: Text(
            subjectName,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: kWhite),
          ),
        ),
      ),
    );
  }
}
