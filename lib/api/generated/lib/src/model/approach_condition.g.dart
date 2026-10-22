// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approach_condition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApproachConditionTypeEnum _$approachConditionTypeEnum_approach =
    const ApproachConditionTypeEnum._('approach');

ApproachConditionTypeEnum _$approachConditionTypeEnumValueOf(String name) {
  switch (name) {
    case 'approach':
      return _$approachConditionTypeEnum_approach;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ApproachConditionTypeEnum> _$approachConditionTypeEnumValues =
    BuiltSet<ApproachConditionTypeEnum>(const <ApproachConditionTypeEnum>[
  _$approachConditionTypeEnum_approach,
]);

Serializer<ApproachConditionTypeEnum> _$approachConditionTypeEnumSerializer =
    _$ApproachConditionTypeEnumSerializer();

class _$ApproachConditionTypeEnumSerializer
    implements PrimitiveSerializer<ApproachConditionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'approach': 'approach',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'approach': 'approach',
  };

  @override
  final Iterable<Type> types = const <Type>[ApproachConditionTypeEnum];
  @override
  final String wireName = 'ApproachConditionTypeEnum';

  @override
  Object serialize(Serializers serializers, ApproachConditionTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ApproachConditionTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ApproachConditionTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ApproachCondition extends ApproachCondition {
  @override
  final ApproachConditionTypeEnum type;
  @override
  final ApproachConditionTarget target;
  @override
  final num withinMeters;
  @override
  final num withinMinutes;

  factory _$ApproachCondition(
          [void Function(ApproachConditionBuilder)? updates]) =>
      (ApproachConditionBuilder()..update(updates))._build();

  _$ApproachCondition._(
      {required this.type,
      required this.target,
      required this.withinMeters,
      required this.withinMinutes})
      : super._();
  @override
  ApproachCondition rebuild(void Function(ApproachConditionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApproachConditionBuilder toBuilder() =>
      ApproachConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApproachCondition &&
        type == other.type &&
        target == other.target &&
        withinMeters == other.withinMeters &&
        withinMinutes == other.withinMinutes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, withinMeters.hashCode);
    _$hash = $jc(_$hash, withinMinutes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApproachCondition')
          ..add('type', type)
          ..add('target', target)
          ..add('withinMeters', withinMeters)
          ..add('withinMinutes', withinMinutes))
        .toString();
  }
}

class ApproachConditionBuilder
    implements Builder<ApproachCondition, ApproachConditionBuilder> {
  _$ApproachCondition? _$v;

  ApproachConditionTypeEnum? _type;
  ApproachConditionTypeEnum? get type => _$this._type;
  set type(ApproachConditionTypeEnum? type) => _$this._type = type;

  ApproachConditionTargetBuilder? _target;
  ApproachConditionTargetBuilder get target =>
      _$this._target ??= ApproachConditionTargetBuilder();
  set target(ApproachConditionTargetBuilder? target) => _$this._target = target;

  num? _withinMeters;
  num? get withinMeters => _$this._withinMeters;
  set withinMeters(num? withinMeters) => _$this._withinMeters = withinMeters;

  num? _withinMinutes;
  num? get withinMinutes => _$this._withinMinutes;
  set withinMinutes(num? withinMinutes) =>
      _$this._withinMinutes = withinMinutes;

  ApproachConditionBuilder() {
    ApproachCondition._defaults(this);
  }

  ApproachConditionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _target = $v.target.toBuilder();
      _withinMeters = $v.withinMeters;
      _withinMinutes = $v.withinMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApproachCondition other) {
    _$v = other as _$ApproachCondition;
  }

  @override
  void update(void Function(ApproachConditionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApproachCondition build() => _build();

  _$ApproachCondition _build() {
    _$ApproachCondition _$result;
    try {
      _$result = _$v ??
          _$ApproachCondition._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ApproachCondition', 'type'),
            target: target.build(),
            withinMeters: BuiltValueNullFieldError.checkNotNull(
                withinMeters, r'ApproachCondition', 'withinMeters'),
            withinMinutes: BuiltValueNullFieldError.checkNotNull(
                withinMinutes, r'ApproachCondition', 'withinMinutes'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'target';
        target.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApproachCondition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
