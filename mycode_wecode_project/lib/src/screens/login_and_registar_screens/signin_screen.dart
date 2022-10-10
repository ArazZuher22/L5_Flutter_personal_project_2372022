import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/views/top_circular_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/google_signin_button.dart';
import '../../widgets/primary_button_widget.dart';
import '../../widgets/secondary_button_widget.dart';
import '../../widgets/text_field_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  State<SignInScreen> createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  // TODO :
  // TODO :
  TextEditingController emailOrNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Styles.bgColor,
        body: Column(
          children: [
            TopCircularView(
              headText: 'Lets Get Started',
              backButton: false,
            ),
            Gap(AppLayout.getHeight(10)),
            Text(
              'Sign In',
              style: Styles.headLineStyle2,
            ),
            Gap(AppLayout.getHeight(50)),
            TextFieldWidget(
              labelText: "Email or No.Phone",
              controllerTextField: emailOrNumber,
              iconTextField: Icon(Icons.email),
            ),
            Gap(AppLayout.getHeight(20)),
            TextFieldWidget(
              labelText: "Password",
              controllerTextField: password,
              iconTextField: Icon(Icons.lock),
              isPassword: true,
            ),
            Gap(AppLayout.getHeight(25)),
            Text(
              'Forgout Password',
              style: Styles.headLineStyle5.copyWith(color: Styles.primaryColor),
            ),
            Gap(AppLayout.getHeight(20)),
            PrimaryButtonWidget(
                buttonText: "Sign In",
                  a: () async {
                    registerWithEmailAndPassword(
                        emailOrNumber.text.trim(), password.text);
                  }
                ),
            Gap(AppLayout.getHeight(30)),
            Text(
              'or',
              style: Styles.headLineStyle3.copyWith(
                  color: Styles.primaryColor, fontWeight: FontWeight.normal),
            ),
            Gap(AppLayout.getHeight(20)),
            
            SecondaryButtonWidget(
                buttonText: "Sign With Google",
                buttonIcon: Icon(FontAwesomeIcons.google)),
            Gap(AppLayout.getHeight(20)),
            SecondaryButtonWidget(
              buttonText: "Sign With Phone Number",
              buttonIcon: Icon(Icons.phone),
            ),
            Gap(AppLayout.getHeight(25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have Account ? ",
                    style: Styles.textStyleSmall
                        .copyWith(color: Styles.primaryColor)),
                Text(
                  "Sign Up ",
                  style: Styles.headLineStyle5
                      .copyWith(color: Styles.secondaryColor),
                ),
              ],
            ),
          ],
        ));
  }

  registerWithEmailAndPassword(
      String emailFromTheBody, String PasswordFromBody) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailFromTheBody,password: PasswordFromBody,
    );
  }
}
