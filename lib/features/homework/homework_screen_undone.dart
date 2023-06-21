import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/models/homework/homework.dart';
import 'package:usthbin/shared/widgets/custom_appbar.dart';
import 'package:usthbin/shared/widgets/file_card.dart';

import '../../shared/widgets/custom_button.dart';
import 'widgets/homework_card.dart';

class SubmitHomework extends StatelessWidget {
  static const routeName = '/submit-homework';
  final Homeworks homework;
  const SubmitHomework({super.key, required this.homework});

  @override
  Widget build(BuildContext context) {
    final File file = File('assets/images/usthbin.png');

    return Scaffold(
        appBar: const CustomAppBar(),
        body: Padding(
          padding: kDefaultPadding.copyWith(top: 20, bottom: 20),
          child: Column(children: [
            HomeworkCard(homework: homework),
            SizedBox(height: 10.sp),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: kBorderRadius,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Text(
                      homework.description,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.sp),
            FileCard(
              file: file,
              suffixIcon: Icons.downloading_rounded,
              onTap: () {},
              iconColor: kBlue,
              prefixIcon: Icons.insert_drive_file_rounded,
            ),
            SizedBox(height: 10.sp),
            CustomButton(
              label: 'Submit Now',
              onTap: () {},
            ),
          ]),
        ));
  }
}
