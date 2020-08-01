class UserIdentityModel {
  final String id;
  final String email;
  final String password;

  const UserIdentityModel.undefined({
    this.id: 'user id not found',
    this.email: 'user not Found',
    this.password: '',
  });

  UserIdentityModel({
    this.id,
    this.email,
    this.password,
  });

  @override
  String toLog() => ({
        'id': id,
        'email': email,
        'password': password,
      }).toString();
}
