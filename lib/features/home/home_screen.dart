import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:usthbin/bloc/homeworks/homework_cubit.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/features/home/models/opportunities/opportunities.dart';
import 'package:usthbin/shared/widgets/custom_appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usthbin/features/home/bloc/announcements/announcements_cubit.dart';
import 'package:usthbin/shared/widgets/custom_image.dart';
import 'package:usthbin/shared/widgets/side_rect.dart';

import 'bloc/opportunities/opportunities_cubit.dart';

part './widgets/announcements.dart';
part './widgets/homeworks.dart';
part './widgets/opportunities.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: Container(
          width: ScreenUtil().setWidth(393),
          height: ScreenUtil().setHeight(852),
          padding: kDefaultPadding,
          child: SingleChildScrollView(
            child: Column(
              children: const [],
            ),
          ),
        ));
  }
}
