class RemoteConfigModel {
  String guidUser;
  String nameUser;

  RemoteConfigModel({
    required this.guidUser,
    required this.nameUser,
  });

  @override
  String toString() => 'RemoteConfig(guid: $guidUser, name: $nameUser)';
}
