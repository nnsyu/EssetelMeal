// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meal _$MealFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$Meal {
  String get name => throw _privateConstructorUsedError;
  List<List<String>> get menu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealCopyWith<Meal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) then) =
      _$MealCopyWithImpl<$Res, Meal>;
  @useResult
  $Res call({String name, List<List<String>> menu});
}

/// @nodoc
class _$MealCopyWithImpl<$Res, $Val extends Meal>
    implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? menu = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MealCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$$_MealCopyWith(_$_Meal value, $Res Function(_$_Meal) then) =
      __$$_MealCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<List<String>> menu});
}

/// @nodoc
class __$$_MealCopyWithImpl<$Res> extends _$MealCopyWithImpl<$Res, _$_Meal>
    implements _$$_MealCopyWith<$Res> {
  __$$_MealCopyWithImpl(_$_Meal _value, $Res Function(_$_Meal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? menu = null,
  }) {
    return _then(_$_Meal(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      menu: null == menu
          ? _value._menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meal implements _Meal {
  _$_Meal({required this.name, required final List<List<String>> menu})
      : _menu = menu;

  factory _$_Meal.fromJson(Map<String, dynamic> json) => _$$_MealFromJson(json);

  @override
  final String name;
  final List<List<String>> _menu;
  @override
  List<List<String>> get menu {
    if (_menu is EqualUnmodifiableListView) return _menu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menu);
  }

  @override
  String toString() {
    return 'Meal(name: $name, menu: $menu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meal &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._menu, _menu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_menu));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MealCopyWith<_$_Meal> get copyWith =>
      __$$_MealCopyWithImpl<_$_Meal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealToJson(
      this,
    );
  }
}

abstract class _Meal implements Meal {
  factory _Meal(
      {required final String name,
      required final List<List<String>> menu}) = _$_Meal;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$_Meal.fromJson;

  @override
  String get name;
  @override
  List<List<String>> get menu;
  @override
  @JsonKey(ignore: true)
  _$$_MealCopyWith<_$_Meal> get copyWith => throw _privateConstructorUsedError;
}
