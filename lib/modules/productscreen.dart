import 'package:ecommerce/Layout/drawer.dart';
import 'package:ecommerce/modules/men/mensc.dart';
import 'package:ecommerce/modules/women/womenScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Layout/User/Logic/CubitUser.dart';
import '../Layout/User/Logic/UserState.dart';
import '../Layout/splach.dart';
import 'Search.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is OnSucessState) {}
      },
      builder: (cotext, state) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            drawer: DrawerSc(),
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
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => SplachSc()),
                            (route) => false);
                      },
                      icon: Icon(
                        Icons.logout,
                        color: Colors.black,
                      ),
                    ),
                    //Icon(Icons.shopping_bag, color: Colors.black, size: 30.0),
                  ),
                ],
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadiusDirectional.circular(25.0),
                      ),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadiusDirectional.circular(25.0),
                        ),
                        tabs: [
                          Tab(
                            text: 'Shop men',
                          ),
                          Tab(
                            text: 'Shop women',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        MenSc(),
                        WomenSc(),
                      ],
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
