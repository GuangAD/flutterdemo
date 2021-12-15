import 'package:json_annotation/json_annotation.dart';
import 'cart.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
      User();

  int id;
  String username;
  bool blocked;
  Cart cart;
  String carts;
  DateTime createdAt;
  UserTypeEnum 
    get userTypeEnum => _userTypeEnumFromString(userType);
    set userTypeEnum(UserTypeEnum value) => userType = _stringFromUserTypeEnum(value);
  @JsonKey(name: 'user_type') String userType;
  UserTypesEnum 
    get userTypesEnum => _userTypesEnumFromString(userTypes);
    set userTypesEnum(UserTypesEnum value) => userTypes = _stringFromUserTypesEnum(value);
  @JsonKey(name: 'user_types') String userTypes;

  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  UserTypeEnum _userTypeEnumFromString(String input) {
    return UserTypeEnum.values.firstWhere(
      (e) => _stringFromUserTypeEnum(e) == input.toLowerCase(),
      orElse: () => null,
    );
  }
  
  String _stringFromUserTypeEnum(UserTypeEnum input) {
    return input.toString().substring(input.toString().indexOf('.') + 1).toLowerCase();
  }
  UserTypesEnum _userTypesEnumFromString(String input) {
    return UserTypesEnum.values.firstWhere(
      (e) => _stringFromUserTypesEnum(e) == input.toLowerCase(),
      orElse: () => null,
    );
  }
  
  String _stringFromUserTypesEnum(UserTypesEnum input) {
    return input.toString().substring(input.toString().indexOf('.') + 1).toLowerCase();
  }}

enum UserTypeEnum { Admin, AppUser, Normal }
enum UserTypesEnum { Admin0, AppUser1, Normal2 }
