
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/views/top_circular_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/primary_button_widget.dart';
import '../../widgets/secondary_button_widget.dart';
import '../../widgets/text_field_widget.dart';
class SignUpEmailScreen extends StatefulWidget {
  const SignUpEmailScreen({Key? key}) : super(key: key);
  @override
  State<SignUpEmailScreen> createState() => _SignUpEmailScreen();
}

class _SignUpEmailScreen extends State<SignUpEmailScreen> {
  // TODO :
  // TODO :
  TextEditingController emailOrNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      backgroundColor: Styles.bgColor,
      body: Column(
        children: [
             
            TopCircularView(headText: 'Create an account',backButton: false,),
            
            Gap(AppLayout.getHeight(10)),
            Text('Sign Up',style: Styles.headLineStyle2,),
            Text('With Email',style: Styles.headLineStyle2,),
            Gap(AppLayout.getHeight(20)),
            TextFieldWidget(
              labelText: "Username",
              controllerTextField: emailOrNumber,
              iconTextField: Icon(Icons.email),
            ),
            Gap(AppLayout.getHeight(20)),
            TextFieldWidget(
              labelText: "Email",
              controllerTextField: password,
              iconTextField: Icon(Icons.lock),
            ),
            Gap(AppLayout.getHeight(20)),
            TextFieldWidget(
              labelText: "Password",
              controllerTextField: password,
              iconTextField: Icon(Icons.lock),
            ),
            Gap(AppLayout.getHeight(20)),
            TextFieldWidget(
              labelText: "Confirm Password",
              controllerTextField: password,
              iconTextField: Icon(Icons.lock),
            ),
            Gap(AppLayout.getHeight(25)),
            PrimaryButtonWidget(buttonText: "Sign Up",),
            
            Gap(AppLayout.getHeight(35)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have Account ? ",style: Styles.textStyleSmall.copyWith(color: Styles.primaryColor)),
                Text("Sign Up ",style: Styles.headLineStyle5.copyWith(color:Styles.secondaryColor),),
              ],
            ),
            Gap(AppLayout.getHeight(50)),
            Text("By sign up, accept the terms of service, \n Guidelines and have read Privacy Policy.",style: Styles.textStyleSmall.copyWith(color: Styles.primaryColor)),
        ],
      )
    );
  }
  
}
