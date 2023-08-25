import 'package:ecommerce/Layout/User/Logic/CubitUser.dart';
import 'package:ecommerce/models/DatamMdel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Layout/User/Logic/UserState.dart';

class AddCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit,UserState>(
      listener: (context,state)
      {

      },
      builder: (context,state)
      {
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [

            ],

          ),
        );
      },
    );
  }
}
