// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tool_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToolModel _$ToolModelFromJson(Map<String, dynamic> json) {
  return _ToolModel.fromJson(json);
}

/// @nodoc
mixin _$ToolModel {
  String get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToolModelCopyWith<ToolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToolModelCopyWith<$Res> {
  factory $ToolModelCopyWith(ToolModel value, $Res Function(ToolModel) then) =
      _$ToolModelCopyWithImpl<$Res, ToolModel>;
  @useResult
  $Res call({String name, String? icon, String? link});
}

/// @nodoc
class _$ToolModelCopyWithImpl<$Res, $Val extends ToolModel>
    implements $ToolModelCopyWith<$Res> {
  _$ToolModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToolModelImplCopyWith<$Res>
    implements $ToolModelCopyWith<$Res> {
  factory _$$ToolModelImplCopyWith(
          _$ToolModelImpl value, $Res Function(_$ToolModelImpl) then) =
      __$$ToolModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? icon, String? link});
}

/// @nodoc
class __$$ToolModelImplCopyWithImpl<$Res>
    extends _$ToolModelCopyWithImpl<$Res, _$ToolModelImpl>
    implements _$$ToolModelImplCopyWith<$Res> {
  __$$ToolModelImplCopyWithImpl(
      _$ToolModelImpl _value, $Res Function(_$ToolModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = freezed,
    Object? link = freezed,
  }) {
    return _then(_$ToolModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToolModelImpl with DiagnosticableTreeMixin implements _ToolModel {
  const _$ToolModelImpl({required this.name, this.icon, this.link});

  factory _$ToolModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToolModelImplFromJson(json);

  @override
  final String name;
  @override
  final String? icon;
  @override
  final String? link;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ToolModel(name: $name, icon: $icon, link: $link)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ToolModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('link', link));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToolModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, icon, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToolModelImplCopyWith<_$ToolModelImpl> get copyWith =>
      __$$ToolModelImplCopyWithImpl<_$ToolModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToolModelImplToJson(
      this,
    );
  }
}

abstract class _ToolModel implements ToolModel {
  const factory _ToolModel(
      {required final String name,
      final String? icon,
      final String? link}) = _$ToolModelImpl;

  factory _ToolModel.fromJson(Map<String, dynamic> json) =
      _$ToolModelImpl.fromJson;

  @override
  String get name;
  @override
  String? get icon;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$ToolModelImplCopyWith<_$ToolModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
