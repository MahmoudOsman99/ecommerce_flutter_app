import 'package:flutter/material.dart';

class MainTextFormField extends StatelessWidget {
  MainTextFormField({
    super.key,
    this.hintText,
    this.controller,
    this.isPassword,
    this.isReadOnly,
    this.onvalidate,
    this.prefixIcon,
    this.radius,
    this.suffixIcon,
    this.inputType,
    this.focusNode,
    this.textInputAction,
    this.onEditingComplete,
  });

  String? hintText;
  TextEditingController? controller;
  Icon? prefixIcon;
  Icon? suffixIcon;
  bool? isReadOnly;
  bool? isPassword;
  double? radius;
  TextInputType? inputType;
  FocusNode? focusNode;
  TextInputAction? textInputAction;
  VoidCallback? onEditingComplete;
  String? Function(String? value)? onvalidate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // textInputAction: TextInputAction.next,
      keyboardType: inputType,
      controller: controller,
      focusNode: focusNode,
      onEditingComplete: onEditingComplete,
      textInputAction: textInputAction,
      obscureText: isPassword ?? false,
      readOnly: isReadOnly ?? false,
      validator: onvalidate,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 0),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green.shade700,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
