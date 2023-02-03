// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meal _$$_MealFromJson(Map<String, dynamic> json) => _$_Meal(
      name: json['name'] as String,
      menu: (json['menu'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
    );

Map<String, dynamic> _$$_MealToJson(_$_Meal instance) => <String, dynamic>{
      'name': instance.name,
      'menu': instance.menu,
    };
