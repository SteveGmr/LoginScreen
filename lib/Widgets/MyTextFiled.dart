import 'package:flutter/material.dart';
import 'package:loginapp/Colors.dart';

Widget MyTextField({
  required HintText,
  required HelperText,
  bool ShowText = false,
  required IconData PrefixIcon,
  IconData? SufixIcon,
  Function()? SufixClick,
  required TextInputType KeyBoardType,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          HelperText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          style: TextStyle(color: Colors.white),
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
            hintStyle: TextStyle(color: Colors.white),
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
