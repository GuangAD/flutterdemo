// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) {
  return Cart()
    ..loved = json['+1'] as int
    ..name = json['name'] as String
    ..age = json['age'] as int
    ..data = json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>)
    ..meta = json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      '+1': instance.loved,
      'name': instance.name,
      'age': instance.age,
      'data': instance.data,
      'meta': instance.meta,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..items = json['items'] as List;
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'items': instance.items,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta()..forms = json['forms'] as String;
}

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'forms': instance.forms,
    };
