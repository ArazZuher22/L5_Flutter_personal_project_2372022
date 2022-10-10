import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';

import '../../views/menu_navigation_view.dart';

class FavouritesScreenView extends StatefulWidget {
  const FavouritesScreenView({Key? key}) : super(key: key);
  @override
  State<FavouritesScreenView> createState() => _FavouritesScreenView();
}

class _FavouritesScreenView extends State<FavouritesScreenView> {
  // TODO :
  // TODO :

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: NavigatioinDrawer(),
      body:Column(
        children: [
          Text('Favourites Page')
        ],
      )
    );
  }
}


