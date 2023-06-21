import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/constants/const.dart';

class FileCard extends StatelessWidget {
  final File file;
  final IconData suffixIcon;
  final IconData prefixIcon;
  final Color iconColor;
  final Function onTap;
  const FileCard(
      {super.key,
      required this.file,
      required this.suffixIcon,
      required this.onTap,
      required this.iconColor,
      required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 53.sp,
      padding: EdgeInsets.symmetric(horizontal: 14.sp, vertical: 14.sp),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Row(
        children: [
          Icon(
            prefixIcon,
            color: kBlack,
          ),
          SizedBox(width: 10.sp),
          Expanded(
            child: Text(
              file.path.split('/').last,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          InkWell(
            onTap: () => onTap(),
            child: Container(
              width: 25.sp,
              height: 25.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: iconColor,
              ),
              child: Icon(
                suffixIcon,
                color: kWhite,
                size: 17.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
