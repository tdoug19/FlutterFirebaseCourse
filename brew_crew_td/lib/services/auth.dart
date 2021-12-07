import 'package:brew_crew_td/models/user.dart';
import 'package:brew_crew_td/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;  //_ means private  I think


  /** Cant return a null user from this state change */
  Stream<User?> get user {
    //return user;
    return _auth.authStateChanges();

  }
  // sign in anon

  Future signInAnon() async {

    try{
      UserCredential userCredential = await _auth.signInAnonymously();
      User? user = userCredential.user;
      return user;
      //return _userFromFirebaseUser(user);

    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // register with email and pw
  Future registerWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password);
      User? user = userCredential.user;

      await DatabaseService(uid: user!.uid).updateUserData("0", "Trevor", 4);

      return user;

    }catch (e){
      print(e.toString());
      return null;
    }
  }

  // sign in with email and pw
  Future signInWithEmailAndPassword(String email, String password) async {
    try{

      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password);
      User? user = userCredential.user;
      return user;

    }catch (e){
      print(e.toString());
       return null;
    }
  }

  // sign out as well
  Future signOut() async {
    try{
      return await _auth.signOut();
    }catch (e){
      print(e.toString());
      return null;
    }
  }
}