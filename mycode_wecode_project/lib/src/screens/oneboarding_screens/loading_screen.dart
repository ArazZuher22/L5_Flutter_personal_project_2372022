import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  @override
  State<LoadingScreen> createState() => _LoadingScreen();
}

class _LoadingScreen extends State<LoadingScreen> {
  // TODO : create full currect design  : done
  // TODO : create future to wait page
  late Timer _timer;
  FlutterLogoStyle _logoStyle = FlutterLogoStyle.markOnly;

  _AnimatedFlutterLogoState() {
    _timer = new Timer(const Duration(milliseconds: 400), () {
      setState(() {
        _logoStyle = FlutterLogoStyle.horizontal;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/signIn');
    });
    /*Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/signIn');
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColorPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get more done.',
              style: Styles.headLineStyle1.copyWith(color: Styles.whiteColor),
            ),
            Text(
              'Be happy.',
              style: Styles.headLineStyle1.copyWith(color: Styles.whiteColor),
            ),
            
            SpinKitCircle(
              size: 125,
              color: Colors.white60,
            )
          
            
          ],
        ),
      ),
    );
  }

  
}
