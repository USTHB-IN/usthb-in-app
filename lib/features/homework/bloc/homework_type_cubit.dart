import 'package:flutter_bloc/flutter_bloc.dart';

class HomeworkTypeCubit extends Cubit<String> {
  HomeworkTypeCubit() : super('Undone');

  void undone() {
    emit('Undone');
  }

  void done() {
    emit('Done');
  }

  void value(String value) {
    emit(value);
  }
}
