import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/bloc/homeworks/homework_cubit.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/shared/widgets/custom_appbar.dart';
import 'package:usthbin/features/homework/bloc/homework_type_cubit.dart';
import 'package:usthbin/models/homework/homework.dart';

import 'widgets/homework_card.dart';

part 'widgets/tab_bar.dart';

class HomeworkScreen extends StatelessWidget {
  static const routeName = '/homework';
  const HomeworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Homeworks homework = const Homeworks(
      name: 'Linked List',
      description: 'lorem',
      subject: 'Algorithmes',
      deadline: '2020-01-12 13:17',
      submission: ['123', '345'],
    );
    Homeworks homework2 = const Homeworks(
      name: 'Linked List',
      description: 'lorem',
      subject: 'Algorithmes',
      deadline: '2020-12-12 13:17',
    );

    return BlocProvider(
      create: (context) => HomeworksCubit(),
      child: BlocProvider(
        create: (context) => HomeworkTypeCubit(),
        child: Scaffold(
          appBar: const CustomAppBar(),
          body: BlocBuilder<HomeworksCubit, HomeworkState>(
            builder: (context, homeworks) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<HomeworksCubit>().getPosts();
                },
                child: Padding(
                  padding: kDefaultPadding,
                  child: Column(
                    children: [
                      const CustomTabBar(tabs: ['Undone', 'Done']),
                      SizedBox(height: 30.sp),
                      BlocBuilder<HomeworkTypeCubit, String>(
                        builder: (context, homeworkType) {
                          return Expanded(
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    if (homeworkType == 'Done') {
                                      return HomeworkCard(homework: homework);
                                    } else {
                                      return HomeworkCard(homework: homework2);
                                    }
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(height: 17.sp),
                                  itemCount: 10),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
