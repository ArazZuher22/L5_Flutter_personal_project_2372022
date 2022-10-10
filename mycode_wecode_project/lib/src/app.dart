import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/provider/todos.dart';
import 'package:mycode_wecode_project/src/screens/home_screen.dart';
import 'package:mycode_wecode_project/src/screens/login_and_registar_screens/signin_screen.dart';
import 'package:mycode_wecode_project/src/screens/login_and_registar_screens/signup_email_screen.dart';
import 'package:mycode_wecode_project/src/screens/oneboarding_screens/loading_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context)=>TodosProvider(),
    child:MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenView(),
      routes: {

        '/signIn' :(context)=>SignInScreen(),
        '/signUp' :(context)=>SignUpEmailScreen(),
        '/loading':(context)=>LoadingScreen(),
        '/home' :(context)=>HomeScreenView(),
      },
    )
  );
}
