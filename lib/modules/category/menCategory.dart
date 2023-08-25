import 'package:ecommerce/modules/men/Shoes/SeeAllShoes.dart';
import 'package:ecommerce/modules/men/Trouser/SeeAllTrouser.dart';
import 'package:ecommerce/modules/men/hoodie/SeeAallHoodie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../men/jacket/SeeAllScreen.dart';

class MenCateg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Men Category',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25.0,
          ),
          InkWell(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>SeeAll() ));
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
                              'assets/images/jacket2.png',

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
              Navigator.push(context, MaterialPageRoute(builder:(context)=>SeeAllHoodie() ));
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
                              'assets/images/hoodie.png',

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
              Navigator.push(context, MaterialPageRoute(builder:(context)=>SeeAllTrouser() ));
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
                            'assets/images/trouser.png',

                          ),



                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'trouser',
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
              Navigator.push(context, MaterialPageRoute(builder:(context)=>SeeAllShoes() ));
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
                            'assets/images/shoes.png',

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
        ],
      ),
    );
  }
}
