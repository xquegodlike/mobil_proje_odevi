import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobil_dersi_projesi/core/services/database_base.dart';
import 'package:mobil_dersi_projesi/core/usermodel/user_model.dart';

class FirestoreDBService implements DBBase {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Future<bool> saveUser(UserModel user) async {
    DocumentSnapshot _okunanUser =
    await _firebaseFirestore.collection("users").doc(user.userID).get();
    if (_okunanUser != null) {
      await _firebaseFirestore
          .collection("users")
          .doc(user.userID)
          .set(user.toMap());
      return true;
    } else {
      return true;
    }
  }

  @override
  Future<UserModel> readUser(String userID) async {
    DocumentSnapshot _okunanUser =
    await _firebaseFirestore.collection("users").doc(userID).get();
    Map<String, dynamic> _okunanUserData = await _okunanUser.data();

    UserModel _okunanUserDataMap = UserModel.fromMap(_okunanUserData);
    return _okunanUserDataMap;
  }
}
