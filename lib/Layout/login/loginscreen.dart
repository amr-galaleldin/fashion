import 'package:ecommerce/Layout/Register/RegisterScreen.dart';
import 'package:ecommerce/Layout/User/Logic/UserLogin.dart';
import 'package:ecommerce/shred/constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../modules/productscreen.dart';

import '../../shred/sharedpre.dart';
import 'CubitLogin.dart';
import 'LoginState.dart';


class LoginScreen extends StatelessWidget {
  var emailcontroller=TextEditingController();
  var Passwordcontroller=TextEditingController();
  var keyform=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {


    return BlocConsumer<CubitSc,LoginState>(
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

          CasheHelper.saveData(
              key: 'uId',
              value:state.uId
          ).then((value) {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ProductScreen()), (route) => false);
          });
          print(uId);
        }

      },
      builder: (context,state)
      {
        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/pic2.jfif',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Form(
                key: keyform,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/icons/icon8.png',
                            ),
                          ),
                          Text(
                            'Brondo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                      ),
                      child: Text(
                        "Let'\s Login",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Don\'t have an account?",
                            style: TextStyle(fontSize: 15.0),
                          ),
                         TextButton(
                             onPressed: ()
                           {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                           }
                             , child: Text(
                             'Sign up',
                           style: TextStyle(
                             color: Colors.black,
                           ),
                         ),
                         ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: TextFormField(
                          controller: emailcontroller,
                          decoration: InputDecoration(
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
                          obscureText:CubitSc.get(context).shown,
                          controller: Passwordcontroller,
                          decoration: InputDecoration(
                            hintText: 'password',
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                            suffixIcon: IconButton(
                              onPressed:()
                              {
                                CubitSc.get(context).PasswordShow();
                              },
                              icon:Icon(
                                CubitSc.get(context).isshow,
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
                          CubitSc.get(context).UserLogin(email: emailcontroller.text,
                              Password: Passwordcontroller.text);
                        }

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 35.0,
                        ),
                        child: Container(

                          width: 300.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Sign in",
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
                          left: 35.0,
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
                    TextButton(
                        onPressed:()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>UserLoginScreen()));
                        }
                        , child:Text(
                      'Login as user',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
