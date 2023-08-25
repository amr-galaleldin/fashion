import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/Layout/User/Logic/UserState.dart';
import 'package:ecommerce/models/DatamMdel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as Firebase_Storage;




class UserCubit extends Cubit<UserState> {

  UserCubit() :super(IntialState());

  static UserCubit get(context) => BlocProvider.of(context);

  IconData isshow = Icons.visibility_off;
  bool shown = true;
  DataModel? dataModel;
  bool IsColorMen=true;
  bool IsColorWomen=true;
  bool IsColorKids=true;
  bool infavourite=true;

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

  }) {
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: Password).then((value) {
      print(value.user!.email);
      print(value.user!.uid);

      emit(OnSucessState());
    }).catchError((e) {
      emit(OnErrorState(e.toString()));
    });
  }







  File? Postimage;
  var Postpiker = ImagePicker();

  Future GetPostImage() async {
    final Pickerfile = await Postpiker.pickImage(
      source: ImageSource.gallery,
    );
    if (Pickerfile != null) {
      Postimage = File(Pickerfile.path);
      print(Pickerfile.path);
      emit(ImageDataSucess());
    } else {
      print('No image selected');
      emit(ImageDataError());
    }
  }
  void removePostimage() {
    Postimage = null;
    emit(RemovePostImage());
  }
  void UploadPost({
    required String description,
    required String price,
    required String type,
    required String Gender,
  }) {
    emit(LoadingCreateNewData());
    Firebase_Storage.FirebaseStorage.instance
        .ref()
        .child('jacket/${Uri
        .file(Postimage!.path)
        .pathSegments
        .last}')
        .putFile(Postimage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print('value isssssssssssssssssssssssssssss');
        print(value);
        CreateNewData(
          description: description,
         price: price,
          image: value,
          type: type,
          Gender: Gender,
        );
        emit(SucessCreateNewData());
      }).catchError((e) {
        print(e.toString());
        emit(ErrorCreateNewData());
      });
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });
  }

  void CreateNewData
  ({
  required String description,
  required String image,
  required String price,
  required String type,
  required String Gender,


})
{
  emit(LoadingCreateNewData());
   dataModel=DataModel(
    description: description,
    image: image,
    price: price,
     type: type,
     Gender: Gender,

  );
  FirebaseFirestore.instance
      .collection('main Categ').doc('men').collection('jacket')
      .add(dataModel!.toMap())
      .then((value) {
    emit(SucessCreateNewData());
  }).catchError((e) {
    print(e.toString());
    emit(ErrorCreateNewData());
  });




}
  List<DataModel>posts=[];

Future<void> GetData()async
{
 await FirebaseFirestore.instance.collection('main Categ').doc('men').collection('jacket').get().then((value) {



    value.docs.forEach((element) {
      posts.add(DataModel.Fromjason(element.data()));
      emit(SucessGetData());

    });



  }).catchError((e)
  {
    print(e.toString());
    emit(ErrorGetData());


  });
}






/////////////////////////////////////////////
  File? trouserimage;
  var trouserpiker = ImagePicker();

  Future GettrouserImage() async {
    final Pickerfile = await trouserpiker.pickImage(
      source: ImageSource.gallery,
    );
    if (Pickerfile != null) {
      trouserimage = File(Pickerfile.path);
      print(Pickerfile.path);
      emit(ImageDataSucess());
    } else {
      print('No image selected');
      emit(ImageDataError());
    }
  }
  void removetrouserimage() {
    trouserimage = null;
    emit(RemovePostImage());
  }

  void UploadTrouserPost({
    required String description,
    required String price,
    required String type,
    required String Gender,
  }) {
    emit(LoadingCreateNewData());
    Firebase_Storage.FirebaseStorage.instance
        .ref()
        .child('trouser/${Uri
        .file(trouserimage!.path)
        .pathSegments
        .last}')
        .putFile(trouserimage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print('value isssssssssssssssssssssssssssss');
        print(value);
        CreateNewDatatrouser(
          description: description,
          price: price,
          image: value,
          type: type,
          Gender: Gender,
        );
        emit(SucessCreateNewData());
      }).catchError((e) {
        print(e.toString());
        emit(ErrorCreateNewData());
      });
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });
  }






  void CreateNewDatatrouser
      ({
    required String description,
    required String image,
    required String price,
    required String type,
    required String Gender,


  })
  {
    emit(LoadingCreateNewData());
    dataModel=DataModel(
      description: description,
      image: image,
      price: price,
      type: type,
      Gender: Gender,

    );
    FirebaseFirestore.instance
        .collection('main Categ').doc('men').collection('trouser')
        .add(dataModel!.toMap())
        .then((value) {
      emit(SucessCreateNewData());
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });




  }
  List<DataModel>trouser=[];

  Future<void> GetDatatrouser()async
  {
    await FirebaseFirestore.instance.collection('main Categ').doc('men').collection('trouser').get().then((value) {

      value.docs.forEach((element) {
        trouser.add(DataModel.Fromjason(element.data()));
        emit(SucessGetData());

      });


    }).catchError((e)
    {
      print(e.toString());
      emit(ErrorGetData());


    });
  }


  ///////////////////////////////////////////////
  File? shoesimage;
  var shoespiker = ImagePicker();

  Future GetshoesImage() async {
    final Pickerfile = await shoespiker.pickImage(
      source: ImageSource.gallery,
    );
    if (Pickerfile != null) {
      shoesimage = File(Pickerfile.path);
      print(Pickerfile.path);
      emit(ImageDataSucess());
    } else {
      print('No image selected');
      emit(ImageDataError());
    }
  }
  void removeshoesimage() {
    shoesimage = null;
    emit(RemovePostImage());
  }
  void UploadshoesPost({
    required String description,
    required String price,
    required String type,
    required String Gender,
  }) {
    emit(LoadingCreateNewData());
    Firebase_Storage.FirebaseStorage.instance
        .ref()
        .child('shoes/${Uri
        .file(shoesimage!.path)
        .pathSegments
        .last}')
        .putFile(shoesimage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print('value isssssssssssssssssssssssssssss');
        print(value);
        CreateNewDatashoes(
          description: description,
          price: price,
          image: value,
          type: type,
          Gender: Gender,
        );
        emit(SucessCreateNewData());
      }).catchError((e) {
        print(e.toString());
        emit(ErrorCreateNewData());
      });
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });
  }




  void CreateNewDatashoes
      ({
    required String description,
    required String image,
    required String price,
    required String type,
    required String Gender,


  })
  {
    emit(LoadingCreateNewData());
    dataModel=DataModel(
      description: description,
      image: image,
      price: price,
      type: type,
      Gender: Gender,

    );
    FirebaseFirestore.instance
        .collection('shoes')
        .add(dataModel!.toMap())
        .then((value) {
      emit(SucessCreateNewData());
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });




  }
  List<DataModel>shoes=[];

  Future<void> GetDatashoess()async
  {
    await FirebaseFirestore.instance.collection('main Categ').doc('men').collection('shoes').get().then((value) {

      value.docs.forEach((element) {
        shoes.add(DataModel.Fromjason(element.data()));
        emit(SucessGetData());

      });


    }).catchError((e)
    {
      print(e.toString());
      emit(ErrorGetData());


    });
  }
/////////////////////////////////////////////////////
  File? hoodieimage;
  var hoddiepiker = ImagePicker();

  Future GethoodieImage() async {
    final Pickerfile = await hoddiepiker.pickImage(
      source: ImageSource.gallery,
    );
    if (Pickerfile != null) {
      hoodieimage = File(Pickerfile.path);
      print(Pickerfile.path);
      emit(ImageDataSucess());
    } else {
      print('No image selected');
      emit(ImageDataError());
    }
  }
  void removehoodieimage() {
    hoodieimage = null;
    emit(RemovePostImage());
  }
  void UploadhoodiePost({
    required String description,
    required String price,
    required String type,
    required String Gender,
  }) {
    emit(LoadingCreateNewData());
    Firebase_Storage.FirebaseStorage.instance
        .ref()
        .child('hoodie/${Uri
        .file(hoodieimage!.path)
        .pathSegments
        .last}')
        .putFile(hoodieimage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print('value isssssssssssssssssssssssssssss');
        print(value);
        CreateNewDatahoodie(
          description: description,
          price: price,
          image: value,
          type: type,
          Gender: Gender,
        );
        emit(SucessCreateNewData());
      }).catchError((e) {
        print(e.toString());
        emit(ErrorCreateNewData());
      });
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });
  }




  void CreateNewDatahoodie
      ({
    required String description,
    required String image,
    required String price,
    required String type,
    required String Gender,


  })
  {
    emit(LoadingCreateNewData());
    dataModel=DataModel(
      description: description,
      image: image,
      price: price,
      type: type,
      Gender: Gender,

    );
    FirebaseFirestore.instance
        .collection('hoodie')
        .add(dataModel!.toMap())
        .then((value) {
      emit(SucessCreateNewData());
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });




  }
  List<DataModel>hoodie=[];

  Future<void> GetDatahoodie()async
  {
    await FirebaseFirestore.instance.collection('men Categ').doc('men').collection('hoodie').get().then((value) {

      value.docs.forEach((element) {
        hoodie.add(DataModel.Fromjason(element.data()));
        emit(SucessGetData());

      });


    }).catchError((e)
    {
      print(e.toString());
      emit(ErrorGetData());


    });
  }
////////////////////////////////////////////////women////////////////
  File? dressimage;
  var dresspiker = ImagePicker();

  Future GetdressImage() async {
    final Pickerfile = await dresspiker.pickImage(
      source: ImageSource.gallery,
    );
    if (Pickerfile != null) {
      dressimage = File(Pickerfile.path);
      print(Pickerfile.path);
      emit(ImageDataSucess());
    } else {
      print('No image selected');
      emit(ImageDataError());
    }
  }
  void removedressimage() {
    dressimage = null;
    emit(RemovePostImage());
  }
  void UploaddressPost({
    required String description,
    required String price,
    required String type,
    required String Gender,
  }) {
    emit(LoadingCreateNewData());
    Firebase_Storage.FirebaseStorage.instance
        .ref()
        .child('dress/${Uri
        .file(dressimage!.path)
        .pathSegments
        .last}')
        .putFile(dressimage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print('value isssssssssssssssssssssssssssss');
        print(value);
        CreateNewDatadress(
          description: description,
          price: price,
          image: value,
          type: type,
          Gender: Gender,
        );
        emit(SucessCreateNewData());
      }).catchError((e) {
        print(e.toString());
        emit(ErrorCreateNewData());
      });
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });
  }




  void CreateNewDatadress
      ({
    required String description,
    required String image,
    required String price,
    required String type,
    required String Gender,


  })
  {
    emit(LoadingCreateNewData());
    dataModel=DataModel(
      description: description,
      image: image,
      price: price,
      type: type,
      Gender: Gender,

    );
    FirebaseFirestore.instance
        .collection('dress')
        .add(dataModel!.toMap())
        .then((value) {
      emit(SucessCreateNewData());
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });




  }
  List<DataModel>dress=[];

  Future<void> GetDatadress()async
  {
    await FirebaseFirestore.instance.collection('dress').get().then((value) {

      value.docs.forEach((element) {
        dress.add(DataModel.Fromjason(element.data()));
        emit(SucessGetData());

      });


    }).catchError((e)
    {
      print(e.toString());
      emit(ErrorGetData());


    });
  }

///////////////////////////
  File? jeansimage;
  var jeanspiker = ImagePicker();

  Future GetjeansImage() async {
    final Pickerfile = await jeanspiker.pickImage(
      source: ImageSource.gallery,
    );
    if (Pickerfile != null) {
      jeansimage = File(Pickerfile.path);
      print(Pickerfile.path);
      emit(ImageDataSucess());
    } else {
      print('No image selected');
      emit(ImageDataError());
    }
  }
  void removejeansimage() {
    jeansimage = null;
    emit(RemovePostImage());
  }
  void UploadjeansPost({
    required String description,
    required String price,
    required String type,
    required String Gender,
  }) {
    emit(LoadingCreateNewData());
    Firebase_Storage.FirebaseStorage.instance
        .ref()
        .child('jeans/${Uri
        .file(jeansimage!.path)
        .pathSegments
        .last}')
        .putFile(jeansimage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print('value isssssssssssssssssssssssssssss');
        print(value);
        CreateNewDatajeans(
          description: description,
          price: price,
          image: value,
          type: type,
          Gender: Gender,
        );
        emit(SucessCreateNewData());
      }).catchError((e) {
        print(e.toString());
        emit(ErrorCreateNewData());
      });
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });
  }




  void CreateNewDatajeans
      ({
    required String description,
    required String image,
    required String price,
    required String type,
    required String Gender,


  })
  {
    emit(LoadingCreateNewData());
    dataModel=DataModel(
      description: description,
      image: image,
      price: price,
      type: type,
      Gender: Gender,

    );
    FirebaseFirestore.instance
        .collection('jeans')
        .add(dataModel!.toMap())
        .then((value) {
      emit(SucessCreateNewData());
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });




  }
  List<DataModel>jeans=[];

  Future<void> GetDatajeans()async
  {
    await FirebaseFirestore.instance.collection('jeans').get().then((value) {

      value.docs.forEach((element) {
        jeans.add(DataModel.Fromjason(element.data()));
        emit(SucessGetData());

      });


    }).catchError((e)
    {
      print(e.toString());
      emit(ErrorGetData());


    });
  }
/////////////////////////////////////////////////
  File? Jacketimage;
  var Jacketpiker = ImagePicker();

  Future GetjacketImage() async {
    final Pickerfile = await Jacketpiker.pickImage(
      source: ImageSource.gallery,
    );
    if (Pickerfile != null) {
      Jacketimage = File(Pickerfile.path);
      print(Pickerfile.path);
      emit(ImageDataSucess());
    } else {
      print('No image selected');
      emit(ImageDataError());
    }
  }
  void removejacketimage() {
    Jacketimage = null;
    emit(RemovePostImage());
  }
  void UploadjacketPost({
    required String description,
    required String price,
    required String type,
    required String Gender,
  }) {
    emit(LoadingCreateNewData());
    Firebase_Storage.FirebaseStorage.instance
        .ref()
        .child('jacket/${Uri
        .file(Jacketimage!.path)
        .pathSegments
        .last}')
        .putFile(Jacketimage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print('value isssssssssssssssssssssssssssss');
        print(value);
        CreateNewDatajacket(
          description: description,
          price: price,
          image: value,
          type: type,
          Gender: Gender,
        );
        emit(SucessCreateNewData());
      }).catchError((e) {
        print(e.toString());
        emit(ErrorCreateNewData());
      });
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });
  }




  void CreateNewDatajacket
      ({
    required String description,
    required String image,
    required String price,
    required String type,
    required String Gender,


  })
  {
    emit(LoadingCreateNewData());
    dataModel=DataModel(
      description: description,
      image: image,
      price: price,
      type: type,
      Gender: Gender,

    );
    FirebaseFirestore.instance
        .collection('jacket')
        .add(dataModel!.toMap())
        .then((value) {
      emit(SucessCreateNewData());
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });




  }
  List<DataModel>jacket=[];

  Future<void> GetDatajacket()async
  {
    await FirebaseFirestore.instance.collection('jacket').get().then((value) {

      value.docs.forEach((element) {
        jacket.add(DataModel.Fromjason(element.data()));
        emit(SucessGetData());

      });


    }).catchError((e)
    {
      print(e.toString());
      emit(ErrorGetData());


    });
  }
//////////////////////////////////////////////////
  File? bagimage;
  var bagpiker = ImagePicker();

  Future GetbagImage() async {
    final Pickerfile = await bagpiker.pickImage(
      source: ImageSource.gallery,
    );
    if (Pickerfile != null) {
      bagimage = File(Pickerfile.path);
      print(Pickerfile.path);
      emit(ImageDataSucess());
    } else {
      print('No image selected');
      emit(ImageDataError());
    }
  }
  void removebagimage() {
    bagimage = null;
    emit(RemovePostImage());
  }
  void UploadbagPost({
    required String description,
    required String price,
    required String type,
    required String Gender,
  }) {
    emit(LoadingCreateNewData());
    Firebase_Storage.FirebaseStorage.instance
        .ref()
        .child('bag/${Uri
        .file(bagimage!.path)
        .pathSegments
        .last}')
        .putFile(bagimage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print('value isssssssssssssssssssssssssssss');
        print(value);
        CreateNewDatabag(
          description: description,
          price: price,
          image: value,
          type: type,
          Gender: Gender,
        );
        emit(SucessCreateNewData());
      }).catchError((e) {
        print(e.toString());
        emit(ErrorCreateNewData());
      });
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });
  }




  void CreateNewDatabag
      ({
    required String description,
    required String image,
    required String price,
    required String type,
    required String Gender,


  })
  {
    emit(LoadingCreateNewData());
    dataModel=DataModel(
      description: description,
      image: image,
      price: price,
      type: type,
      Gender: Gender,

    );
    FirebaseFirestore.instance
        .collection('bag')
        .add(dataModel!.toMap())
        .then((value) {
      emit(SucessCreateNewData());
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });




  }
  List<DataModel>bag=[];

  Future<void> GetDatabag()async
  {
    await FirebaseFirestore.instance.collection('bag').get().then((value) {

      value.docs.forEach((element) {
        bag.add(DataModel.Fromjason(element.data()));
        emit(SucessGetData());

      });


    }).catchError((e)
    {
      print(e.toString());
      emit(ErrorGetData());


    });
  }
  //////////////////////////////////////////////////////
  File? HoodieWomenimage;
  var HoodieWoemnpiker = ImagePicker();

  Future GetHoodieWomenImage() async {
    final Pickerfile = await HoodieWoemnpiker.pickImage(
      source: ImageSource.gallery,
    );
    if (Pickerfile != null) {
      HoodieWomenimage = File(Pickerfile.path);
      print(Pickerfile.path);
      emit(ImageDataSucess());
    } else {
      print('No image selected');
      emit(ImageDataError());
    }
  }
  void removeoodieWomenimage() {
    shoesimage = null;
    emit(RemovePostImage());
  }
  void UploadHoodieWomenPost({
    required String description,
    required String price,
    required String type,
    required String Gender,
  }) {
    emit(LoadingCreateNewData());
    Firebase_Storage.FirebaseStorage.instance
        .ref()
        .child('HoodieWomen/${Uri
        .file(HoodieWomenimage!.path)
        .pathSegments
        .last}')
        .putFile(HoodieWomenimage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        print('value isssssssssssssssssssssssssssss');
        print(value);
        CreateNewDataHoodieWomen(
          description: description,
          price: price,
          image: value,
          type: type,
          Gender: Gender,
        );
        emit(SucessCreateNewData());
      }).catchError((e) {
        print(e.toString());
        emit(ErrorCreateNewData());
      });
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });
  }




  void CreateNewDataHoodieWomen
      ({
    required String description,
    required String image,
    required String price,
    required String type,
    required String Gender,


  })
  {
    emit(LoadingCreateNewData());
    dataModel=DataModel(
      description: description,
      image: image,
      price: price,
      type: type,
      Gender: Gender,

    );
    FirebaseFirestore.instance
        .collection('HoodieWomen')
        .add(dataModel!.toMap())
        .then((value) {
      emit(SucessCreateNewData());
    }).catchError((e) {
      print(e.toString());
      emit(ErrorCreateNewData());
    });
  }
  List<DataModel>HoodieWomen=[];

  Future<void> GetDataHoodiewomen()async
  {
    await FirebaseFirestore.instance.collection('HoodieWomen').get().then((value) {

      value.docs.forEach((element) {
        HoodieWomen.add(DataModel.Fromjason(element.data()));
        emit(SucessGetData());

      });


    }).catchError((e)
    {
      print(e.toString());
      emit(ErrorGetData());


    });
  }
}