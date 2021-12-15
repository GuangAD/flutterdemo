import 'package:json_annotation/json_annotation.dart';


part 'cart.g.dart';

@JsonSerializable()
class Cart {
      Cart();

  @JsonKey(ignore: true) dynamic md;
  @JsonKey(name: '+1') int loved;
  String name;
  int age;
  Data data;
  Meta meta;

  factory Cart.fromJson(Map<String,dynamic> json) => _$CartFromJson(json);
  Map<String, dynamic> toJson() => _$CartToJson(this);
}

@JsonSerializable()
class Data {
      Data();

  String id;
  String title;
  List<dynamic> items;

  factory Data.fromJson(Map<String,dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Meta {
      Meta();

  String forms;

  factory Meta.fromJson(Map<String,dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
