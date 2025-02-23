class UserModel {
  final Map<String, dynamic> address;
  final int id;
  final String email;
  final String username;
  final String password;
  final Map<String, String> name;
  final String phone;
  final int v;

  const UserModel(
      this.address,
      this.id,
      this.email,
      this.username,
      this.password,
      this.name,
      this.phone,
      this.v);
}
