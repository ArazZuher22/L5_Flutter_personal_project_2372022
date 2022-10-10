import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  State<HomeScreenView> createState() => _HomeScreenView();
}

class _HomeScreenView extends State<HomeScreenView> {
  // TODO : create full currect design  
  // TODO : create future to wait page 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColorPrimary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 120,
        actions: <Widget>[
          TextButton(
            onPressed:(){},
            child: Text('skip',style: Styles.headLineStyle2,),
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children:[
            
              Text('Get more done.',style: Styles.headLineStyle1,),

              Positioned(
                  left: 20.0,
                  
                  child: Container(
                          padding:  EdgeInsets.all(8.0),
                          height: 500.0,
                          width: 500.0,
                  child: Text('data',style: Styles.headLineStyle1,),),
                ),
            ],
          


          
         
        ),
      ),
    );
  }
}
