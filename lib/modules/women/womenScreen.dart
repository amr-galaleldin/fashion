import 'package:ecommerce/Layout/User/Logic/CubitUser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Layout/User/Logic/UserState.dart';
import '../../models/DatamMdel.dart';
import '../men/hoodie/SeeAallHoodie.dart';
import '../men/jacket/SeeAllScreen.dart';
import 'SeeAllBag.dart';
import 'SeeAllDress.dart';
import 'SeeAllHoodie.dart';
import 'SeeAllJacket.dart';
import 'SeeAllJeans.dart';

class WomenSc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit,UserState>(
      listener: (context,state)
      {

      },
      builder: (context,state)
      {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Text(
                        'dress',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeeAllDress()));
                        },
                        child: Text(
                          'see all',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  height: 450.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BuildShop(UserCubit.get(context).dress[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: UserCubit.get(context).dress.length,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Text(
                        'Jeans \& trouser ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeeAllJeans()));
                        },
                        child: Text(
                          'see all',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  height: 450.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BuildShop(UserCubit.get(context).jeans[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: UserCubit.get(context).jeans.length,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Text(
                        'Jacket ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeeAllJacket()));
                        },
                        child: Text(
                          'see all',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  height: 450.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BuildShop(UserCubit.get(context).jacket[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: UserCubit.get(context).jacket.length,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Text(
                        'New Hoodie ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeeAllHoodieWomen()));
                        },
                        child: Text(
                          'see all',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  height: 450.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BuildShop(UserCubit.get(context).HoodieWomen[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: UserCubit.get(context).HoodieWomen.length,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Text(
                        'women\'s bags',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeeAllBag()));
                        },
                        child: Text(
                          'see all',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                SizedBox(
                  height: 450.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BuildShop(UserCubit.get(context).bag[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: UserCubit.get(context).bag.length,
                  ),
                ),


              ],
            ),
          ),


        );
      },
    );
  }
}
Widget BuildShop(DataModel model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(70.0),
          child: Image(
            image: NetworkImage(
              '${model.image}',
            ),
            width: 200.0,
          ),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Row(
        children: [
          SizedBox(
            width: 20.0,
          ),
          Icon(
            CupertinoIcons.star_fill,
            color: CupertinoColors.systemYellow,
            size: 20.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            '4.9',
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            '(88 reviews )',
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 18.0,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15.0,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          child: Container(
            width: 200,
            child: Text(
              '${model.description}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          )),
      SizedBox(
        height: 10.0,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Text(
          '${model.price}',
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontSize: 18.0,
          ),
        ),
      ),
    ],
  );
}

