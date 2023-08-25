class DataModel
{
  String? description;
  String? image;
  String? price;
  String? type;
  String? Gender;

  DataModel({this.description, this.image, this.price,this.type,this.Gender});





  DataModel.Fromjason(Map<String,dynamic>jason)
  {
    description=jason['description'];
    image=jason['image'];
    price=jason['price'];
    type=jason['type'];
    Gender=jason['Gender'];
  }

  Map<String,dynamic> toMap()
  {
    return {
      'description':description,
      'image':image,
      'price':price,
      'type':type,
      'Gender':Gender
    };


  }










}