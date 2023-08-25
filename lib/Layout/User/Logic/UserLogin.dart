import 'package:ecommerce/Layout/User/Logic/CubitUser.dart';
import 'package:ecommerce/Layout/User/Logic/UserState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../FirstUserSc.dart';
import '../men/MenUserScreen.dart';

class UserLoginScreen extends StatelessWidget {
  var emailcontroller=TextEditingController();
  var Passwordcontroller=TextEditingController();
  var keyform=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>UserCubit(),
      child: BlocConsumer<UserCubit,UserState>(
        listener: (context,state)
        {
          if(state is OnErrorState)
          {
            Fluttertoast.showToast(
                msg: state.error,
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }
          if(state is OnSucessState)
            {
              Navigator.pushAndRemoveUntil(context,   MaterialPageRoute(builder: (context)=>UserScFirst()), (route) => false);
            }

        },
        builder: (context,state)
        {
          return Scaffold(
            body:SingleChildScrollView(
              child: Column(
                children: [
                Stack(
                  children: [
                    Image(
                      image:AssetImage(
                        'assets/images/pic9.jpeg',


                      ),
                      fit: BoxFit.fill,
                      width: double.infinity,

                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 220, 0.0, 0.0),
                      child: Text(
                        'Log into your                '
                            'account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                  ],
                ),


                   Form(
                     key: keyform,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(
                           height: 30.0,
                         ),

                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Container(
                             child: TextFormField(
                               controller: emailcontroller,
                               decoration: InputDecoration(
                                 border: InputBorder.none,

                                 hintText: 'Email address',
                                 prefixIcon: Icon(
                                   Icons.email,
                                 ),
                               ),
                               validator: (value)
                               {
                                 if(value!.isEmpty)
                                 {
                                   return "Please enter email";
                                 }
                               },
                             ),

                             decoration: BoxDecoration(
                               borderRadius: BorderRadiusDirectional.circular(15.0),
                               color: Colors.grey.shade300,
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Container(
                             child: TextFormField(
                               obscureText:UserCubit.get(context).shown,
                               controller: Passwordcontroller,
                               decoration: InputDecoration(
                                 border: InputBorder.none,
                                 hintText: 'password',
                                 prefixIcon: Icon(
                                   Icons.lock,
                                 ),
                                 suffixIcon: IconButton(
                                   onPressed:()
                                   {
                                     UserCubit.get(context).PasswordShow();
                                   },
                                   icon:Icon(
                                     UserCubit.get(context).isshow,
                                   ),
                                 ),



                               ),
                               validator: (value)
                               {
                                 if(value!.isEmpty)
                                 {
                                   return 'please enter password';
                                 }

                               },
                             ),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadiusDirectional.circular(15.0),
                               color: Colors.grey.shade300,
                             ),
                           ),
                         ),
                         TextButton(
                           onPressed: () {
                             if (keyform.currentState!.validate()) {
                               UserCubit.get(context).UserLogin(email: emailcontroller.text,
                                   Password: Passwordcontroller.text);
                             }


                           },
                           child: Padding(
                             padding: const EdgeInsets.only(
                               left: 15.0,
                             ),
                             child: Container(
                               width: 350.0,
                               height: 50.0,
                               child: Center(
                                 child: Text(
                                   "Login",
                                   style: TextStyle(
                                     color: Colors.white,
                                   ),
                                 ),
                               ),
                               decoration: BoxDecoration(
                                 color: Colors.deepOrange,
                                 borderRadius: BorderRadiusDirectional.circular(25.0),
                               ),
                               
                             ),
                           ),
                         ),
                       ],
                     ),
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
