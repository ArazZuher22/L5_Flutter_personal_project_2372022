import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

class PrimaryButtonWidget extends StatelessWidget {
  String buttonText;
  VoidCallback? a;
  PrimaryButtonWidget({Key? key, required this.buttonText, this.a})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      height: AppLayout.getHeight(60.0),
      width: AppLayout.getWidth(280.0),
      child: ElevatedButton(
        onPressed: a,
        child: Text(buttonText,
            style: Styles.headLineStyle4.copyWith(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          primary: Styles.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 15.0,
        ),
      ),
    );
  }
}
