import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mycode_wecode_project/src/screens/menu/favourites_screen.dart';
import 'package:mycode_wecode_project/src/screens/menu/profile_screen.dart';
import 'package:mycode_wecode_project/src/screens/oneboarding_screens/loading_screen.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

import '../views/bottom_bar_view.dart';
import '../views/completed_todo_list_view.dart';
import '../views/menu_navigation_view.dart';
import '../views/todo_list_view.dart';

class HomeScreenView extends StatefulWidget {
  int? selectedIndex;
  HomeScreenView({Key? key,  this.selectedIndex}) : super(key: key);
  @override
  State<HomeScreenView> createState() => _HomeScreenView();
}

class _HomeScreenView extends State<HomeScreenView> {
  // TODO :
  // TODO :
  bool isLoading = false;
  late int currentIndex;
  /*@override
  void initState() {
    currentIndex = widget.selectedIndex;
  }*/

  final tabs = [
    TodoListWidget(),
    CompletedListWidget(),
  ];
  @override
  Widget build(BuildContext context) => isLoading
      ? const LoadingScreen()
      : Scaffold(
          appBar: AppBar(
            backgroundColor: Styles.primaryColor,
          ),
          drawer: NavigatioinDrawer(),
          //body: widget.selectedIndex == null ? tabs[0] : tabs[widget.selectedIndex!],
          
          
          bottomNavigationBar: widget.selectedIndex == null ? BottomNavBarV2() :BottomNavBarV2(currentIndex :widget.selectedIndex!),
        );
}
