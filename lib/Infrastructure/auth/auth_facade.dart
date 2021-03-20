import 'package:chat_application_demo/Domain/auth/i_auth_facade.dart';
import 'package:chat_application_demo/Domain/core/user_model.dart';
import 'package:chat_application_demo/Infrastructure/services/push_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class AuthFacade implements IAuthFacade {
  final GoogleSignIn gsignin =
      GoogleSignIn(signInOption: SignInOption.standard);
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final Firestore _firestore = Firestore.instance;
  @override
  Future<UserModel> getSignedInUser() async {
    final userVal = await firebaseAuth.currentUser().then((value) => value);
    return UserModel(name: userVal.displayName, uid: userVal.uid);
  }

  @override
  Future<UserModel> registerUserWithGoogle() async {
    final GoogleSignInAccount signInTheUser = await gsignin.signIn();
    final GoogleSignInAuthentication inAuthentication =
        await signInTheUser.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.getCredential(
        idToken: inAuthentication.idToken,
        accessToken: inAuthentication.accessToken);

    final userVal = await firebaseAuth
        .signInWithCredential(authCredential)
        .then((value) => value.user);
    await _firestore
        .collection('User')
        .document('${userVal.uid}')
        .setData({'username': userVal.displayName}, merge: true);
    if (!kIsWeb) {
      await PushNotifications().getInstance().getToken();
    }
    return UserModel(name: userVal.displayName, uid: userVal.uid);
  }

  @override
  Future<bool> isUserSignedIn() async {
    final userVal = await firebaseAuth.currentUser().then((value) => value);
    return (userVal != null) ? true : false;
  }

  @override
  Future<void> signoutUser() async {
    await firebaseAuth.signOut();
    await gsignin.signOut();
  }
}
