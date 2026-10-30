// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'briefing_run_breaking.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BriefingRunBreakingSeverityEnum _$briefingRunBreakingSeverityEnum_info =
    const BriefingRunBreakingSeverityEnum._('info');
const BriefingRunBreakingSeverityEnum
_$briefingRunBreakingSeverityEnum_warning =
    const BriefingRunBreakingSeverityEnum._('warning');
const BriefingRunBreakingSeverityEnum
_$briefingRunBreakingSeverityEnum_critical =
    const BriefingRunBreakingSeverityEnum._('critical');
const BriefingRunBreakingSeverityEnum
_$briefingRunBreakingSeverityEnum_unknownDefaultOpenApi =
    const BriefingRunBreakingSeverityEnum._('unknownDefaultOpenApi');

BriefingRunBreakingSeverityEnum _$briefingRunBreakingSeverityEnumValueOf(
  String name,
) {
  switch (name) {
    case 'info':
      return _$briefingRunBreakingSeverityEnum_info;
    case 'warning':
      return _$briefingRunBreakingSeverityEnum_warning;
    case 'critical':
      return _$briefingRunBreakingSeverityEnum_critical;
    case 'unknownDefaultOpenApi':
      return _$briefingRunBreakingSeverityEnum_unknownDefaultOpenApi;
    default:
      return _$briefingRunBreakingSeverityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BriefingRunBreakingSeverityEnum>
_$briefingRunBreakingSeverityEnumValues =
    BuiltSet<BriefingRunBreakingSeverityEnum>(
      const <BriefingRunBreakingSeverityEnum>[
        _$briefingRunBreakingSeverityEnum_info,
        _$briefingRunBreakingSeverityEnum_warning,
        _$briefingRunBreakingSeverityEnum_critical,
        _$briefingRunBreakingSeverityEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<BriefingRunBreakingSeverityEnum>
_$briefingRunBreakingSeverityEnumSerializer =
    _$BriefingRunBreakingSeverityEnumSerializer();

class _$BriefingRunBreakingSeverityEnumSerializer
    implements PrimitiveSerializer<BriefingRunBreakingSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BriefingRunBreakingSeverityEnum];
  @override
  final String wireName = 'BriefingRunBreakingSeverityEnum';

  @override
  Object serialize(
    Serializers serializers,
    BriefingRunBreakingSeverityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BriefingRunBreakingSeverityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BriefingRunBreakingSeverityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BriefingRunBreaking extends BriefingRunBreaking {
  @override
  final int alertId;
  @override
  final String? ruleId;
  @override
  final String? ruleName;
  @override
  final BriefingRunBreakingSeverityEnum severity;
  @override
  final DateTime? firedAt;
  @override
  final String? message;

  factory _$BriefingRunBreaking([
    void Function(BriefingRunBreakingBuilder)? updates,
  ]) => (BriefingRunBreakingBuilder()..update(updates))._build();

  _$BriefingRunBreaking._({
    required this.alertId,
    this.ruleId,
    this.ruleName,
    required this.severity,
    this.firedAt,
    this.message,
  }) : super._();
  @override
  BriefingRunBreaking rebuild(
    void Function(BriefingRunBreakingBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BriefingRunBreakingBuilder toBuilder() =>
      BriefingRunBreakingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BriefingRunBreaking &&
        alertId == other.alertId &&
        ruleId == other.ruleId &&
        ruleName == other.ruleName &&
        severity == other.severity &&
        firedAt == other.firedAt &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, ruleName.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, firedAt.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BriefingRunBreaking')
          ..add('alertId', alertId)
          ..add('ruleId', ruleId)
          ..add('ruleName', ruleName)
          ..add('severity', severity)
          ..add('firedAt', firedAt)
          ..add('message', message))
        .toString();
  }
}

class BriefingRunBreakingBuilder
    implements Builder<BriefingRunBreaking, BriefingRunBreakingBuilder> {
  _$BriefingRunBreaking? _$v;

  int? _alertId;
  int? get alertId => _$this._alertId;
  set alertId(int? alertId) => _$this._alertId = alertId;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _ruleName;
  String? get ruleName => _$this._ruleName;
  set ruleName(String? ruleName) => _$this._ruleName = ruleName;

  BriefingRunBreakingSeverityEnum? _severity;
  BriefingRunBreakingSeverityEnum? get severity => _$this._severity;
  set severity(BriefingRunBreakingSeverityEnum? severity) =>
      _$this._severity = severity;

  DateTime? _firedAt;
  DateTime? get firedAt => _$this._firedAt;
  set firedAt(DateTime? firedAt) => _$this._firedAt = firedAt;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BriefingRunBreakingBuilder() {
    BriefingRunBreaking._defaults(this);
  }

  BriefingRunBreakingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alertId = $v.alertId;
      _ruleId = $v.ruleId;
      _ruleName = $v.ruleName;
      _severity = $v.severity;
      _firedAt = $v.firedAt;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BriefingRunBreaking other) {
    _$v = other as _$BriefingRunBreaking;
  }

  @override
  void update(void Function(BriefingRunBreakingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BriefingRunBreaking build() => _build();

  _$BriefingRunBreaking _build() {
    final _$result =
        _$v ??
        _$BriefingRunBreaking._(
          alertId: BuiltValueNullFieldError.checkNotNull(
            alertId,
            r'BriefingRunBreaking',
            'alertId',
          ),
          ruleId: ruleId,
          ruleName: ruleName,
          severity: BuiltValueNullFieldError.checkNotNull(
            severity,
            r'BriefingRunBreaking',
            'severity',
          ),
          firedAt: firedAt,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
