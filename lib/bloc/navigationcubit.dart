import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<String> {
  NavigationCubit() : super('Home');

  void home() {
    emit('Home');
  }

  void chat() {
    emit('Chat');
  }

  void homeworks() {
    emit('Homeworks');
  }

  void ressources() {
    emit('Ressources');
  }

  void exams() {
    emit('Exams');
  }

  void profile() {
    emit('Profile');
  }
}
