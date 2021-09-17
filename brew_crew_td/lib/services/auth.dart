import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;  //_ means private  I think

  // sign in anon

  Future signInAnon() async {
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;

    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and pw
  // register with email and pw
  // sign out as well


}