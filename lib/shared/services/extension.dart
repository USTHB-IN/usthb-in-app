import 'package:flutter/material.dart';
import 'package:usthbin/shared/widgets/navbar.dart';

extension ShowDialog on BuildContext {
  void showNavBar() {
    showDialog(
      context: this,
      builder: (context) => const MyNavBar(),
    );
  }
}

extension Navigation on BuildContext {
  void push(Widget page) {
    Navigator.of(this).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void pushReplacement(Widget page) {
    Navigator.of(this).pushReplacement(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void pushReplacementNamed(String page) {
    Navigator.of(this).pushReplacementNamed(
      page,
    );
  }

  void pushAndRemoveUntil(Widget page) {
    Navigator.of(this).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => page,
      ),
      (route) => false,
    );
  }

  void pushNamedAndRemoveUntil(String name) {
    Navigator.of(this).pushNamedAndRemoveUntil(name, (route) => false);
  }

  void pop() {
    Navigator.of(this).pop();
  }

  void pushNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }
}
