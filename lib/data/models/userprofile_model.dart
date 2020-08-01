class UserProfileModel {
  final String id;
  final String displayName;
  final String avatarUrl;

  const UserProfileModel.undefined({
    this.id: 'user id not found',
    this.displayName: 'user not Found',
    this.avatarUrl: '',
  });

  UserProfileModel({
    this.id,
    this.displayName,
    this.avatarUrl,
  });

  @override
  String toLog() => ({
        'id': id,
        'displayName': displayName,
        'avatarUrl': avatarUrl,
      }).toString();
}
