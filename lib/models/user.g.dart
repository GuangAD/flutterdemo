// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as int
    ..username = json['username'] as String
    ..blocked = json['blocked'] as bool
    ..cart = json['cart'] == null
        ? null
        : Cart.fromJson(json['cart'] as Map<String, dynamic>)
    ..carts = json['carts'] as String
    ..createdAt = json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String)
    ..userTypeEnum =
        _$enumDecodeNullable(_$UserTypeEnumEnumMap, json['userTypeEnum'])
    ..userType = json['user_type'] as String
    ..userTypesEnum =
        _$enumDecodeNullable(_$UserTypesEnumEnumMap, json['userTypesEnum'])
    ..userTypes = json['user_types'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'blocked': instance.blocked,
      'cart': instance.cart,
      'carts': instance.carts,
      'createdAt': instance.createdAt?.toIso8601String(),
      'userTypeEnum': _$UserTypeEnumEnumMap[instance.userTypeEnum],
      'user_type': instance.userType,
      'userTypesEnum': _$UserTypesEnumEnumMap[instance.userTypesEnum],
      'user_types': instance.userTypes,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$UserTypeEnumEnumMap = {
  UserTypeEnum.Admin: 'Admin',
  UserTypeEnum.AppUser: 'AppUser',
  UserTypeEnum.Normal: 'Normal',
};

const _$UserTypesEnumEnumMap = {
  UserTypesEnum.Admin0: 'Admin0',
  UserTypesEnum.AppUser1: 'AppUser1',
  UserTypesEnum.Normal2: 'Normal2',
};
