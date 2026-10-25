// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deception_payload_checks_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeceptionPayloadChecksInnerCheckEnum
_$deceptionPayloadChecksInnerCheckEnum_duplicateMmsi =
    const DeceptionPayloadChecksInnerCheckEnum._('duplicateMmsi');
const DeceptionPayloadChecksInnerCheckEnum
_$deceptionPayloadChecksInnerCheckEnum_vesselImpliedSpeed =
    const DeceptionPayloadChecksInnerCheckEnum._('vesselImpliedSpeed');
const DeceptionPayloadChecksInnerCheckEnum
_$deceptionPayloadChecksInnerCheckEnum_aircraftImpliedSpeed =
    const DeceptionPayloadChecksInnerCheckEnum._('aircraftImpliedSpeed');
const DeceptionPayloadChecksInnerCheckEnum
_$deceptionPayloadChecksInnerCheckEnum_unknownDefaultOpenApi =
    const DeceptionPayloadChecksInnerCheckEnum._('unknownDefaultOpenApi');

DeceptionPayloadChecksInnerCheckEnum
_$deceptionPayloadChecksInnerCheckEnumValueOf(String name) {
  switch (name) {
    case 'duplicateMmsi':
      return _$deceptionPayloadChecksInnerCheckEnum_duplicateMmsi;
    case 'vesselImpliedSpeed':
      return _$deceptionPayloadChecksInnerCheckEnum_vesselImpliedSpeed;
    case 'aircraftImpliedSpeed':
      return _$deceptionPayloadChecksInnerCheckEnum_aircraftImpliedSpeed;
    case 'unknownDefaultOpenApi':
      return _$deceptionPayloadChecksInnerCheckEnum_unknownDefaultOpenApi;
    default:
      return _$deceptionPayloadChecksInnerCheckEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DeceptionPayloadChecksInnerCheckEnum>
_$deceptionPayloadChecksInnerCheckEnumValues =
    BuiltSet<DeceptionPayloadChecksInnerCheckEnum>(
      const <DeceptionPayloadChecksInnerCheckEnum>[
        _$deceptionPayloadChecksInnerCheckEnum_duplicateMmsi,
        _$deceptionPayloadChecksInnerCheckEnum_vesselImpliedSpeed,
        _$deceptionPayloadChecksInnerCheckEnum_aircraftImpliedSpeed,
        _$deceptionPayloadChecksInnerCheckEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<DeceptionPayloadChecksInnerCheckEnum>
_$deceptionPayloadChecksInnerCheckEnumSerializer =
    _$DeceptionPayloadChecksInnerCheckEnumSerializer();

class _$DeceptionPayloadChecksInnerCheckEnumSerializer
    implements PrimitiveSerializer<DeceptionPayloadChecksInnerCheckEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'duplicateMmsi': 'duplicate-mmsi',
    'vesselImpliedSpeed': 'vessel-implied-speed',
    'aircraftImpliedSpeed': 'aircraft-implied-speed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'duplicate-mmsi': 'duplicateMmsi',
    'vessel-implied-speed': 'vesselImpliedSpeed',
    'aircraft-implied-speed': 'aircraftImpliedSpeed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DeceptionPayloadChecksInnerCheckEnum,
  ];
  @override
  final String wireName = 'DeceptionPayloadChecksInnerCheckEnum';

  @override
  Object serialize(
    Serializers serializers,
    DeceptionPayloadChecksInnerCheckEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeceptionPayloadChecksInnerCheckEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeceptionPayloadChecksInnerCheckEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DeceptionPayloadChecksInner extends DeceptionPayloadChecksInner {
  @override
  final DeceptionPayloadChecksInnerCheckEnum check;
  @override
  final int count;
  @override
  final DateTime? lastAt;
  @override
  final String? detail;

  factory _$DeceptionPayloadChecksInner([
    void Function(DeceptionPayloadChecksInnerBuilder)? updates,
  ]) => (DeceptionPayloadChecksInnerBuilder()..update(updates))._build();

  _$DeceptionPayloadChecksInner._({
    required this.check,
    required this.count,
    this.lastAt,
    this.detail,
  }) : super._();
  @override
  DeceptionPayloadChecksInner rebuild(
    void Function(DeceptionPayloadChecksInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeceptionPayloadChecksInnerBuilder toBuilder() =>
      DeceptionPayloadChecksInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeceptionPayloadChecksInner &&
        check == other.check &&
        count == other.count &&
        lastAt == other.lastAt &&
        detail == other.detail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, check.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, lastAt.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeceptionPayloadChecksInner')
          ..add('check', check)
          ..add('count', count)
          ..add('lastAt', lastAt)
          ..add('detail', detail))
        .toString();
  }
}

class DeceptionPayloadChecksInnerBuilder
    implements
        Builder<
          DeceptionPayloadChecksInner,
          DeceptionPayloadChecksInnerBuilder
        > {
  _$DeceptionPayloadChecksInner? _$v;

  DeceptionPayloadChecksInnerCheckEnum? _check;
  DeceptionPayloadChecksInnerCheckEnum? get check => _$this._check;
  set check(DeceptionPayloadChecksInnerCheckEnum? check) =>
      _$this._check = check;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  DateTime? _lastAt;
  DateTime? get lastAt => _$this._lastAt;
  set lastAt(DateTime? lastAt) => _$this._lastAt = lastAt;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  DeceptionPayloadChecksInnerBuilder() {
    DeceptionPayloadChecksInner._defaults(this);
  }

  DeceptionPayloadChecksInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _check = $v.check;
      _count = $v.count;
      _lastAt = $v.lastAt;
      _detail = $v.detail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeceptionPayloadChecksInner other) {
    _$v = other as _$DeceptionPayloadChecksInner;
  }

  @override
  void update(void Function(DeceptionPayloadChecksInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeceptionPayloadChecksInner build() => _build();

  _$DeceptionPayloadChecksInner _build() {
    final _$result =
        _$v ??
        _$DeceptionPayloadChecksInner._(
          check: BuiltValueNullFieldError.checkNotNull(
            check,
            r'DeceptionPayloadChecksInner',
            'check',
          ),
          count: BuiltValueNullFieldError.checkNotNull(
            count,
            r'DeceptionPayloadChecksInner',
            'count',
          ),
          lastAt: lastAt,
          detail: detail,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
