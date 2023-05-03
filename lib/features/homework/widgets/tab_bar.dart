import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/features/homework/bloc/homework_type_cubit.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabs;
  final Color bgColor;
  final Color selectiveColor;
  const CustomTabBar(
      {super.key,
      required this.tabs,
      this.bgColor = Colors.white,
      this.selectiveColor = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeworkTypeCubit, String>(
      builder: (context, state) {
        return Container(
          height: 50.sp,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: kBorderRadius,
            color: bgColor,
          ),
          child: TabBar(
            padding: EdgeInsets.all(5.sp),
            indicator: BoxDecoration(
              borderRadius: kBorderRadius,
              color: selectiveColor,
            ),
            tabs: List.generate(tabs.length, (index) => Tab(text: tabs[index])),
          ),
        );
      },
    );
  }
}
