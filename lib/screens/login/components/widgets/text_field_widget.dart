import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 312.w,
      height: 40.h,
      child: TextFormField(
        decoration: InputDecoration(
          // fillColor: Theme.of(context).,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.w,
            ),
          ),
        ),
      ),
    );
  }
}
