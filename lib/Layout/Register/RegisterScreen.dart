import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/productscreen.dart';
import '../login/loginscreen.dart';
import '../SplachScreen.dart';
import 'CubitRegister.dart';
import 'StateRegister.dart';

class RegisterScreen extends StatelessWidget {
  var emailcontroller = TextEditingController();
  var namecontroller = TextEditingController();
  var Passwordcontroller = TextEditingController();
  var Phonecontroller = TextEditingController();
  var keyform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CubitRegister(),
      child: BlocConsumer<CubitRegister, RegisterState>(
        listener: (context, state) {
          if(state is OnSucessCreateUser)
            {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ProductScreen()), (route) => false);
            }
        },
        builder: (context, state) {
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image(
                      image:AssetImage(
                        'assets/images/pic7.jpg',


                      ),
                      fit: BoxFit.fill,
                      width: double.infinity,

                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 200, 0.0, 0.0),
                      child: Text(
                        'Create your                '
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
                 Expanded(
                   child: Container(
                     color: Colors.grey.shade400,
                     child: Form(
                       key: keyform,
                       child: SingleChildScrollView(
                         child: Column(
                           children: [
                             SizedBox(
                               height: 40.0,
                             ),
                             // Row(
                             //   crossAxisAlignment: CrossAxisAlignment.center,
                             //   mainAxisAlignment: MainAxisAlignment.center,
                             //   children: [
                             //     Text('Do you have an account?'),
                             //     TextButton(
                             //       onPressed: () {
                             //         Navigator.push(
                             //             context,
                             //             MaterialPageRoute(
                             //                 builder: (context) => LoginScreen()));
                             //       },
                             //       child: Text(
                             //         'Login',
                             //         style: TextStyle(
                             //           color: Colors.black,
                             //         ),
                             //       ),
                             //     ),
                             //   ],
                             // ),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 child: TextFormField(
                                   controller: namecontroller,
                                   decoration: InputDecoration(
                                     hintText: 'Name',
                                     prefixIcon: Icon(
                                       Icons.account_circle_sharp,
                                     ),
                                   ),
                                   validator: (value) {
                                     if (value!.isEmpty) {
                                       return "Please enter name";
                                     }
                                   },
                                 ),
                                 decoration: BoxDecoration(
                                   borderRadius:
                                   BorderRadiusDirectional.circular(40.0),
                                   color: Colors.grey.shade200,
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 child: TextFormField(
                                   controller: emailcontroller,
                                   decoration: InputDecoration(
                                     hintText: 'Email address',

                                     prefixIcon: Icon(
                                       Icons.email,
                                     ),
                                   ),
                                   validator: (value) {
                                     if (value!.isEmpty) {
                                       return "Please enter email";
                                     }
                                   },
                                 ),
                                 decoration: BoxDecoration(
                                   borderRadius:
                                   BorderRadiusDirectional.circular(40.0),
                                   color: Colors.grey.shade200,

                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 child: TextFormField(
                                   controller: Passwordcontroller,
                                   decoration: InputDecoration(
                                     hintText: 'password',
                                     prefixIcon: Icon(
                                       Icons.lock,
                                     ),
                                   ),
                                   validator: (value) {
                                     if (value!.isEmpty) {
                                       return 'please enter password';
                                     }
                                   },
                                 ),
                                 decoration: BoxDecoration(
                                   borderRadius:
                                   BorderRadiusDirectional.circular(40.0),
                                   color: Colors.grey.shade200,
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 child: TextFormField(
                                   controller: Phonecontroller,
                                   decoration: InputDecoration(
                                     hintText: 'phone',
                                     prefixIcon: Icon(
                                       Icons.phone,
                                     ),
                                   ),
                                   validator: (value) {
                                     if (value!.isEmpty) {
                                       return 'please enter phone';
                                     }
                                   },
                                 ),
                                 decoration: BoxDecoration(
                                   borderRadius:
                                   BorderRadiusDirectional.circular(40.0),
                                   color: Colors.grey.shade200,
                                 ),
                               ),
                             ),
                             TextButton(
                               onPressed: () {
                                 if (keyform.currentState!.validate()) {
                                   CubitRegister.get(context).CustomersRegister(
                                       name: namecontroller.text,
                                       email: emailcontroller.text,
                                       password: Passwordcontroller.text,
                                       phone: Phonecontroller.text);
                                 }
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                         builder: (context) => ProductScreen()));
                               },
                               child: Padding(
                                 padding: const EdgeInsets.only(
                                   left: 10.0,
                                 ),
                                 child: Container(
                                   width: 300.0,
                                   height: 50.0,
                                   child: Center(
                                     child: Text(
                                       "Register",
                                       style: TextStyle(
                                         color: Colors.white,
                                       ),
                                     ),
                                   ),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadiusDirectional.circular(40.0),
                                     color: Colors.deepOrange,

                                   ),
                                 ),
                               ),
                             ),
                             TextButton(
                               onPressed: () {},
                               child: Padding(
                                 padding: const EdgeInsets.only(
                                   left: 10.0,
                                 ),
                                 child: Container(

                                   width: 300.0,
                                   height: 50.0,
                                   child: Row(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.fromLTRB(60, 0.0, 0.0, 0.0),
                                         child: Icon(
                                           Icons.facebook,
                                           color: Colors.white,
                                         ),
                                       ),
                                       Text(
                                         '     Sign in with facebook',
                                         style: TextStyle(
                                           color: Colors.white,
                                         ),
                                       ),
                                     ],
                                   ),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadiusDirectional.circular(40.0),
                                     color: Colors.blue,
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
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
