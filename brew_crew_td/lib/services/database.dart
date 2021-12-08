import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';



class DatabaseService {

  final String uid;
  DatabaseService({ required this.uid});
  // collection reference
  //final DatabaseReference brewCollection = FirebaseDatabase.instance.reference().child("brews");
  final DatabaseReference brewCollection = FirebaseDatabase.instance.reference().child("brews");

  Future updateUserData(String sugars, String name, int strength) async{

    return await brewCollection.child(uid).set({
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }

}