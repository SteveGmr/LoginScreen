import 'package:flutter/material.dart';

import 'package:loginapp/Colors.dart';

class MyNewTextField extends StatelessWidget {
  String HintText;
  String HelperText;
  bool ShowText = false;
  IconData PrefixIcon;
  IconData? SufixIcon;
  Function()? SufixClick;
  TextInputType KeyBoardType;
  TextEditingController? textfieldcontroller = TextEditingController();

  MyNewTextField({
    super.key,
    required this.HintText,
    required this.HelperText,
    required this.ShowText,
    required this.PrefixIcon,
    this.SufixIcon,
    this.SufixClick,
    required this.KeyBoardType,
    this.textfieldcontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          HelperText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          controller: textfieldcontroller,
          style: const TextStyle(color: Colors.white),
          keyboardType: KeyBoardType,
          obscureText: ShowText,
          decoration: InputDecoration(
            hintMaxLines: 1,
            fillColor: MyTextFlieldBlue,
            filled: true,
            prefixIcon: Icon(
              PrefixIcon,
              color: Colors.white,
            ),
            suffixIcon: IconButton(
              onPressed: SufixClick,
              icon: Icon(SufixIcon, color: Colors.white),
            ),
            hintText: HintText,
            hintStyle: const TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: MyBlue),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: MyBlue),
            ),
          ),
        ),
      ],
    );
  }
}
