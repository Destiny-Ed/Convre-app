
import 'package:flutter/material.dart';

import 'colors.dart';


///Custom Form Field
class CustomTextField extends StatefulWidget {
  // final TextEditingController _controller;
  bool obscure;
  String hint;
  bool password;
  CustomTextField(
      // this._controller,
      {
        this.password = true,
        this.obscure = false,
        this.hint = '',
        });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Icon? visibility;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: grey),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        // controller: widget._controller,
        obscureText: widget.obscure,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: widget.password == true
              ? GestureDetector(
            key: widget.key,
            onTap: () {
              //Show and hide password
              if (widget.obscure == true) {
                setState(() {
                  widget.obscure = false;
                  visibility = Icon(Icons.visibility_off, color: primaryColor,);
                });
              } else {
                setState(() {
                  widget.obscure = true;
                  visibility = Icon(Icons.visibility, color: primaryColor,);
                });
              }
            },
            child: visibility == null
                ? Icon(Icons.visibility, color: primaryColor,)
                : visibility,
          )
              : const Text(""),
          contentPadding: const EdgeInsets.only(
            top: 15,
            bottom: 10,
          ),
          hintText: widget.hint,
        ),
      ),
    );
  }
}