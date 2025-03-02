import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final TextEditingController? controller;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? fieldSubmitted;
  final TextInputType? inputType;

  const LoginScreen({
    super.key,
    this.controller,
    this.isPasswordField = false,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.fieldSubmitted,
    this.inputType,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPasswordField! ? _obscureText : false,
      keyboardType: widget.inputType,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        border: OutlineInputBorder(),
        suffixIcon: widget.isPasswordField!
            ? IconButton(
                icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
