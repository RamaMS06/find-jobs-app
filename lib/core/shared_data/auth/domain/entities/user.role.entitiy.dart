enum UserRoleEnum {
  guest,
  authenticated;
}

 class UserRoleEntity {
  final UserRoleEnum role;

  UserRoleEntity({required this.role});
}