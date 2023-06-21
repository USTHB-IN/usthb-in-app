import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/features/homework/homework_screen_undone.dart';
import 'package:usthbin/features/homework/homework_screen_done.dart';
import 'package:usthbin/models/homework/homework.dart';
import 'package:usthbin/shared/services/extension.dart';

class HomeworkCard extends StatelessWidget {
  final Homeworks homework;
  const HomeworkCard({super.key, required this.homework});

  @override
  Widget build(BuildContext context) {
    final bool isDone;
    if (homework.submission.contains('123')) {
      isDone = true;
    } else {
      isDone = false;
    }
    return InkWell(
      onTap: () {
        if (isDone) {
          context.push(
            UpdateSubmission(homework: homework),
          );
        } else {
          context.push(
            SubmitHomework(homework: homework),
          );
        }
      },
      child: Container(
        width: double.infinity,
        height: 112.sp,
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: kBorderRadius,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  width: 52.sp,
                  height: 52.sp,
                  padding: EdgeInsets.all(12.sp),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kBlue,
                  ),
                  child: const Icon(
                    Icons.featured_play_list_rounded,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 17.sp),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      homework.name,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      homework.subject,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: kLightBlue),
                    ),
                  ],
                ))
              ],
            ),
            SizedBox(height: 8.sp),
            Row(
              children: [
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: kBorderRadius,
                    color: homework.deadline.isNotEmpty &&
                            !DateTime.now()
                                .difference(DateTime.parse(homework.deadline))
                                .isNegative
                        ? kLightBlue
                        : kGreen,
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
                  child: Text(
                    homework.deadline.isNotEmpty &&
                            !DateTime.now()
                                .difference(DateTime.parse(homework.deadline))
                                .isNegative
                        ? 'Deadline: ${DateFormat('dd/MM/yyyy hh:mm a').format(DateTime.parse(homework.deadline))}'
                        : 'Done',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
