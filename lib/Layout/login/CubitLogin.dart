import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/category/categories.dart';
import '../../modules/productscreen.dart';
import 'LoginState.dart';

class CubitSc extends Cubit<LoginState> {
  CubitSc() : super(IntialState());

  static CubitSc get(context) => BlocProvider.of(context);
  IconData isshow = Icons.visibility_off;
  bool shown = true;
  int CurrentIndex = 0;


  void PasswordShow() {
    if (shown) {
      isshow = Icons.visibility;
      shown = !shown;
      emit(showpass());
    } else {
      isshow = Icons.visibility_off;
      shown = !shown;
      emit(showpass());
    }
  }

  void UserLogin

  ({
  required String email,
    required String Password,

})
{
  FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: Password).then((value) {
    print(value.user!.email);
    print(value.user!.uid);

    emit(OnSucessState(value.user!.uid));
  }).catchError((e)
  {
    emit(OnErrorState(e.toString()));
  });


}
  void ChangeBottomNavBar(int index) {
    CurrentIndex = index;
    emit(ChangeBottomNav());
  }






}
