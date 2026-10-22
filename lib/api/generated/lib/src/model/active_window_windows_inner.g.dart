// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_window_windows_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActiveWindowWindowsInnerDaysEnum _$activeWindowWindowsInnerDaysEnum_MON =
    const ActiveWindowWindowsInnerDaysEnum._('MON');
const ActiveWindowWindowsInnerDaysEnum _$activeWindowWindowsInnerDaysEnum_TUE =
    const ActiveWindowWindowsInnerDaysEnum._('TUE');
const ActiveWindowWindowsInnerDaysEnum _$activeWindowWindowsInnerDaysEnum_WED =
    const ActiveWindowWindowsInnerDaysEnum._('WED');
const ActiveWindowWindowsInnerDaysEnum _$activeWindowWindowsInnerDaysEnum_THU =
    const ActiveWindowWindowsInnerDaysEnum._('THU');
const ActiveWindowWindowsInnerDaysEnum _$activeWindowWindowsInnerDaysEnum_FRI =
    const ActiveWindowWindowsInnerDaysEnum._('FRI');
const ActiveWindowWindowsInnerDaysEnum _$activeWindowWindowsInnerDaysEnum_SAT =
    const ActiveWindowWindowsInnerDaysEnum._('SAT');
const ActiveWindowWindowsInnerDaysEnum _$activeWindowWindowsInnerDaysEnum_SUN =
    const ActiveWindowWindowsInnerDaysEnum._('SUN');

ActiveWindowWindowsInnerDaysEnum _$activeWindowWindowsInnerDaysEnumValueOf(
    String name) {
  switch (name) {
    case 'MON':
      return _$activeWindowWindowsInnerDaysEnum_MON;
    case 'TUE':
      return _$activeWindowWindowsInnerDaysEnum_TUE;
    case 'WED':
      return _$activeWindowWindowsInnerDaysEnum_WED;
    case 'THU':
      return _$activeWindowWindowsInnerDaysEnum_THU;
    case 'FRI':
      return _$activeWindowWindowsInnerDaysEnum_FRI;
    case 'SAT':
      return _$activeWindowWindowsInnerDaysEnum_SAT;
    case 'SUN':
      return _$activeWindowWindowsInnerDaysEnum_SUN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActiveWindowWindowsInnerDaysEnum>
    _$activeWindowWindowsInnerDaysEnumValues = BuiltSet<
        ActiveWindowWindowsInnerDaysEnum>(const <ActiveWindowWindowsInnerDaysEnum>[
  _$activeWindowWindowsInnerDaysEnum_MON,
  _$activeWindowWindowsInnerDaysEnum_TUE,
  _$activeWindowWindowsInnerDaysEnum_WED,
  _$activeWindowWindowsInnerDaysEnum_THU,
  _$activeWindowWindowsInnerDaysEnum_FRI,
  _$activeWindowWindowsInnerDaysEnum_SAT,
  _$activeWindowWindowsInnerDaysEnum_SUN,
]);

Serializer<ActiveWindowWindowsInnerDaysEnum>
    _$activeWindowWindowsInnerDaysEnumSerializer =
    _$ActiveWindowWindowsInnerDaysEnumSerializer();

class _$ActiveWindowWindowsInnerDaysEnumSerializer
    implements PrimitiveSerializer<ActiveWindowWindowsInnerDaysEnum> {
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
  final Iterable<Type> types = const <Type>[ActiveWindowWindowsInnerDaysEnum];
  @override
  final String wireName = 'ActiveWindowWindowsInnerDaysEnum';

  @override
  Object serialize(
          Serializers serializers, ActiveWindowWindowsInnerDaysEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActiveWindowWindowsInnerDaysEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActiveWindowWindowsInnerDaysEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ActiveWindowWindowsInner extends ActiveWindowWindowsInner {
  @override
  final BuiltList<ActiveWindowWindowsInnerDaysEnum> days;
  @override
  final String start;
  @override
  final String end;

  factory _$ActiveWindowWindowsInner(
          [void Function(ActiveWindowWindowsInnerBuilder)? updates]) =>
      (ActiveWindowWindowsInnerBuilder()..update(updates))._build();

  _$ActiveWindowWindowsInner._(
      {required this.days, required this.start, required this.end})
      : super._();
  @override
  ActiveWindowWindowsInner rebuild(
          void Function(ActiveWindowWindowsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActiveWindowWindowsInnerBuilder toBuilder() =>
      ActiveWindowWindowsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActiveWindowWindowsInner &&
        days == other.days &&
        start == other.start &&
        end == other.end;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActiveWindowWindowsInner')
          ..add('days', days)
          ..add('start', start)
          ..add('end', end))
        .toString();
  }
}

class ActiveWindowWindowsInnerBuilder
    implements
        Builder<ActiveWindowWindowsInner, ActiveWindowWindowsInnerBuilder> {
  _$ActiveWindowWindowsInner? _$v;

  ListBuilder<ActiveWindowWindowsInnerDaysEnum>? _days;
  ListBuilder<ActiveWindowWindowsInnerDaysEnum> get days =>
      _$this._days ??= ListBuilder<ActiveWindowWindowsInnerDaysEnum>();
  set days(ListBuilder<ActiveWindowWindowsInnerDaysEnum>? days) =>
      _$this._days = days;

  String? _start;
  String? get start => _$this._start;
  set start(String? start) => _$this._start = start;

  String? _end;
  String? get end => _$this._end;
  set end(String? end) => _$this._end = end;

  ActiveWindowWindowsInnerBuilder() {
    ActiveWindowWindowsInner._defaults(this);
  }

  ActiveWindowWindowsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _days = $v.days.toBuilder();
      _start = $v.start;
      _end = $v.end;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActiveWindowWindowsInner other) {
    _$v = other as _$ActiveWindowWindowsInner;
  }

  @override
  void update(void Function(ActiveWindowWindowsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActiveWindowWindowsInner build() => _build();

  _$ActiveWindowWindowsInner _build() {
    _$ActiveWindowWindowsInner _$result;
    try {
      _$result = _$v ??
          _$ActiveWindowWindowsInner._(
            days: days.build(),
            start: BuiltValueNullFieldError.checkNotNull(
                start, r'ActiveWindowWindowsInner', 'start'),
            end: BuiltValueNullFieldError.checkNotNull(
                end, r'ActiveWindowWindowsInner', 'end'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'days';
        days.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ActiveWindowWindowsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
