import 'package:flutter_bloc/flutter_bloc.dart';

enum FormFieldStatus { empty, valid, invalid }

class FormFieldCubit extends Cubit<Map<String, FormFieldStatus>> {
  FormFieldCubit() : super({});
  void updateField(String fieldName, String value) {
    emit({
      ...state,
      fieldName: value.isEmpty ? FormFieldStatus.empty : FormFieldStatus.valid
    });
  }
}
