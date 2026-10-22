// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_assessment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationAssessmentRequestRolesEnum
    _$situationAssessmentRequestRolesEnum_analyst =
    const SituationAssessmentRequestRolesEnum._('analyst');
const SituationAssessmentRequestRolesEnum
    _$situationAssessmentRequestRolesEnum_redTeam =
    const SituationAssessmentRequestRolesEnum._('redTeam');
const SituationAssessmentRequestRolesEnum
    _$situationAssessmentRequestRolesEnum_forecaster =
    const SituationAssessmentRequestRolesEnum._('forecaster');
const SituationAssessmentRequestRolesEnum
    _$situationAssessmentRequestRolesEnum_proposer =
    const SituationAssessmentRequestRolesEnum._('proposer');

SituationAssessmentRequestRolesEnum
    _$situationAssessmentRequestRolesEnumValueOf(String name) {
  switch (name) {
    case 'analyst':
      return _$situationAssessmentRequestRolesEnum_analyst;
    case 'redTeam':
      return _$situationAssessmentRequestRolesEnum_redTeam;
    case 'forecaster':
      return _$situationAssessmentRequestRolesEnum_forecaster;
    case 'proposer':
      return _$situationAssessmentRequestRolesEnum_proposer;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationAssessmentRequestRolesEnum>
    _$situationAssessmentRequestRolesEnumValues = BuiltSet<
        SituationAssessmentRequestRolesEnum>(const <SituationAssessmentRequestRolesEnum>[
  _$situationAssessmentRequestRolesEnum_analyst,
  _$situationAssessmentRequestRolesEnum_redTeam,
  _$situationAssessmentRequestRolesEnum_forecaster,
  _$situationAssessmentRequestRolesEnum_proposer,
]);

const SituationAssessmentRequestEffortEnum
    _$situationAssessmentRequestEffortEnum_low =
    const SituationAssessmentRequestEffortEnum._('low');
const SituationAssessmentRequestEffortEnum
    _$situationAssessmentRequestEffortEnum_medium =
    const SituationAssessmentRequestEffortEnum._('medium');
const SituationAssessmentRequestEffortEnum
    _$situationAssessmentRequestEffortEnum_high =
    const SituationAssessmentRequestEffortEnum._('high');

SituationAssessmentRequestEffortEnum
    _$situationAssessmentRequestEffortEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$situationAssessmentRequestEffortEnum_low;
    case 'medium':
      return _$situationAssessmentRequestEffortEnum_medium;
    case 'high':
      return _$situationAssessmentRequestEffortEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationAssessmentRequestEffortEnum>
    _$situationAssessmentRequestEffortEnumValues = BuiltSet<
        SituationAssessmentRequestEffortEnum>(const <SituationAssessmentRequestEffortEnum>[
  _$situationAssessmentRequestEffortEnum_low,
  _$situationAssessmentRequestEffortEnum_medium,
  _$situationAssessmentRequestEffortEnum_high,
]);

Serializer<SituationAssessmentRequestRolesEnum>
    _$situationAssessmentRequestRolesEnumSerializer =
    _$SituationAssessmentRequestRolesEnumSerializer();
Serializer<SituationAssessmentRequestEffortEnum>
    _$situationAssessmentRequestEffortEnumSerializer =
    _$SituationAssessmentRequestEffortEnumSerializer();

class _$SituationAssessmentRequestRolesEnumSerializer
    implements PrimitiveSerializer<SituationAssessmentRequestRolesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'analyst': 'analyst',
    'redTeam': 'red-team',
    'forecaster': 'forecaster',
    'proposer': 'proposer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'analyst': 'analyst',
    'red-team': 'redTeam',
    'forecaster': 'forecaster',
    'proposer': 'proposer',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SituationAssessmentRequestRolesEnum
  ];
  @override
  final String wireName = 'SituationAssessmentRequestRolesEnum';

  @override
  Object serialize(
          Serializers serializers, SituationAssessmentRequestRolesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SituationAssessmentRequestRolesEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SituationAssessmentRequestRolesEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SituationAssessmentRequestEffortEnumSerializer
    implements PrimitiveSerializer<SituationAssessmentRequestEffortEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SituationAssessmentRequestEffortEnum
  ];
  @override
  final String wireName = 'SituationAssessmentRequestEffortEnum';

  @override
  Object serialize(
          Serializers serializers, SituationAssessmentRequestEffortEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SituationAssessmentRequestEffortEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SituationAssessmentRequestEffortEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SituationAssessmentRequest extends SituationAssessmentRequest {
  @override
  final BuiltSet<SituationAssessmentRequestRolesEnum>? roles;
  @override
  final SituationAssessmentRequestEffortEnum? effort;

  factory _$SituationAssessmentRequest(
          [void Function(SituationAssessmentRequestBuilder)? updates]) =>
      (SituationAssessmentRequestBuilder()..update(updates))._build();

  _$SituationAssessmentRequest._({this.roles, this.effort}) : super._();
  @override
  SituationAssessmentRequest rebuild(
          void Function(SituationAssessmentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationAssessmentRequestBuilder toBuilder() =>
      SituationAssessmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationAssessmentRequest &&
        roles == other.roles &&
        effort == other.effort;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, effort.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationAssessmentRequest')
          ..add('roles', roles)
          ..add('effort', effort))
        .toString();
  }
}

class SituationAssessmentRequestBuilder
    implements
        Builder<SituationAssessmentRequest, SituationAssessmentRequestBuilder> {
  _$SituationAssessmentRequest? _$v;

  SetBuilder<SituationAssessmentRequestRolesEnum>? _roles;
  SetBuilder<SituationAssessmentRequestRolesEnum> get roles =>
      _$this._roles ??= SetBuilder<SituationAssessmentRequestRolesEnum>();
  set roles(SetBuilder<SituationAssessmentRequestRolesEnum>? roles) =>
      _$this._roles = roles;

  SituationAssessmentRequestEffortEnum? _effort;
  SituationAssessmentRequestEffortEnum? get effort => _$this._effort;
  set effort(SituationAssessmentRequestEffortEnum? effort) =>
      _$this._effort = effort;

  SituationAssessmentRequestBuilder() {
    SituationAssessmentRequest._defaults(this);
  }

  SituationAssessmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roles = $v.roles?.toBuilder();
      _effort = $v.effort;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationAssessmentRequest other) {
    _$v = other as _$SituationAssessmentRequest;
  }

  @override
  void update(void Function(SituationAssessmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationAssessmentRequest build() => _build();

  _$SituationAssessmentRequest _build() {
    _$SituationAssessmentRequest _$result;
    try {
      _$result = _$v ??
          _$SituationAssessmentRequest._(
            roles: _roles?.build(),
            effort: effort,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        _roles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SituationAssessmentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
