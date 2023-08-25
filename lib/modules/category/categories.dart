import 'package:flutter/material.dart';

import 'WomenCateg.dart';
import 'menCategory.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Category',
          style: TextStyle(
            color: Colors.black,
          ),
        ),

        backgroundColor: Colors.white,
      ),
     body: Column(
       children: [
         SizedBox(
           height: 40.0,
         ),
         Column(
           children: [
             InkWell(
               onTap: ()
               {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MenCateg()));
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
                     color: Colors.grey,
                   ),
                 ),
               ),
             ),
             SizedBox(
               height: 30.0,
             ),
             InkWell(
               onTap: ()
               {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>WomenCateg()));
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

       ],
     ),
    );
  }
}
