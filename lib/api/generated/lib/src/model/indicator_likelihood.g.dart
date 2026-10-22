// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_likelihood.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndicatorLikelihoodClass_Enum _$indicatorLikelihoodClassEnum_high =
    const IndicatorLikelihoodClass_Enum._('high');
const IndicatorLikelihoodClass_Enum _$indicatorLikelihoodClassEnum_medium =
    const IndicatorLikelihoodClass_Enum._('medium');
const IndicatorLikelihoodClass_Enum _$indicatorLikelihoodClassEnum_low =
    const IndicatorLikelihoodClass_Enum._('low');
const IndicatorLikelihoodClass_Enum _$indicatorLikelihoodClassEnum_neutral =
    const IndicatorLikelihoodClass_Enum._('neutral');

IndicatorLikelihoodClass_Enum _$indicatorLikelihoodClassEnumValueOf(
  String name,
) {
  switch (name) {
    case 'high':
      return _$indicatorLikelihoodClassEnum_high;
    case 'medium':
      return _$indicatorLikelihoodClassEnum_medium;
    case 'low':
      return _$indicatorLikelihoodClassEnum_low;
    case 'neutral':
      return _$indicatorLikelihoodClassEnum_neutral;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorLikelihoodClass_Enum>
_$indicatorLikelihoodClassEnumValues = BuiltSet<IndicatorLikelihoodClass_Enum>(
  const <IndicatorLikelihoodClass_Enum>[
    _$indicatorLikelihoodClassEnum_high,
    _$indicatorLikelihoodClassEnum_medium,
    _$indicatorLikelihoodClassEnum_low,
    _$indicatorLikelihoodClassEnum_neutral,
  ],
);

const IndicatorLikelihoodDirectionEnum
_$indicatorLikelihoodDirectionEnum_supports =
    const IndicatorLikelihoodDirectionEnum._('supports');
const IndicatorLikelihoodDirectionEnum
_$indicatorLikelihoodDirectionEnum_weakens =
    const IndicatorLikelihoodDirectionEnum._('weakens');

IndicatorLikelihoodDirectionEnum _$indicatorLikelihoodDirectionEnumValueOf(
  String name,
) {
  switch (name) {
    case 'supports':
      return _$indicatorLikelihoodDirectionEnum_supports;
    case 'weakens':
      return _$indicatorLikelihoodDirectionEnum_weakens;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndicatorLikelihoodDirectionEnum>
_$indicatorLikelihoodDirectionEnumValues =
    BuiltSet<IndicatorLikelihoodDirectionEnum>(
      const <IndicatorLikelihoodDirectionEnum>[
        _$indicatorLikelihoodDirectionEnum_supports,
        _$indicatorLikelihoodDirectionEnum_weakens,
      ],
    );

Serializer<IndicatorLikelihoodClass_Enum>
_$indicatorLikelihoodClassEnumSerializer =
    _$IndicatorLikelihoodClass_EnumSerializer();
Serializer<IndicatorLikelihoodDirectionEnum>
_$indicatorLikelihoodDirectionEnumSerializer =
    _$IndicatorLikelihoodDirectionEnumSerializer();

class _$IndicatorLikelihoodClass_EnumSerializer
    implements PrimitiveSerializer<IndicatorLikelihoodClass_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'high': 'high',
    'medium': 'medium',
    'low': 'low',
    'neutral': 'neutral',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'high': 'high',
    'medium': 'medium',
    'low': 'low',
    'neutral': 'neutral',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorLikelihoodClass_Enum];
  @override
  final String wireName = 'IndicatorLikelihoodClass_Enum';

  @override
  Object serialize(
    Serializers serializers,
    IndicatorLikelihoodClass_Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IndicatorLikelihoodClass_Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IndicatorLikelihoodClass_Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IndicatorLikelihoodDirectionEnumSerializer
    implements PrimitiveSerializer<IndicatorLikelihoodDirectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'supports': 'supports',
    'weakens': 'weakens',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'supports': 'supports',
    'weakens': 'weakens',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorLikelihoodDirectionEnum];
  @override
  final String wireName = 'IndicatorLikelihoodDirectionEnum';

  @override
  Object serialize(
    Serializers serializers,
    IndicatorLikelihoodDirectionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IndicatorLikelihoodDirectionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IndicatorLikelihoodDirectionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IndicatorLikelihood extends IndicatorLikelihood {
  @override
  final IndicatorLikelihoodClass_Enum class_;
  @override
  final IndicatorLikelihoodDirectionEnum direction;
  @override
  final num? value;
  @override
  final String? rationale;
  @override
  final num? effective;

  factory _$IndicatorLikelihood([
    void Function(IndicatorLikelihoodBuilder)? updates,
  ]) => (IndicatorLikelihoodBuilder()..update(updates))._build();

  _$IndicatorLikelihood._({
    required this.class_,
    required this.direction,
    this.value,
    this.rationale,
    this.effective,
  }) : super._();
  @override
  IndicatorLikelihood rebuild(
    void Function(IndicatorLikelihoodBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IndicatorLikelihoodBuilder toBuilder() =>
      IndicatorLikelihoodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndicatorLikelihood &&
        class_ == other.class_ &&
        direction == other.direction &&
        value == other.value &&
        rationale == other.rationale &&
        effective == other.effective;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, class_.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, effective.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndicatorLikelihood')
          ..add('class_', class_)
          ..add('direction', direction)
          ..add('value', value)
          ..add('rationale', rationale)
          ..add('effective', effective))
        .toString();
  }
}

class IndicatorLikelihoodBuilder
    implements Builder<IndicatorLikelihood, IndicatorLikelihoodBuilder> {
  _$IndicatorLikelihood? _$v;

  IndicatorLikelihoodClass_Enum? _class_;
  IndicatorLikelihoodClass_Enum? get class_ => _$this._class_;
  set class_(IndicatorLikelihoodClass_Enum? class_) => _$this._class_ = class_;

  IndicatorLikelihoodDirectionEnum? _direction;
  IndicatorLikelihoodDirectionEnum? get direction => _$this._direction;
  set direction(IndicatorLikelihoodDirectionEnum? direction) =>
      _$this._direction = direction;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  num? _effective;
  num? get effective => _$this._effective;
  set effective(num? effective) => _$this._effective = effective;

  IndicatorLikelihoodBuilder() {
    IndicatorLikelihood._defaults(this);
  }

  IndicatorLikelihoodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _class_ = $v.class_;
      _direction = $v.direction;
      _value = $v.value;
      _rationale = $v.rationale;
      _effective = $v.effective;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndicatorLikelihood other) {
    _$v = other as _$IndicatorLikelihood;
  }

  @override
  void update(void Function(IndicatorLikelihoodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndicatorLikelihood build() => _build();

  _$IndicatorLikelihood _build() {
    final _$result =
        _$v ??
        _$IndicatorLikelihood._(
          class_: BuiltValueNullFieldError.checkNotNull(
            class_,
            r'IndicatorLikelihood',
            'class_',
          ),
          direction: BuiltValueNullFieldError.checkNotNull(
            direction,
            r'IndicatorLikelihood',
            'direction',
          ),
          value: value,
          rationale: rationale,
          effective: effective,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
