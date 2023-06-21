import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usthbin/constants/const.dart';
import 'package:usthbin/models/homework/homework.dart';
import 'package:usthbin/shared/services/extension.dart';
import 'package:usthbin/shared/widgets/custom_appbar.dart';
import 'package:usthbin/shared/widgets/custom_button.dart';
import 'package:usthbin/shared/widgets/file_card.dart';

import 'bloc/files_cubit.dart';
import 'widgets/homework_card.dart';

class UpdateSubmission extends StatelessWidget {
  static const routeName = '/update-submission';
  final Homeworks homework;
  const UpdateSubmission({super.key, required this.homework});

  @override
  Widget build(BuildContext context) {
    Future<File?> addFile() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc'],
      );

      if (result != null) {
        File file = File(result.files.single.path!);
        return file;
      }
      return null;
    }

    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocProvider(
        create: (context) => FileCubit(),
        child: BlocBuilder<FileCubit, List<File>>(
          builder: (context, files) {
            return Padding(
              padding: kDefaultPadding.copyWith(top: 20, bottom: 20),
              child: Column(children: [
                HomeworkCard(homework: homework),
                SizedBox(height: 26.sp),
                CustomButton(
                  label: 'Add file',
                  icon: Icons.file_upload_outlined,
                  onTap: () async {
                    File? file = await addFile();
                    if (file != null) context.read<FileCubit>().addFile(file);
                  },
                ),
                SizedBox(height: 26.sp),
                Expanded(
                  child: ListView.separated(
                    itemCount: files.length,
                    itemBuilder: (context, index) {
                      return FileCard(
                        file: files[index],
                        onTap: () =>
                            context.read<FileCubit>().removeFile(files[index]),
                        suffixIcon: Icons.close,
                        iconColor: kRed,
                        prefixIcon: Icons.upload_file_rounded,
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 12.sp),
                  ),
                ),
                SizedBox(height: 19.sp),
                CustomButton(
                  label: 'Update Now',
                  onTap: () => context.pop(),
                ),
              ]),
            );
          },
        ),
      ),
    );
  }
}
