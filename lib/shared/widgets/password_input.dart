import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usthbin/bloc/togglecubit.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class PasswordInput extends StatelessWidget {
  final String? initialValue;
  final String? hintText;
  final Map<String, dynamic>? data;
  final String? Function(String?)? validator;
  final String? mapKey;
  const PasswordInput(
      {super.key,
      this.hintText,
      this.initialValue,
      this.data,
      this.validator,
      this.mapKey});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ToggleCubit(),
      child: BlocBuilder<ToggleCubit, bool>(
        builder: (context, state) {
          return TextFormField(
            autocorrect: false,
            obscureText: !state,
            style: Theme.of(context).textTheme.bodyMedium,
            initialValue: initialValue,
            onSaved: (newValue) => data!['password'] = newValue!,
            validator: validator,
            enableSuggestions: false,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: hintText,
                suffixIcon: IconButton(
                  icon: Icon(state ? IconlyLight.show : IconlyLight.hide),
                  onPressed: () {
                    context.read<ToggleCubit>().toggle();
                  },
                ),
                hintStyle: Theme.of(context).textTheme.labelSmall,
                errorStyle: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: Colors.red)),
          );
        },
      ),
    );
  }
}
