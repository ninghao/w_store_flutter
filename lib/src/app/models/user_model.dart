class UserModel {
  String name;
  String password;

  UserModel({
    this.name,
  });

  UserModel.fromJson(Map<String, dynamic> data)
      : name = data['name'],
        password = data['password'];
}
