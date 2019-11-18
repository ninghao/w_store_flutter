class UserModel {
  String name;
  String password;

  UserModel.fromJson(Map<String, dynamic> data)
      : name = data['name'],
        password = data['password'];
}
