import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

class ProfileScreenView extends StatefulWidget {
  const ProfileScreenView({Key? key}) : super(key: key);
  @override
  State<ProfileScreenView> createState() => _ProfileScreenView();
}

class _ProfileScreenView extends State<ProfileScreenView> {
  // TODO :
  // TODO :

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          Text('Profile Page',style: Styles.headLineStyle1,)
        ],
      )
    );
  }
}


