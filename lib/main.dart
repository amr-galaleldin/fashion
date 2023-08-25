import 'package:bloc/bloc.dart';
import 'package:ecommerce/Layout/Register/CubitRegister.dart';
import 'package:ecommerce/Layout/SplachScreen.dart';
import 'package:ecommerce/Layout/User/Logic/CubitUser.dart';
import 'package:ecommerce/Layout/login/CubitLogin.dart';
import 'package:ecommerce/modules/productscreen.dart';
import 'package:ecommerce/shred/constance.dart';
import 'package:ecommerce/shred/sharedpre.dart';
import 'package:ecommerce/Layout/splach.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'shred/BlocObserver.dart';
import 'Layout/login/loginscreen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  await CasheHelper.init();
  uId = CasheHelper.getData(key: 'uId');
  print('uid =${uId.toString()}');


  Widget widget;
  if (uId != null) {
    widget = ProductScreen();
  } else {
    widget = SplachSc();
  }

  runApp(MyApp(
    startWidget: widget,
  ));
}


class MyApp extends StatelessWidget {
  late final Widget startWidget;

  MyApp({required this.startWidget});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CubitSc()),
       // BlocProvider(create: (context)=>CubitRegister()),

        BlocProvider(create: (context)=>UserCubit()..GetData()..GetDatahoodie()..GetDatashoess()..GetDatatrouser()..GetDatadress()..GetDatajeans()..GetDatajacket()..GetDataHoodiewomen()..GetDatabag()),

      ],


      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.black,
            )
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            selectedLabelStyle: TextStyle(
              color: Colors.black,
            ),
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(
              color: Colors.black,
            ),
            unselectedIconTheme: IconThemeData(
              color: Colors.grey,
            ),
          ),

        ),
        debugShowCheckedModeBanner: false,
       home: startWidget,
      ),
    );
  }
}
