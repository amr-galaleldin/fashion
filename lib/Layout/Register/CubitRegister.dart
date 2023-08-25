import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/models/customers.dart';
import 'package:ecommerce/models/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'StateRegister.dart';

class CubitRegister extends Cubit<RegisterState> {

  CubitRegister() : super(intialState());

  static CubitRegister get(context) => BlocProvider.of(context);
  CustomersModel? customersModel;
  UserModel? userModel;


  //////////////////// user////////////////////

  void UserRegister

      ({
    required String name,
    required String email,
    required String password,
    required String phone,

  }) {
    emit(OnLoadingRegist());
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email, password: password).then((value) {
      print(value.user!.email);
      print(value.user!.uid);
      CreateUser(
        name: name,
        email: email,
        password: password,
        phone: phone,
        uId: value.user!.uid,
      );
      emit(OnSucessRegist());
    }).catchError((e) {
      print(e.toString());
      emit(OnErrorRegist());
    });
  }

  void CreateUser

  ({
    required String name,
    required String email,
    required String password,
    required String phone,
    required String uId,

})
{
   userModel=UserModel(
    name: name,
    email: email,
    password: password,
    phone: phone,
    uId: uId,
    image:'https://m.media-amazon.com/images/I/41jLBhDISxL._SY355_.jpg',



  );
  FirebaseFirestore.instance.
  collection('users').
  doc(uId).
  set(userModel!.toMap()).then((value) {
    emit(OnSucessCreateUser());
  }).catchError((e)
  {
    emit(OnErrorCreateUser(e.toString()));


  });

}
///////////////////////////////
  ////////////////////////////////////customers///////////////////////////

  void CustomersRegister

      ({
    required String name,
    required String email,
    required String password,
    required String phone,

  }) {
    emit(OnLoadingRegist());
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email, password: password).then((value) {
      print(value.user!.email);
      print(value.user!.uid);
      CreateCustomers(
        name: name,
        email: email,
        password: password,
        phone: phone,
        uId: value.user!.uid,
      );
      emit(OnSucessCustomersRegist());
    }).catchError((e) {
      print(e.toString());
      emit(OnErrorCustomersRegist());
    });
  }
  void CreateCustomers

      ({
    required String name,
    required String email,
    required String password,
    required String phone,
    required String uId,

  })
  {
    customersModel=CustomersModel(
     name: name,
     email: email,
     password: password,
     phone: phone,
     uId: uId,
     image:'https://m.media-amazon.com/images/I/41jLBhDISxL._SY355_.jpg',
     isCustomer: true,

   );
    FirebaseFirestore.instance.
    collection('customers').
    doc(uId).
    set(customersModel!.toMap()).then((value) {
      emit(OnSucessCreateUser());
    }).catchError((e)
    {
      emit(OnErrorCreateUser(e.toString()));


    });



  }


}