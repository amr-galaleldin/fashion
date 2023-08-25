import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../FirstUserSc.dart';
import '../Logic/CubitUser.dart';
import '../Logic/UserState.dart';
import '../men/MenUserScreen.dart';

class TrouserDataWomen extends StatelessWidget {
  var descriptioncontroller = TextEditingController();
  var pricecontroller = TextEditingController();
  var typecontroller = TextEditingController();
  var Gendercontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>UserCubit(),
      child: BlocConsumer<UserCubit,UserState>(
        listener: (context,state)
        {
          if(state is SucessCreateNewData)
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>UserScFirst()));
          }

        },
        builder: (context,state)
        {
          File? jeansimage = UserCubit.get(context).jeansimage;

          return Scaffold(
            appBar: AppBar(
              title: Text(
                'New product',
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    UserCubit.get(context).UploadjeansPost(description: descriptioncontroller.text,
                      price: pricecontroller.text,
                      type: typecontroller.text,
                      Gender: Gendercontroller.text,



                    );

                  },
                  child: Text(
                    'publish',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              backgroundColor: Colors.grey,
            ),
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: descriptioncontroller,
                      decoration: InputDecoration(
                        hintText: ' Publish new product... ',
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  if(jeansimage!=null)
                    Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        Image(
                          image: FileImage(File(jeansimage.path))
                          as ImageProvider,
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                        IconButton(
                          onPressed: () {
                            UserCubit.get(context).removejeansimage();
                          },
                          icon: CircleAvatar(
                            backgroundColor: Colors.grey.shade500,
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: ()
                      {
                        UserCubit.get(context).GetjeansImage();
                      },
                      child: Container(
                        width:double.infinity,
                        child: TextButton(
                          onPressed: () {
                            UserCubit.get(context).GetjeansImage();
                          },
                          child: Text(
                            'Add photo',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15.0),
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        width: 80.0,
                        child: TextFormField(
                          controller: pricecontroller,
                          decoration: InputDecoration(
                            hintText: '     Price',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15.0),
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Container(
                        width: 80.0,
                        child: TextFormField(
                          controller: typecontroller,
                          decoration: InputDecoration(
                            hintText: '     type',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15.0),
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      SizedBox(
                        width: 44.0,
                      ),
                      Container(
                        width: 80.0,
                        child: TextFormField(
                          controller: Gendercontroller,
                          decoration: InputDecoration(
                            hintText: '     Gender',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15.0),
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
