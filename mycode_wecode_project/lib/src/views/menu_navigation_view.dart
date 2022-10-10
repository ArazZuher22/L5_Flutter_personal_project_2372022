import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../screens/home_screen.dart';
import '../screens/menu/favourites_screen.dart';
import '../screens/menu/profile_screen.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class NavigatioinDrawer extends StatelessWidget {
  const NavigatioinDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => InkWell(
    onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProfileScreenView(),
                  ));
    },
    child: Container(
          color: Styles.primaryColor,
          padding: EdgeInsets.only(
            top: AppLayout.getHeight(40),
            bottom: AppLayout.getHeight(25),
            ),
          child: Column(
            children: [
              
              Gap(AppLayout.getHeight(12)),
              Text('Sarah Abs',style: Styles.headLineStyle3.copyWith(color: Colors.white),),
              Gap(AppLayout.getHeight(15)),
              Text('Sarach@abs.com',style: Styles.headLineStyle4.copyWith(color: Colors.white),),
              Gap(AppLayout.getHeight(12)),
            ],
          ),
        ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
                leading: const Icon(Icons.work,),
                title: const Text('Do Task'),
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) =>  HomeScreenView(),
                    ))),
            ListTile(
                leading: const Icon(Icons.task),
                title: const Text('Complete Task'),
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) =>  HomeScreenView(),
                    ))),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
                leading: const Icon(Icons.share),
                title: const Text('Rate '),
                onTap: () {
                  // close navigation drawer before
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const FavouritesScreenView(),
                  ));
                }),
            ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Contact Us'),
                onTap: () {
                  // close navigation drawer before
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const FavouritesScreenView(),
                  ));
                }),
            
          ],
        ),
      );
}
