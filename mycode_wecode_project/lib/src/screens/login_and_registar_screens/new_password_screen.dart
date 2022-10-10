
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/views/top_circular_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/primary_button_widget.dart';
import '../../widgets/secondary_button_widget.dart';
import '../../widgets/text_field_widget.dart';
class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);
  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreen();
}

class _NewPasswordScreen extends State<NewPasswordScreen> {
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
             
            TopCircularView(headText: ' ',backButton: true,),
            
            Gap(AppLayout.getHeight(10)),
            Text('New Password',style: Styles.headLineStyle1,),
            Gap(AppLayout.getHeight(20)),
            Text('Create your new password to Login',style: Styles.headLineStyle2,),
            Gap(AppLayout.getHeight(20)),
            TextFieldWidget(
              labelText: "New Password",
              controllerTextField: emailOrNumber,
              iconTextField: Icon(Icons.email),
            ),
            TextFieldWidget(
              labelText: "Confirm password",
              controllerTextField: emailOrNumber,
              iconTextField: Icon(Icons.email),
            ),
            Gap(AppLayout.getHeight(20)),
            
            PrimaryButtonWidget(buttonText: "Sign In",),
            
          ],
      )
    );
  }
  
}
