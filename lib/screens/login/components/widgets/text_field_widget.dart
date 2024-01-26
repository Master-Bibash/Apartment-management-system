import 'package:flutter/material.dart';
import 'package:flutter_apartmentmanagementsystem_1/screens/login/components/widgets/Bloc/inpuit_user_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    required this.controller,
    required this.type,
    required this.hinttext,
    required this.valid,
    required this.fieldName,
  });

  TextEditingController controller;
  TextInputType type;
  String hinttext;
  String Function(String?) valid;
  final String fieldName;

  final _formFieldCubit = FormFieldCubit();

  @override
  Widget build(BuildContext context) {
    print('build');
    ThemeData theme = Theme.of(context);

    return BlocBuilder<FormFieldCubit, Map<String, FormFieldStatus>>(
      bloc: _formFieldCubit,
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) {

            _formFieldCubit.updateField(fieldName, value);
          },
          validator: valid,
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical(y: -0.10),
          keyboardType: type,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey,
            decoration: TextDecoration.none,
          ),
          controller: controller,
          decoration: InputDecoration(
            errorStyle: TextStyle(
              decorationStyle: TextDecorationStyle.solid,
            ),
            // errorText: "asdasdasd",
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: controller.text.isEmpty 
                    ? Colors.red
                    : Colors.white,
                width: 2.w,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color:  controller.text.isEmpty == FormFieldStatus.empty
                    ? Colors.red
                    : Colors.white,
                width: 3.w,
              ),
            ),
            hintText: hinttext,
            hintStyle: TextStyle(
              color: theme.hintColor,
            ),
            contentPadding: EdgeInsets.all(12),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color:  controller.text.isEmpty == FormFieldStatus.empty
                    ? Colors.red
                    : Colors.white,
                width: 3.w,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: state[fieldName]?.name == FormFieldStatus.empty
                    ? Colors.red
                    : Colors.white,
                width: 3.w,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
        );
      },
    );
  }
}
