// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisSetPatchCadenceEnum _$hypothesisSetPatchCadenceEnum_daily =
    const HypothesisSetPatchCadenceEnum._('daily');
const HypothesisSetPatchCadenceEnum _$hypothesisSetPatchCadenceEnum_weekly =
    const HypothesisSetPatchCadenceEnum._('weekly');
const HypothesisSetPatchCadenceEnum _$hypothesisSetPatchCadenceEnum_monthly =
    const HypothesisSetPatchCadenceEnum._('monthly');

HypothesisSetPatchCadenceEnum _$hypothesisSetPatchCadenceEnumValueOf(
    String name) {
  switch (name) {
    case 'daily':
      return _$hypothesisSetPatchCadenceEnum_daily;
    case 'weekly':
      return _$hypothesisSetPatchCadenceEnum_weekly;
    case 'monthly':
      return _$hypothesisSetPatchCadenceEnum_monthly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HypothesisSetPatchCadenceEnum>
    _$hypothesisSetPatchCadenceEnumValues = BuiltSet<
        HypothesisSetPatchCadenceEnum>(const <HypothesisSetPatchCadenceEnum>[
  _$hypothesisSetPatchCadenceEnum_daily,
  _$hypothesisSetPatchCadenceEnum_weekly,
  _$hypothesisSetPatchCadenceEnum_monthly,
]);

const HypothesisSetPatchStatusEnum _$hypothesisSetPatchStatusEnum_active =
    const HypothesisSetPatchStatusEnum._('active');
const HypothesisSetPatchStatusEnum _$hypothesisSetPatchStatusEnum_archived =
    const HypothesisSetPatchStatusEnum._('archived');

HypothesisSetPatchStatusEnum _$hypothesisSetPatchStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'active':
      return _$hypothesisSetPatchStatusEnum_active;
    case 'archived':
      return _$hypothesisSetPatchStatusEnum_archived;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HypothesisSetPatchStatusEnum>
    _$hypothesisSetPatchStatusEnumValues =
    BuiltSet<HypothesisSetPatchStatusEnum>(const <HypothesisSetPatchStatusEnum>[
  _$hypothesisSetPatchStatusEnum_active,
  _$hypothesisSetPatchStatusEnum_archived,
]);

Serializer<HypothesisSetPatchCadenceEnum>
    _$hypothesisSetPatchCadenceEnumSerializer =
    _$HypothesisSetPatchCadenceEnumSerializer();
Serializer<HypothesisSetPatchStatusEnum>
    _$hypothesisSetPatchStatusEnumSerializer =
    _$HypothesisSetPatchStatusEnumSerializer();

class _$HypothesisSetPatchCadenceEnumSerializer
    implements PrimitiveSerializer<HypothesisSetPatchCadenceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisSetPatchCadenceEnum];
  @override
  final String wireName = 'HypothesisSetPatchCadenceEnum';

  @override
  Object serialize(
          Serializers serializers, HypothesisSetPatchCadenceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HypothesisSetPatchCadenceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HypothesisSetPatchCadenceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HypothesisSetPatchStatusEnumSerializer
    implements PrimitiveSerializer<HypothesisSetPatchStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'archived': 'archived',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'archived': 'archived',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisSetPatchStatusEnum];
  @override
  final String wireName = 'HypothesisSetPatchStatusEnum';

  @override
  Object serialize(Serializers serializers, HypothesisSetPatchStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HypothesisSetPatchStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HypothesisSetPatchStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HypothesisSetPatch extends HypothesisSetPatch {
  @override
  final String? description;
  @override
  final HypothesisSetPatchCadenceEnum? cadence;
  @override
  final HypothesisSetPatchStatusEnum? status;
  @override
  final int version;

  factory _$HypothesisSetPatch(
          [void Function(HypothesisSetPatchBuilder)? updates]) =>
      (HypothesisSetPatchBuilder()..update(updates))._build();

  _$HypothesisSetPatch._(
      {this.description, this.cadence, this.status, required this.version})
      : super._();
  @override
  HypothesisSetPatch rebuild(
          void Function(HypothesisSetPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisSetPatchBuilder toBuilder() =>
      HypothesisSetPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSetPatch &&
        description == other.description &&
        cadence == other.cadence &&
        status == other.status &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, cadence.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisSetPatch')
          ..add('description', description)
          ..add('cadence', cadence)
          ..add('status', status)
          ..add('version', version))
        .toString();
  }
}

class HypothesisSetPatchBuilder
    implements Builder<HypothesisSetPatch, HypothesisSetPatchBuilder> {
  _$HypothesisSetPatch? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  HypothesisSetPatchCadenceEnum? _cadence;
  HypothesisSetPatchCadenceEnum? get cadence => _$this._cadence;
  set cadence(HypothesisSetPatchCadenceEnum? cadence) =>
      _$this._cadence = cadence;

  HypothesisSetPatchStatusEnum? _status;
  HypothesisSetPatchStatusEnum? get status => _$this._status;
  set status(HypothesisSetPatchStatusEnum? status) => _$this._status = status;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  HypothesisSetPatchBuilder() {
    HypothesisSetPatch._defaults(this);
  }

  HypothesisSetPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _cadence = $v.cadence;
      _status = $v.status;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSetPatch other) {
    _$v = other as _$HypothesisSetPatch;
  }

  @override
  void update(void Function(HypothesisSetPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSetPatch build() => _build();

  _$HypothesisSetPatch _build() {
    final _$result = _$v ??
        _$HypothesisSetPatch._(
          description: description,
          cadence: cadence,
          status: status,
          version: BuiltValueNullFieldError.checkNotNull(
              version, r'HypothesisSetPatch', 'version'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
