import 'package:flutter/material.dart';
import 'package:usthbin/shared/widgets/custom_appbar.dart';

class HomeworkScreen extends StatelessWidget {
  static const routeName = '/homework';
  const HomeworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Placeholder(),
      ),
    );
  }
}
