import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycode_wecode_project/src/screens/login_and_registar_screens/forgot_password_screen.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';
import 'package:mycode_wecode_project/src/views/todo_list_view.dart';

import '../screens/home_screen.dart';
import 'add_todo_dialog_views.dart';
// https://www.youtube.com/watch?v=1ToqYMSnNhA

//https://github.com/retroportalstudio/flutter_bnb_v2/blob/master/lib/main.dart

class BottomNavBarV2 extends StatefulWidget {
  int? currentIndex;
  BottomNavBarV2({Key? key,  this.currentIndex}) : super(key: key);
  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int? currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = widget.currentIndex;
      print(index);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 80,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, 80),
            painter: BNBCustomPainter(),
          ),
          Center(
            heightFactor: 0.3,
            child: FloatingActionButton(
                backgroundColor: Styles.primaryColor,
                child: Icon(size: 45, Icons.add),
                elevation: 0.1,
                onPressed: () => showDialog(
                      builder: (context) => AddTodoDialogWidget(),
                      context: context,
                      barrierDismissible: false,
                    )),
            //Icon(Icons.shopping_basket)
          ),
          Container(
            width: size.width,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: currentIndex == 0
                        ? Styles.secondaryColor
                        : Styles.primaryLightColor,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreenView(selectedIndex: 0,),
                    ));
                    setBottomBarIndex(0);
                    
                  },
                  splashColor: Colors.white,
                ),
                Container(
                  width: size.width * 0.20,
                ),
                IconButton(
                    icon: Icon(
                      Icons.bookmark,
                      color: currentIndex == 1
                          ? Styles.secondaryColor
                          : Styles.primaryLightColor,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreenView(selectedIndex: 1,),
                    ));
                      setBottomBarIndex(1);
                      
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();

    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 10);
    path.arcToPoint(
      Offset(size.width * 0.60, 10),
      radius: Radius.circular(20.0),
      clockwise: true,
    );
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
