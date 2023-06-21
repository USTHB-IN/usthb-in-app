import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

class FileCubit extends Cubit<List<File>> {
  FileCubit() : super([]);

  void addFile(File file) {
    List<File> files = state;
    files.add(file);
    emit([]);
    emit(files);
  }

  void removeFile(File file) {
    List<File> files = state;
    files.remove(file);
    emit([]);
    emit(files);
  }

  void clear() {
    emit([]);
  }
  
}
