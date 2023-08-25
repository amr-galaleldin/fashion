abstract class UserState{}

class IntialState extends UserState{}

class OnLoadingState extends UserState{}
class OnSucessState extends UserState{}
class OnErrorState extends UserState{
  final String error;

  OnErrorState(this.error);




}
class showpass extends UserState{}

class SucessCreateNewData extends UserState{}
class ErrorCreateNewData extends UserState{}
class LoadingCreateNewData extends UserState{}
class RemovePostImage extends UserState{}

class ImageDataSucess extends UserState{}
class ImageDataError extends UserState{}
class SucessGetData extends UserState{}
class ErrorGetData extends UserState{}

class ColorChangeMen extends UserState{}
class ColorChangeWomen extends UserState{}
class ColorChangeKids extends UserState{}