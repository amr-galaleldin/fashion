
import 'package:ecommerce/Layout/User/Logic/CubitUser.dart';
import 'package:ecommerce/Layout/User/Logic/UserState.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/DatamMdel.dart';
import '../AddCard.dart';
import 'Shoes/SeeAllShoes.dart';
import 'Trouser/SeeAllTrouser.dart';
import 'hoodie/SeeAallHoodie.dart';
import 'jacket/SeeAllScreen.dart';

class MenSc extends StatelessWidget {

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
                        'New Arrival',
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
                                  builder: (context) => SeeAll()));
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
                  height: 440.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BuildShop(UserCubit.get(context).posts[index],context);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: UserCubit.get(context).posts.length,
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
                        'Hoodies',
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
                                  builder: (context) => SeeAllHoodie()));
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
                      return BuildShop(UserCubit.get(context).hoodie[index],context);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: UserCubit.get(context).hoodie.length,
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Text(
                        'Popular trousers',
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
                                  builder: (context) => SeeAllTrouser()));
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
                      return BuildShop(UserCubit.get(context).trouser[index],context);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: UserCubit.get(context).trouser.length,
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Text(
                        'Shoes style',
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
                                  builder: (context) => SeeAllShoes()));
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
                      return BuildShop(UserCubit.get(context).shoes[index],context);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.0,
                      );
                    },
                    itemCount: UserCubit.get(context).shoes.length,
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
Widget BuildShop(DataModel model,context) {
  return InkWell(
    onTap: ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCard()));
    },
    child: Column(
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
    ),
  );
}

Widget BuildTrousersShop(DataModel model) {
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
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 3,
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

