import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

class TopCircularView extends StatelessWidget {
  String headText;
  bool backButton;
  TopCircularView({Key? key, required this.headText, required this.backButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Row(
      children: [
        Stack(
          children: <Widget>[
            Container(
              color: Styles.bgColor,
              height: AppLayout.getHeight(130.0),
              width: size.width,
            ),
            Positioned(
              left: -75.0,
              top: -30.0,
              child: Container(
                  height: AppLayout.getHeight(165.0),
                  width: AppLayout.getWidth(155.0),
                  decoration: BoxDecoration(
                      // The child of a round Card should be in round shape
                      //  if it has a background color
                      shape: BoxShape.circle,
                      color: Styles.primaryColor)),
            ),
            Positioned(
              left: 0.0,
              top: -95.0,
              child: Container(
                  height: AppLayout.getHeight(165.0),
                  width: AppLayout.getWidth(155.0),
                  decoration: BoxDecoration(
                      // The child of a round Card should be in round shape
                      //  if it has a background color
                      shape: BoxShape.circle,
                      color: Styles.primaryColor)),
            ),
            Positioned(
              left: 75.0,
              top: 85.0,
              child: Text(
                headText.toString(),
                style: Styles.headLineStyle1.copyWith(color: Colors.black),
              ),
            ),
            
            backButton
                ? Positioned(
                    left: 10.0,
                    top: 20.0,
                    child: SizedBox.fromSize(
                      size: Size(
                          AppLayout.getWidth(60.0), AppLayout.getHeight(80)),
                      child: ClipOval(
                        child: Material(
                          color: Styles.primaryColor,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                    size: 60,
                                    color: Styles.bgColor,
                                    Icons.chevron_left)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ],
    );
  }
}
