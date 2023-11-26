import 'package:asift_flutter/app/preferences.dart';
import 'package:asift_flutter/presentation/common/app_constants.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final TextEditingController?
      controller; // This is extra, but we'll need it very shortly
  const InputField({Key? key, this.controller}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late AsiftPreferences prefrences;
  late String email;

  void _loadPreferences() async {
    email = await prefrences.getUsername();
    setState(() {});
  }

  @override
  void initState() {
    prefrences = AsiftPreferences();
    email = '';
    _loadPreferences();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kdDesktopMaxContentWidth * 0.3,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF232323),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: widget.controller?..text = email,
        decoration: InputDecoration.collapsed(
          hintText: email,
          hintStyle: TextStyle(
            color: Color(0xff989898),
          ),
          filled: true,
          fillColor: Color(0xFF232323),
        ),
      ),
    );
  }
}
