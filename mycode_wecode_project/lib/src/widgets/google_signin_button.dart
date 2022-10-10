import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/screens/home_screen.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../services/auth_with_google.dart';

class GoogleSignInButton extends StatefulWidget {
  String buttonText;
  Icon buttonIcon;
  GoogleSignInButton({Key? key, required this.buttonText,required this.buttonIcon})
      : super(key: key);
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}
class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
            height: AppLayout.getHeight(60),
            width: AppLayout.getWidth(280),
            child: ElevatedButton.icon(
              //Handle button press event
              onPressed: () async {
                setState(() {
                  _isSigningIn = true;
                });

                // TODO: Add method call to the Google Sign-In authentication
                User? user =
                    await Authentication.signInWithGoogle(context: context);
                setState(() {
                  _isSigningIn = false;
                });
                debugPrint('google sing in worked ');
                debugPrint(user?.displayName!);
                if (user != null) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => HomeScreenView(
                          //user: user,




                          
                          ),
                    ),
                  );
                }
                debugPrint('google sing in worked ');
                debugPrint(user?.displayName!);
                //await Authentication.signOut(context: context);
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
              icon: widget.buttonIcon, //Button icon
              label: Text(widget.buttonText.toString()),
              ),
          );
  }
}
