import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

class TextFieldWidget extends StatelessWidget {
  String labelText;
  TextEditingController controllerTextField = TextEditingController();
  Icon iconTextField;
  bool? isPassword = false ; 
  TextFieldWidget(
      {Key? key,
      required this.labelText,
      required this.controllerTextField,
      required this.iconTextField,
      this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: AppLayout.getWidth(330),
      child: TextField(
        // changed this
        controller: controllerTextField,
        decoration: InputDecoration(
          filled: true,
          fillColor: Styles.primaryLightColor,
          // Icon textfield
          prefixIcon: iconTextField,
          prefixIconColor: Styles.primaryColor,
          // changed this
          labelText: labelText,
          labelStyle: Styles.textStyleLarge,
          enabledBorder: myinputborder(),
          focusedBorder: myfocusborder(),
        ),
        // if password
        obscureText: isPassword==true ? true : false,
        enableSuggestions: isPassword==true ? false : true,
        autocorrect: isPassword==true ? false : true ,
      ),
    );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Styles.primaryLightColor,
          width: 0.5,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Styles.secondaryColor,
          width: AppLayout.getWidth(3),
        ));
  }
}
