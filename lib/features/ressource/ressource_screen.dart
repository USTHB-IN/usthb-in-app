import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/features/ressource/widget/ressource_card.dart';
import 'package:usthbin/features/ressource/widget/search_bar.dart';
import 'package:usthbin/shared/services/extension.dart';
import 'package:usthbin/shared/widgets/custom_appbar.dart';

import 'ressource_yaers_screen.dart';

class RessourceScreen extends StatelessWidget {
  static const String routeName = '/ressources';
  const RessourceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Search Controller
    final TextEditingController searchController = TextEditingController();

    // Subjects Names
    const List<String> subjectNames = [
      'Web Développement',
      'Graph Theory',
      'Network and Telecommunication',
      'Computer Networks',
      'Operating Systems',
      'Artificial Intelligence',
    ];

    final List<Color> colors = [kOrange, kGreeny, kViolet];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: kDefaultPadding.copyWith(top: 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Explore a variety of classes and topics to enhance your university learning experience and broaden your knowledge horizons.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 25.sp),
            CustomSearchBar(
              controller: searchController,
              onTap: () {},
              hintText: 'Search',
              suffixIcon: Icons.search_rounded,
            ),
            SizedBox(height: 25.sp),
            Flexible(
                flex: 10,
                child: ListView.separated(
                  itemBuilder: (context, index) => RessourceCard(
                    onTap: () {
                      context.push(RessourceYearScreen(
                          subjectName: subjectNames[index]));
                    },
                    subjectName: subjectNames[index],
                    bgColor: colors[index % 3],
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 18.sp,
                  ),
                  itemCount: subjectNames.length,
                ))
          ],
        ),
      ),
    );
  }
}
