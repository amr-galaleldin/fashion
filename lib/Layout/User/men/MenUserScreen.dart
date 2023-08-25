import 'package:ecommerce/Layout/User/men/shoesdata.dart';
import 'package:ecommerce/Layout/User/men/trouserdata.dart';
import 'package:ecommerce/Layout/splach.dart';
import 'package:flutter/material.dart';

import 'JacketData.dart';
import 'HoodieData.dart';

class UserScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Men Page',
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
      body: Column(

        children: [
          SizedBox(
            height: 40.0,
          ),
          InkWell(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateData()));
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
                      'jacket Product',
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
                          'assets/images/jacket2.png',
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TrousersData()));
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
                      'trousers collection',
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
                          'assets/images/trouser.png',
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoesData()));
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
                      'shoes ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,

                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        image: AssetImage(
                          'assets/images/shoes2.png',
                        ),
                        height: 100.0,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(50.0),
                  color: Colors.black54,
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HoodieData()));
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
                      'Hoodie style',
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
                          'assets/images/hoodie2.png',
                        ),
                        height: 120.0,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(50.0),
                  color: Colors.deepPurple.shade300,
                ),
              ),
            ),
          ),

        ],
      )
    );
  }
}
