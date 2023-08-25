import 'package:ecommerce/Layout/User/women/womenUserScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Logic/UserLogin.dart';
import 'men/MenUserScreen.dart';

class UserScFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.inactiveGray,
        leading: IconButton(
            onPressed:()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>UserLoginScreen()) );
            }
            , icon:Icon(
          Icons.arrow_back,
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            InkWell(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UserScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: 350.0,
                  height: 170.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Men Product',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: AssetImage(
                            'assets/images/picc.png',
                          ),
                          height: 150.0,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(50.0),
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            InkWell(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WomenUserScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: 350.0,
                  height: 170.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Women Product',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,

                        ),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: AssetImage(
                            'assets/images/pics.png',
                          ),
                          height: 150.0,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(50.0),
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
