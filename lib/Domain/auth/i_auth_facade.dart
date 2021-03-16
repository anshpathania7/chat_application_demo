import 'package:chat_application_demo/Domain/core/user_model.dart';

abstract class IAuthFacade {
  Future<UserModel> getSignedInUser();
  Future<UserModel> registerUserWithGoogle();
  Future<bool> isUserSignedIn();
  Future<void> signoutUser();
}
