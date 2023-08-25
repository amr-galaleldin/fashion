class UserModel {
  String? name;
  String? email;
  String? password;
  String? uId;
  String? phone;
  String?image;


  UserModel({this.name, this.email, this.password, this.uId, this.phone,this.image});





  UserModel.Fromjason(Map<String,dynamic>jason)
  {
    name=jason['name'];
    email=jason['email'];
    password=jason['password'];
    uId=jason['uId'];
    phone=jason['phone'];
    image=jason['image'];


  }

  Map<String,dynamic> toMap()
  {
    return {
      'name':name,
      'email':email,
      'password':password,
      'uId':uId,
      'phone':phone,
      'image':image,


    };


  }

}
