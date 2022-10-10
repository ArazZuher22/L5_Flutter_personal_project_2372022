import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

class SecondaryButtonWidget extends StatelessWidget {
  String buttonText;
  Icon buttonIcon;
  SecondaryButtonWidget({Key? key, required this.buttonText,required this.buttonIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
            height: AppLayout.getHeight(60),
            width: AppLayout.getWidth(280),
            child: ElevatedButton.icon(
              //Handle button press event
              onPressed: () {
                
              },
              //Contents of the button
              style: ElevatedButton.styleFrom(
                shape: 
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Styles.primaryColor,width: 3.0)
                  ),
        
                //Change font size
                textStyle: Styles.headLineStyle4,
                //Set the background color
                primary: Styles.bgColor,
                //Set the foreground (text + icon) color
                onPrimary: Styles.primaryColor,
                //Set the padding on all sides to 30px
                
              ),
              icon: buttonIcon, //Button icon
              label: Text(buttonText.toString()),
              ),
          );
  }
}
