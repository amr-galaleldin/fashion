abstract class LoginState{}

class IntialState extends LoginState{}

class OnLoadingState extends LoginState{}
class OnSucessState extends LoginState{
  final String uId;

  OnSucessState(this.uId);
}
class OnErrorState extends LoginState{
  final String error;

  OnErrorState(this.error);

}


class showpass extends LoginState{}
class ChangeBottomNav extends LoginState{}





