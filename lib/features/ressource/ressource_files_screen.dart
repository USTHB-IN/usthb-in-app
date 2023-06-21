import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/shared/widgets/custom_appbar.dart';
import 'package:usthbin/shared/widgets/file_card.dart';

class RessourceFilesScreen extends StatelessWidget {
  static const String routeName = '/ressources/files';
  final String subjectName;
  final String year;
  final String type;
  final List<File> files;
  const RessourceFilesScreen(
      {super.key,
      required this.files,
      required this.type,
      required this.subjectName,
      required this.year});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: kDefaultPadding.copyWith(top: 20),
        child: Column(
          children: [
            Text(
              subjectName,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 24.sp),
            ),
            SizedBox(height: 5.sp),
            Row(
              children: [
                Text(
                  type,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: kLightBlue),
                ),
                SizedBox(width: 24.sp),
                Text(year, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            SizedBox(height: 30.sp),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => FileCard(
                    file: files[index],
                    suffixIcon: Icons.file_present_rounded,
                    onTap: () {},
                    iconColor: kBlue,
                    prefixIcon: Icons.download_for_offline_rounded),
                separatorBuilder: (context, index) => SizedBox(height: 20.sp),
                itemCount: files.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
