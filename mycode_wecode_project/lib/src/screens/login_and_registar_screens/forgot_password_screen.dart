
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/views/top_circular_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/primary_button_widget.dart';
import '../../widgets/secondary_button_widget.dart';
import '../../widgets/text_field_widget.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key, required int selectedindex}) : super(key: key);
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreen();
}

class _ForgotPasswordScreen extends State<ForgotPasswordScreen> {
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
            Text('Forgot Password',style: Styles.headLineStyle1,),
            Gap(AppLayout.getHeight(20)),
            Text('Type your email, we will send \n you verivication code via email',style: Styles.headLineStyle2,),
            Gap(AppLayout.getHeight(20)),
            TextFieldWidget(
              labelText: "Email",
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
