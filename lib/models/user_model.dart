class UserModel {
  Map<String, dynamic> address;
  int id;
  String email;
  String username;
  String password;
  Map<String, String> name;
  String phone;
  String image;
  int v;

  UserModel(
      {
        required this.address,
        required this.id,
        required this.email,
        required this.username,
        required this.password,
        required this.name,
        required this.phone,
        required this.image,
        required this.v
      });
}
