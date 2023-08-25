import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/Layout/User/Logic/CubitUser.dart';
import 'package:ecommerce/Layout/User/Logic/UserState.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/DatamMdel.dart';

class SearchSc extends StatelessWidget {
var SearchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit,UserState>(
      listener: (context,state)
      {

      },
      builder: (context,state)
      {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              child: TextFormField(
                controller:SearchController ,
                decoration: InputDecoration(
                  hintText: 'Search....',
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20.0),
                color: Colors.grey.shade300,
              ),
            ),
          ),
          body: StreamBuilder<QuerySnapshot>(
            stream:FirebaseFirestore.instance.collection('dress').snapshots() ,
            builder:(context,snapshots)
            {
              return (snapshots.connectionState==ConnectionState.waiting)?
              Center(child: CircularProgressIndicator()):
              ListView.separated(
                  itemBuilder: (context,index)
                  {
                    return BuildSearch(UserCubit.get(context).dress[index]);
                  }
                  , separatorBuilder: (context,index)
              {
                return SizedBox(
                  height: 10.0,
                );
              }
                  , itemCount: snapshots.data!.docs.length
              );


            },
          ),

        );
      },
    );
  }
}
Widget BuildSearch(DataModel model) {
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

