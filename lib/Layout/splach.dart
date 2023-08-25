import 'package:ecommerce/Layout/login/loginscreen.dart';
import 'package:flutter/material.dart';


class SplachSc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
         image: DecorationImage(
             image:AssetImage(
                'assets/images/pic1.png',
             ),
           fit: BoxFit.cover,
         ),
        ),
        child: Column(

         mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Text(
              '                                Brondo',
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 300.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35.0,
              ),
              child: Text(
                'Change Your Style ',
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 50.0,

                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                'Let\'s Change The Style of Your Appearance with Brondo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Container(
              width: 350.0,
              height: 80.0,
              child: TextButton(
                  onPressed:()
                  {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false);
                  }
                  , child:Row(
                children: [
                  Text(
                    '  Discover',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    width: 150.0,
                  ),
                  Icon(
                    Icons.arrow_forward_sharp,
                    color: Colors.white,
                  ),

                ],
              ) ,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(40.0),
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),

    );
  }
}
