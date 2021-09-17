import 'package:brew_crew_td/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;  //_ means private  I think


  //create User object based on FirebaseUser
  UserFirebase _userFromFirebaseUser(User user) {

    return UserFirebase(uid: user.uid);
  }
  // sign in anon

  Future signInAnon() async {

    try{
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user!;

      return _userFromFirebaseUser(user);

    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and pw
  // register with email and pw
  // sign out as well


}