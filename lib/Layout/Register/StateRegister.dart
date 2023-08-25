abstract class RegisterState{}
class intialState extends RegisterState{}
class OnSucessRegist extends RegisterState{}
class OnSucessCustomersRegist extends RegisterState{}
class OnErrorRegist extends RegisterState{}
class OnErrorCustomersRegist extends RegisterState{}
class OnLoadingRegist extends RegisterState{}
class OnLoadingCustomersRegist extends RegisterState{}

class OnSucessCreateUser extends RegisterState{}
class OnErrorCreateUser extends RegisterState{
  final String error;

  OnErrorCreateUser(this.error);

}