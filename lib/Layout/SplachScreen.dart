import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Register/RegisterScreen.dart';
import 'login/loginscreen.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/pic2.jfif',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Text(
                'Brondo',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(
              height: 180.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 60.0,
              ),
              child: Text(
                'The Right Adderss for shoppping anyday ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25.0,
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}


