import 'package:mobil_dersi_projesi/core/usermodel/user_model.dart';

abstract class DBBase{
  Future<bool> saveUser(UserModel user);
  Future<UserModel> readUser(String userID);
}