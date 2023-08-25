import 'package:ecommerce/Layout/User/women/trouser.dart';
import 'package:ecommerce/Layout/User/women/womenhoodie.dart';
import 'package:ecommerce/Layout/User/women/womenjacket.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../splach.dart';
import '../men/JacketData.dart';
import 'Bags.dart';
import 'dressScreen.dart';

class WomenUserScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            'Women Page',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            TextButton(
              onPressed:()
              {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SplachSc()), (route) => false);

              }, child:Text(
              'Log out',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            ),
          ],
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DressSc()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 350.0,
                    height: 120.0,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Add Dress',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,

                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            image: AssetImage(
                              'assets/images/dress.png',
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
                height: 20.0,
              ),
              InkWell(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TrouserDataWomen()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 350.0,
                    height: 120.0,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'jeans & trouser',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,

                          ),
                        ),
                        SizedBox(
                          width: 90.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            image: AssetImage(
                              'assets/images/womentrouser.png',
                            ),
                            height: 150.0,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(50.0),
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WomenJacket()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 350.0,
                    height: 120.0,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Jacket',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,

                          ),
                        ),
                        SizedBox(
                          width: 140.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            image: AssetImage(
                              'assets/images/WomenJacket.png',
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
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WomenHoodie()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 350.0,
                    height: 120.0,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Hoodie',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,

                          ),
                        ),
                        SizedBox(
                          width: 155.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            image: AssetImage(
                              'assets/images/womenhoodie.png',
                            ),
                            height: 150.0,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(50.0),
                      color: Colors.purple.shade300,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bags()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 350.0,
                    height: 120.0,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Bags',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,

                          ),
                        ),
                        SizedBox(
                          width: 155.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            image: AssetImage(
                              'assets/images/bags.png',
                            ),
                            height: 150.0,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(50.0),
                      color: Colors.blue.shade600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
