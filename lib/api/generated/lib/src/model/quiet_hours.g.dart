// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiet_hours.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuietHoursDaysEnum _$quietHoursDaysEnum_MON =
    const QuietHoursDaysEnum._('MON');
const QuietHoursDaysEnum _$quietHoursDaysEnum_TUE =
    const QuietHoursDaysEnum._('TUE');
const QuietHoursDaysEnum _$quietHoursDaysEnum_WED =
    const QuietHoursDaysEnum._('WED');
const QuietHoursDaysEnum _$quietHoursDaysEnum_THU =
    const QuietHoursDaysEnum._('THU');
const QuietHoursDaysEnum _$quietHoursDaysEnum_FRI =
    const QuietHoursDaysEnum._('FRI');
const QuietHoursDaysEnum _$quietHoursDaysEnum_SAT =
    const QuietHoursDaysEnum._('SAT');
const QuietHoursDaysEnum _$quietHoursDaysEnum_SUN =
    const QuietHoursDaysEnum._('SUN');

QuietHoursDaysEnum _$quietHoursDaysEnumValueOf(String name) {
  switch (name) {
    case 'MON':
      return _$quietHoursDaysEnum_MON;
    case 'TUE':
      return _$quietHoursDaysEnum_TUE;
    case 'WED':
      return _$quietHoursDaysEnum_WED;
    case 'THU':
      return _$quietHoursDaysEnum_THU;
    case 'FRI':
      return _$quietHoursDaysEnum_FRI;
    case 'SAT':
      return _$quietHoursDaysEnum_SAT;
    case 'SUN':
      return _$quietHoursDaysEnum_SUN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QuietHoursDaysEnum> _$quietHoursDaysEnumValues =
    BuiltSet<QuietHoursDaysEnum>(const <QuietHoursDaysEnum>[
  _$quietHoursDaysEnum_MON,
  _$quietHoursDaysEnum_TUE,
  _$quietHoursDaysEnum_WED,
  _$quietHoursDaysEnum_THU,
  _$quietHoursDaysEnum_FRI,
  _$quietHoursDaysEnum_SAT,
  _$quietHoursDaysEnum_SUN,
]);

const QuietHoursBypassSeverityEnum _$quietHoursBypassSeverityEnum_info =
    const QuietHoursBypassSeverityEnum._('info');
const QuietHoursBypassSeverityEnum _$quietHoursBypassSeverityEnum_warning =
    const QuietHoursBypassSeverityEnum._('warning');
const QuietHoursBypassSeverityEnum _$quietHoursBypassSeverityEnum_critical =
    const QuietHoursBypassSeverityEnum._('critical');

QuietHoursBypassSeverityEnum _$quietHoursBypassSeverityEnumValueOf(
    String name) {
  switch (name) {
    case 'info':
      return _$quietHoursBypassSeverityEnum_info;
    case 'warning':
      return _$quietHoursBypassSeverityEnum_warning;
    case 'critical':
      return _$quietHoursBypassSeverityEnum_critical;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<QuietHoursBypassSeverityEnum>
    _$quietHoursBypassSeverityEnumValues =
    BuiltSet<QuietHoursBypassSeverityEnum>(const <QuietHoursBypassSeverityEnum>[
  _$quietHoursBypassSeverityEnum_info,
  _$quietHoursBypassSeverityEnum_warning,
  _$quietHoursBypassSeverityEnum_critical,
]);

Serializer<QuietHoursDaysEnum> _$quietHoursDaysEnumSerializer =
    _$QuietHoursDaysEnumSerializer();
Serializer<QuietHoursBypassSeverityEnum>
    _$quietHoursBypassSeverityEnumSerializer =
    _$QuietHoursBypassSeverityEnumSerializer();

class _$QuietHoursDaysEnumSerializer
    implements PrimitiveSerializer<QuietHoursDaysEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MON': 'MON',
    'TUE': 'TUE',
    'WED': 'WED',
    'THU': 'THU',
    'FRI': 'FRI',
    'SAT': 'SAT',
    'SUN': 'SUN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MON': 'MON',
    'TUE': 'TUE',
    'WED': 'WED',
    'THU': 'THU',
    'FRI': 'FRI',
    'SAT': 'SAT',
    'SUN': 'SUN',
  };

  @override
  final Iterable<Type> types = const <Type>[QuietHoursDaysEnum];
  @override
  final String wireName = 'QuietHoursDaysEnum';

  @override
  Object serialize(Serializers serializers, QuietHoursDaysEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuietHoursDaysEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuietHoursDaysEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$QuietHoursBypassSeverityEnumSerializer
    implements PrimitiveSerializer<QuietHoursBypassSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
  };

  @override
  final Iterable<Type> types = const <Type>[QuietHoursBypassSeverityEnum];
  @override
  final String wireName = 'QuietHoursBypassSeverityEnum';

  @override
  Object serialize(Serializers serializers, QuietHoursBypassSeverityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuietHoursBypassSeverityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuietHoursBypassSeverityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$QuietHours extends QuietHours {
  @override
  final String start;
  @override
  final String end;
  @override
  final BuiltList<QuietHoursDaysEnum>? days;
  @override
  final QuietHoursBypassSeverityEnum? bypassSeverity;

  factory _$QuietHours([void Function(QuietHoursBuilder)? updates]) =>
      (QuietHoursBuilder()..update(updates))._build();

  _$QuietHours._(
      {required this.start, required this.end, this.days, this.bypassSeverity})
      : super._();
  @override
  QuietHours rebuild(void Function(QuietHoursBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuietHoursBuilder toBuilder() => QuietHoursBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuietHours &&
        start == other.start &&
        end == other.end &&
        days == other.days &&
        bypassSeverity == other.bypassSeverity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, bypassSeverity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuietHours')
          ..add('start', start)
          ..add('end', end)
          ..add('days', days)
          ..add('bypassSeverity', bypassSeverity))
        .toString();
  }
}

class QuietHoursBuilder implements Builder<QuietHours, QuietHoursBuilder> {
  _$QuietHours? _$v;

  String? _start;
  String? get start => _$this._start;
  set start(String? start) => _$this._start = start;

  String? _end;
  String? get end => _$this._end;
  set end(String? end) => _$this._end = end;

  ListBuilder<QuietHoursDaysEnum>? _days;
  ListBuilder<QuietHoursDaysEnum> get days =>
      _$this._days ??= ListBuilder<QuietHoursDaysEnum>();
  set days(ListBuilder<QuietHoursDaysEnum>? days) => _$this._days = days;

  QuietHoursBypassSeverityEnum? _bypassSeverity;
  QuietHoursBypassSeverityEnum? get bypassSeverity => _$this._bypassSeverity;
  set bypassSeverity(QuietHoursBypassSeverityEnum? bypassSeverity) =>
      _$this._bypassSeverity = bypassSeverity;

  QuietHoursBuilder() {
    QuietHours._defaults(this);
  }

  QuietHoursBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _start = $v.start;
      _end = $v.end;
      _days = $v.days?.toBuilder();
      _bypassSeverity = $v.bypassSeverity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuietHours other) {
    _$v = other as _$QuietHours;
  }

  @override
  void update(void Function(QuietHoursBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuietHours build() => _build();

  _$QuietHours _build() {
    _$QuietHours _$result;
    try {
      _$result = _$v ??
          _$QuietHours._(
            start: BuiltValueNullFieldError.checkNotNull(
                start, r'QuietHours', 'start'),
            end: BuiltValueNullFieldError.checkNotNull(
                end, r'QuietHours', 'end'),
            days: _days?.build(),
            bypassSeverity: bypassSeverity,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'days';
        _days?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'QuietHours', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
