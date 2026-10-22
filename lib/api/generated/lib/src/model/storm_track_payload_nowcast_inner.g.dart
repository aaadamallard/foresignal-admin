// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storm_track_payload_nowcast_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StormTrackPayloadNowcastInnerLeadMinutesEnum
_$stormTrackPayloadNowcastInnerLeadMinutesEnum_number15 =
    const StormTrackPayloadNowcastInnerLeadMinutesEnum._('number15');
const StormTrackPayloadNowcastInnerLeadMinutesEnum
_$stormTrackPayloadNowcastInnerLeadMinutesEnum_number30 =
    const StormTrackPayloadNowcastInnerLeadMinutesEnum._('number30');
const StormTrackPayloadNowcastInnerLeadMinutesEnum
_$stormTrackPayloadNowcastInnerLeadMinutesEnum_number60 =
    const StormTrackPayloadNowcastInnerLeadMinutesEnum._('number60');

StormTrackPayloadNowcastInnerLeadMinutesEnum
_$stormTrackPayloadNowcastInnerLeadMinutesEnumValueOf(String name) {
  switch (name) {
    case 'number15':
      return _$stormTrackPayloadNowcastInnerLeadMinutesEnum_number15;
    case 'number30':
      return _$stormTrackPayloadNowcastInnerLeadMinutesEnum_number30;
    case 'number60':
      return _$stormTrackPayloadNowcastInnerLeadMinutesEnum_number60;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StormTrackPayloadNowcastInnerLeadMinutesEnum>
_$stormTrackPayloadNowcastInnerLeadMinutesEnumValues =
    BuiltSet<StormTrackPayloadNowcastInnerLeadMinutesEnum>(
      const <StormTrackPayloadNowcastInnerLeadMinutesEnum>[
        _$stormTrackPayloadNowcastInnerLeadMinutesEnum_number15,
        _$stormTrackPayloadNowcastInnerLeadMinutesEnum_number30,
        _$stormTrackPayloadNowcastInnerLeadMinutesEnum_number60,
      ],
    );

const StormTrackPayloadNowcastInnerMethodEnum
_$stormTrackPayloadNowcastInnerMethodEnum_linearAdvection =
    const StormTrackPayloadNowcastInnerMethodEnum._('linearAdvection');

StormTrackPayloadNowcastInnerMethodEnum
_$stormTrackPayloadNowcastInnerMethodEnumValueOf(String name) {
  switch (name) {
    case 'linearAdvection':
      return _$stormTrackPayloadNowcastInnerMethodEnum_linearAdvection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StormTrackPayloadNowcastInnerMethodEnum>
_$stormTrackPayloadNowcastInnerMethodEnumValues =
    BuiltSet<StormTrackPayloadNowcastInnerMethodEnum>(
      const <StormTrackPayloadNowcastInnerMethodEnum>[
        _$stormTrackPayloadNowcastInnerMethodEnum_linearAdvection,
      ],
    );

Serializer<StormTrackPayloadNowcastInnerLeadMinutesEnum>
_$stormTrackPayloadNowcastInnerLeadMinutesEnumSerializer =
    _$StormTrackPayloadNowcastInnerLeadMinutesEnumSerializer();
Serializer<StormTrackPayloadNowcastInnerMethodEnum>
_$stormTrackPayloadNowcastInnerMethodEnumSerializer =
    _$StormTrackPayloadNowcastInnerMethodEnumSerializer();

class _$StormTrackPayloadNowcastInnerLeadMinutesEnumSerializer
    implements
        PrimitiveSerializer<StormTrackPayloadNowcastInnerLeadMinutesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number15': 15,
    'number30': 30,
    'number60': 60,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    15: 'number15',
    30: 'number30',
    60: 'number60',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StormTrackPayloadNowcastInnerLeadMinutesEnum,
  ];
  @override
  final String wireName = 'StormTrackPayloadNowcastInnerLeadMinutesEnum';

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadNowcastInnerLeadMinutesEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StormTrackPayloadNowcastInnerLeadMinutesEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StormTrackPayloadNowcastInnerLeadMinutesEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StormTrackPayloadNowcastInnerMethodEnumSerializer
    implements PrimitiveSerializer<StormTrackPayloadNowcastInnerMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'linearAdvection': 'linear-advection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'linear-advection': 'linearAdvection',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StormTrackPayloadNowcastInnerMethodEnum,
  ];
  @override
  final String wireName = 'StormTrackPayloadNowcastInnerMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadNowcastInnerMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StormTrackPayloadNowcastInnerMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StormTrackPayloadNowcastInnerMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StormTrackPayloadNowcastInner extends StormTrackPayloadNowcastInner {
  @override
  final StormTrackPayloadNowcastInnerLeadMinutesEnum leadMinutes;
  @override
  final StormTrackPayloadNowcastInnerMethodEnum method;

  factory _$StormTrackPayloadNowcastInner([
    void Function(StormTrackPayloadNowcastInnerBuilder)? updates,
  ]) => (StormTrackPayloadNowcastInnerBuilder()..update(updates))._build();

  _$StormTrackPayloadNowcastInner._({
    required this.leadMinutes,
    required this.method,
  }) : super._();
  @override
  StormTrackPayloadNowcastInner rebuild(
    void Function(StormTrackPayloadNowcastInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StormTrackPayloadNowcastInnerBuilder toBuilder() =>
      StormTrackPayloadNowcastInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StormTrackPayloadNowcastInner &&
        leadMinutes == other.leadMinutes &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, leadMinutes.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StormTrackPayloadNowcastInner')
          ..add('leadMinutes', leadMinutes)
          ..add('method', method))
        .toString();
  }
}

class StormTrackPayloadNowcastInnerBuilder
    implements
        Builder<
          StormTrackPayloadNowcastInner,
          StormTrackPayloadNowcastInnerBuilder
        > {
  _$StormTrackPayloadNowcastInner? _$v;

  StormTrackPayloadNowcastInnerLeadMinutesEnum? _leadMinutes;
  StormTrackPayloadNowcastInnerLeadMinutesEnum? get leadMinutes =>
      _$this._leadMinutes;
  set leadMinutes(StormTrackPayloadNowcastInnerLeadMinutesEnum? leadMinutes) =>
      _$this._leadMinutes = leadMinutes;

  StormTrackPayloadNowcastInnerMethodEnum? _method;
  StormTrackPayloadNowcastInnerMethodEnum? get method => _$this._method;
  set method(StormTrackPayloadNowcastInnerMethodEnum? method) =>
      _$this._method = method;

  StormTrackPayloadNowcastInnerBuilder() {
    StormTrackPayloadNowcastInner._defaults(this);
  }

  StormTrackPayloadNowcastInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _leadMinutes = $v.leadMinutes;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StormTrackPayloadNowcastInner other) {
    _$v = other as _$StormTrackPayloadNowcastInner;
  }

  @override
  void update(void Function(StormTrackPayloadNowcastInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StormTrackPayloadNowcastInner build() => _build();

  _$StormTrackPayloadNowcastInner _build() {
    final _$result =
        _$v ??
        _$StormTrackPayloadNowcastInner._(
          leadMinutes: BuiltValueNullFieldError.checkNotNull(
            leadMinutes,
            r'StormTrackPayloadNowcastInner',
            'leadMinutes',
          ),
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'StormTrackPayloadNowcastInner',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
