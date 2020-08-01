import 'package:weaver/data/entities/userprofile_entity.dart';
import 'package:weaver/data/models/userprofile_model.dart';

class UserProfileConverter {
  static UserProfileModel entityToModel(UserProfileEntity entity) {
    return UserProfileModel(
      id: entity.id,
      displayName: entity.displayName,
      avatarUrl: entity.avatarUrl,
    );
  }

  static UserProfileEntity modelToEntity(UserProfileModel model) {
    return UserProfileEntity(
      id: model.id,
      displayName: model.displayName,
      avatarUrl: model.avatarUrl,
    );
  }
}
