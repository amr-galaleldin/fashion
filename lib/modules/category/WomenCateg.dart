
import 'package:ecommerce/modules/women/SeeAllBag.dart';
import 'package:ecommerce/modules/women/SeeAllDress.dart';
import 'package:ecommerce/modules/women/SeeAllHoodie.dart';
import 'package:ecommerce/modules/women/SeeAllJeans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../women/SeeAllJacket.dart';

class WomenCateg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Women Category',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25.0,
            ),
            InkWell(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>SeeAllDress() ));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            image:AssetImage(
                              'assets/images/dress.png',

                            ),



                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Dress',
                        style: TextStyle(

                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.inactiveGray,
                    borderRadius: BorderRadiusDirectional.circular(50.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>SeeAllJeans() ));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            image:AssetImage(
                              'assets/images/womentrouser.png',

                            ),



                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Jeans & trouser',
                        style: TextStyle(

                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color:Colors.blueGrey,
                    borderRadius: BorderRadiusDirectional.circular(50.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>SeeAllJacket() ));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            image:AssetImage(
                              'assets/images/WomenJacket.png',

                            ),



                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Jacket',
                        style: TextStyle(

                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color:Colors.grey,
                    borderRadius: BorderRadiusDirectional.circular(50.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>SeeAllHoodieWomen() ));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            image:AssetImage(
                              'assets/images/womenhoodie.png',

                            ),



                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Hoodie',
                        style: TextStyle(

                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color:Colors.blueGrey,
                    borderRadius: BorderRadiusDirectional.circular(50.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>SeeAllBag() ));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            image:AssetImage(
                              'assets/images/bags.png',

                            ),



                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Bag',
                        style: TextStyle(

                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color:Colors.blueGrey,
                    borderRadius: BorderRadiusDirectional.circular(50.0),
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
