import 'package:ecommerce/Layout/Register/CubitRegister.dart';
import 'package:ecommerce/Layout/Register/StateRegister.dart';
import 'package:ecommerce/models/customers.dart';
import 'package:ecommerce/modules/Search.dart';
import 'package:ecommerce/modules/category/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class DrawerSc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>CubitRegister(),
      child: BlocConsumer<CubitRegister,RegisterState>(
        listener: (context,state)
        {

        },
        builder: (context,state)
        {
         // print(CubitRegister.get(context).userModel!.name);
          return Drawer(
            child:Column(
              children: [
                Container(
                  height: 200.0,
                  child:Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                        height: 20.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(
                           'https://m.media-amazon.com/images/I/41jLBhDISxL._SY355_.jpg'
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Ahmed Moanis',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(20.0),
                      bottomStart: Radius.circular(20.0),
                    ),
                    color: Colors.deepOrange,

                  ),
                ),
                SizedBox(
                  height: 30.0,

                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0,0, 0),
                  child: InkWell(
                    onTap: ()
                    {
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.black,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,

                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0,0, 0),
                  child: InkWell(
                    onTap: ()
                    {
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          'Favourite',
                          style: TextStyle(
                            color: Colors.black,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,

                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0,0, 0),
                  child: InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchSc()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.black,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,

                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0,0, 0),
                  child: InkWell(
                    onTap: ()
                    {
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.library_books_sharp,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          'my order',
                          style: TextStyle(
                            color: Colors.black,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,

                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0,0, 0),
                  child: InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesScreen()));

                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.category,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.black,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          );
        },

      ),
    );
  }
}
Widget BuildDrawer(CustomersModel? model)
{
  return Row(
    children: [
      SizedBox(
        width: 20.0,
        height: 20.0,
      ),
      CircleAvatar(
        radius: 25.0,
        backgroundImage: NetworkImage(
          'https://m.media-amazon.com/images/I/41jLBhDISxL._SY355_.jpg'
        ),
      ),
      SizedBox(
        width: 15.0,
      ),
      Text(
        'Ahmed moanis',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,

        ),
      ),
    ],
  );







}
