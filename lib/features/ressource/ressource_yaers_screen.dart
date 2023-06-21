import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/features/ressource/ressource_files_screen.dart';
import 'package:usthbin/features/ressource/widget/ressource_card.dart';
import 'package:usthbin/shared/services/extension.dart';
import 'package:usthbin/shared/widgets/custom_appbar.dart';

class RessourceYearScreen extends StatelessWidget {
  static const String routeName = '/ressources/year';
  final String subjectName;
  const RessourceYearScreen({super.key, required this.subjectName});

  @override
  Widget build(BuildContext context) {
    // Search Controller
    final TextEditingController searchController = TextEditingController();

    // Years
    const List<String> years = [
      '2023',
      '2022',
      '2021',
      '2020',
      '2019',
      '2018',
      '2017',
      '2016',
    ];

    final List<Color> colors = [kOrange, kGreeny, kViolet];

    final List<File> files = [
      File('/assets/images/usthb.png'),
      File('/assets/images/login.svg'),
      File('/assets/images/logo_splash.png.png'),
      File('/assets/images/usthb.png'),
      File('/assets/images/login.svg'),
      File('/assets/images/logo_splash.png.png'),
    ];

    return Scaffold(
        appBar: const CustomAppBar(),
        body: Padding(
          padding: kDefaultPadding.copyWith(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  subjectName,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 24.sp),
                ),
                SizedBox(height: 25.sp),
                Expanded(
                    flex: 10,
                    child: ListView.separated(
                      itemBuilder: (context, index) => RessourceCard(
                        onTap: () {
                          context.push(RessourceFilesScreen(files: files, type: , subjectName: subjectName, year: year))
                        },
                        subjectName: years[index],
                        bgColor: colors[index % 3],
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 18,
                      ),
                      itemCount: years.length,
                    ))
              ],
            ),
          ),
        ));
  }
}
