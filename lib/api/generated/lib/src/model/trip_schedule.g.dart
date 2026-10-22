// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TripScheduleTypeEnum _$tripScheduleTypeEnum_once =
    const TripScheduleTypeEnum._('once');
const TripScheduleTypeEnum _$tripScheduleTypeEnum_recurring =
    const TripScheduleTypeEnum._('recurring');

TripScheduleTypeEnum _$tripScheduleTypeEnumValueOf(String name) {
  switch (name) {
    case 'once':
      return _$tripScheduleTypeEnum_once;
    case 'recurring':
      return _$tripScheduleTypeEnum_recurring;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TripScheduleTypeEnum> _$tripScheduleTypeEnumValues =
    BuiltSet<TripScheduleTypeEnum>(const <TripScheduleTypeEnum>[
  _$tripScheduleTypeEnum_once,
  _$tripScheduleTypeEnum_recurring,
]);

const TripScheduleDaysEnum _$tripScheduleDaysEnum_MO =
    const TripScheduleDaysEnum._('MO');
const TripScheduleDaysEnum _$tripScheduleDaysEnum_TU =
    const TripScheduleDaysEnum._('TU');
const TripScheduleDaysEnum _$tripScheduleDaysEnum_WE =
    const TripScheduleDaysEnum._('WE');
const TripScheduleDaysEnum _$tripScheduleDaysEnum_TH =
    const TripScheduleDaysEnum._('TH');
const TripScheduleDaysEnum _$tripScheduleDaysEnum_FR =
    const TripScheduleDaysEnum._('FR');
const TripScheduleDaysEnum _$tripScheduleDaysEnum_SA =
    const TripScheduleDaysEnum._('SA');
const TripScheduleDaysEnum _$tripScheduleDaysEnum_SU =
    const TripScheduleDaysEnum._('SU');

TripScheduleDaysEnum _$tripScheduleDaysEnumValueOf(String name) {
  switch (name) {
    case 'MO':
      return _$tripScheduleDaysEnum_MO;
    case 'TU':
      return _$tripScheduleDaysEnum_TU;
    case 'WE':
      return _$tripScheduleDaysEnum_WE;
    case 'TH':
      return _$tripScheduleDaysEnum_TH;
    case 'FR':
      return _$tripScheduleDaysEnum_FR;
    case 'SA':
      return _$tripScheduleDaysEnum_SA;
    case 'SU':
      return _$tripScheduleDaysEnum_SU;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TripScheduleDaysEnum> _$tripScheduleDaysEnumValues =
    BuiltSet<TripScheduleDaysEnum>(const <TripScheduleDaysEnum>[
  _$tripScheduleDaysEnum_MO,
  _$tripScheduleDaysEnum_TU,
  _$tripScheduleDaysEnum_WE,
  _$tripScheduleDaysEnum_TH,
  _$tripScheduleDaysEnum_FR,
  _$tripScheduleDaysEnum_SA,
  _$tripScheduleDaysEnum_SU,
]);

Serializer<TripScheduleTypeEnum> _$tripScheduleTypeEnumSerializer =
    _$TripScheduleTypeEnumSerializer();
Serializer<TripScheduleDaysEnum> _$tripScheduleDaysEnumSerializer =
    _$TripScheduleDaysEnumSerializer();

class _$TripScheduleTypeEnumSerializer
    implements PrimitiveSerializer<TripScheduleTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'once': 'once',
    'recurring': 'recurring',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'once': 'once',
    'recurring': 'recurring',
  };

  @override
  final Iterable<Type> types = const <Type>[TripScheduleTypeEnum];
  @override
  final String wireName = 'TripScheduleTypeEnum';

  @override
  Object serialize(Serializers serializers, TripScheduleTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TripScheduleTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TripScheduleTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TripScheduleDaysEnumSerializer
    implements PrimitiveSerializer<TripScheduleDaysEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MO': 'MO',
    'TU': 'TU',
    'WE': 'WE',
    'TH': 'TH',
    'FR': 'FR',
    'SA': 'SA',
    'SU': 'SU',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MO': 'MO',
    'TU': 'TU',
    'WE': 'WE',
    'TH': 'TH',
    'FR': 'FR',
    'SA': 'SA',
    'SU': 'SU',
  };

  @override
  final Iterable<Type> types = const <Type>[TripScheduleDaysEnum];
  @override
  final String wireName = 'TripScheduleDaysEnum';

  @override
  Object serialize(Serializers serializers, TripScheduleDaysEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TripScheduleDaysEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TripScheduleDaysEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TripSchedule extends TripSchedule {
  @override
  final TripScheduleTypeEnum type;
  @override
  final DateTime? departAt;
  @override
  final BuiltList<TripScheduleDaysEnum>? days;
  @override
  final String? departTime;
  @override
  final String? timezone;

  factory _$TripSchedule([void Function(TripScheduleBuilder)? updates]) =>
      (TripScheduleBuilder()..update(updates))._build();

  _$TripSchedule._(
      {required this.type,
      this.departAt,
      this.days,
      this.departTime,
      this.timezone})
      : super._();
  @override
  TripSchedule rebuild(void Function(TripScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripScheduleBuilder toBuilder() => TripScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TripSchedule &&
        type == other.type &&
        departAt == other.departAt &&
        days == other.days &&
        departTime == other.departTime &&
        timezone == other.timezone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, departAt.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, departTime.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TripSchedule')
          ..add('type', type)
          ..add('departAt', departAt)
          ..add('days', days)
          ..add('departTime', departTime)
          ..add('timezone', timezone))
        .toString();
  }
}

class TripScheduleBuilder
    implements Builder<TripSchedule, TripScheduleBuilder> {
  _$TripSchedule? _$v;

  TripScheduleTypeEnum? _type;
  TripScheduleTypeEnum? get type => _$this._type;
  set type(TripScheduleTypeEnum? type) => _$this._type = type;

  DateTime? _departAt;
  DateTime? get departAt => _$this._departAt;
  set departAt(DateTime? departAt) => _$this._departAt = departAt;

  ListBuilder<TripScheduleDaysEnum>? _days;
  ListBuilder<TripScheduleDaysEnum> get days =>
      _$this._days ??= ListBuilder<TripScheduleDaysEnum>();
  set days(ListBuilder<TripScheduleDaysEnum>? days) => _$this._days = days;

  String? _departTime;
  String? get departTime => _$this._departTime;
  set departTime(String? departTime) => _$this._departTime = departTime;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  TripScheduleBuilder() {
    TripSchedule._defaults(this);
  }

  TripScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _departAt = $v.departAt;
      _days = $v.days?.toBuilder();
      _departTime = $v.departTime;
      _timezone = $v.timezone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TripSchedule other) {
    _$v = other as _$TripSchedule;
  }

  @override
  void update(void Function(TripScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TripSchedule build() => _build();

  _$TripSchedule _build() {
    _$TripSchedule _$result;
    try {
      _$result = _$v ??
          _$TripSchedule._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'TripSchedule', 'type'),
            departAt: departAt,
            days: _days?.build(),
            departTime: departTime,
            timezone: timezone,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'days';
        _days?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TripSchedule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
