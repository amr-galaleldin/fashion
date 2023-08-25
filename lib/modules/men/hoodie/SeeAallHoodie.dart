import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Layout/User/Logic/CubitUser.dart';
import '../../../Layout/User/Logic/UserState.dart';
import '../../../models/DatamMdel.dart';


class SeeAllHoodie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                'BRONDO.',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
          body: Container(
            width: double.infinity,
            child:GridView.count(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 1 / 2,
              children: List.generate(
                UserCubit.get(context).hoodie.length,
                    (index) =>
                    BuildGridViewProduct(UserCubit.get(context).hoodie[index]),
              ),
            ),
          ),
        );
      },
    );
  }
}


Widget BuildGridViewProduct(DataModel model) {
  return Column(
    children: [
      SizedBox(
        height: 20.0,
      ),
      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70.0),
                  child: Image(
                    image: NetworkImage(
                      '${model.image}',
                    ),
                    width: 150.0,
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
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '(88 reviews )',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 15.0,
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
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      '${model.description}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          overflow: TextOverflow.ellipsis
                      ),
                      maxLines: 4,
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
        ],
      ),
    ],
  );
}
