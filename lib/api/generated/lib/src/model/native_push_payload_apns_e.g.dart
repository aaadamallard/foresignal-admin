// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_push_payload_apns_e.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NativePushPayloadApnsEVEnum _$nativePushPayloadApnsEVEnum_number1 =
    const NativePushPayloadApnsEVEnum._('number1');

NativePushPayloadApnsEVEnum _$nativePushPayloadApnsEVEnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$nativePushPayloadApnsEVEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NativePushPayloadApnsEVEnum>
_$nativePushPayloadApnsEVEnumValues = BuiltSet<NativePushPayloadApnsEVEnum>(
  const <NativePushPayloadApnsEVEnum>[_$nativePushPayloadApnsEVEnum_number1],
);

const NativePushPayloadApnsESEnum _$nativePushPayloadApnsESEnum_info =
    const NativePushPayloadApnsESEnum._('info');
const NativePushPayloadApnsESEnum _$nativePushPayloadApnsESEnum_warning =
    const NativePushPayloadApnsESEnum._('warning');
const NativePushPayloadApnsESEnum _$nativePushPayloadApnsESEnum_critical =
    const NativePushPayloadApnsESEnum._('critical');

NativePushPayloadApnsESEnum _$nativePushPayloadApnsESEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$nativePushPayloadApnsESEnum_info;
    case 'warning':
      return _$nativePushPayloadApnsESEnum_warning;
    case 'critical':
      return _$nativePushPayloadApnsESEnum_critical;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NativePushPayloadApnsESEnum>
_$nativePushPayloadApnsESEnumValues =
    BuiltSet<NativePushPayloadApnsESEnum>(const <NativePushPayloadApnsESEnum>[
      _$nativePushPayloadApnsESEnum_info,
      _$nativePushPayloadApnsESEnum_warning,
      _$nativePushPayloadApnsESEnum_critical,
    ]);

const NativePushPayloadApnsEEvEnum _$nativePushPayloadApnsEEvEnum_alert =
    const NativePushPayloadApnsEEvEnum._('alert');
const NativePushPayloadApnsEEvEnum _$nativePushPayloadApnsEEvEnum_briefing =
    const NativePushPayloadApnsEEvEnum._('briefing');
const NativePushPayloadApnsEEvEnum _$nativePushPayloadApnsEEvEnum_system =
    const NativePushPayloadApnsEEvEnum._('system');

NativePushPayloadApnsEEvEnum _$nativePushPayloadApnsEEvEnumValueOf(
  String name,
) {
  switch (name) {
    case 'alert':
      return _$nativePushPayloadApnsEEvEnum_alert;
    case 'briefing':
      return _$nativePushPayloadApnsEEvEnum_briefing;
    case 'system':
      return _$nativePushPayloadApnsEEvEnum_system;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NativePushPayloadApnsEEvEnum>
_$nativePushPayloadApnsEEvEnumValues =
    BuiltSet<NativePushPayloadApnsEEvEnum>(const <NativePushPayloadApnsEEvEnum>[
      _$nativePushPayloadApnsEEvEnum_alert,
      _$nativePushPayloadApnsEEvEnum_briefing,
      _$nativePushPayloadApnsEEvEnum_system,
    ]);

Serializer<NativePushPayloadApnsEVEnum>
_$nativePushPayloadApnsEVEnumSerializer =
    _$NativePushPayloadApnsEVEnumSerializer();
Serializer<NativePushPayloadApnsESEnum>
_$nativePushPayloadApnsESEnumSerializer =
    _$NativePushPayloadApnsESEnumSerializer();
Serializer<NativePushPayloadApnsEEvEnum>
_$nativePushPayloadApnsEEvEnumSerializer =
    _$NativePushPayloadApnsEEvEnumSerializer();

class _$NativePushPayloadApnsEVEnumSerializer
    implements PrimitiveSerializer<NativePushPayloadApnsEVEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[NativePushPayloadApnsEVEnum];
  @override
  final String wireName = 'NativePushPayloadApnsEVEnum';

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadApnsEVEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NativePushPayloadApnsEVEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NativePushPayloadApnsEVEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NativePushPayloadApnsESEnumSerializer
    implements PrimitiveSerializer<NativePushPayloadApnsESEnum> {
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
  final Iterable<Type> types = const <Type>[NativePushPayloadApnsESEnum];
  @override
  final String wireName = 'NativePushPayloadApnsESEnum';

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadApnsESEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NativePushPayloadApnsESEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NativePushPayloadApnsESEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NativePushPayloadApnsEEvEnumSerializer
    implements PrimitiveSerializer<NativePushPayloadApnsEEvEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'alert': 'alert',
    'briefing': 'briefing',
    'system': 'system',
  };

  @override
  final Iterable<Type> types = const <Type>[NativePushPayloadApnsEEvEnum];
  @override
  final String wireName = 'NativePushPayloadApnsEEvEnum';

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadApnsEEvEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NativePushPayloadApnsEEvEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NativePushPayloadApnsEEvEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NativePushPayloadApnsE extends NativePushPayloadApnsE {
  @override
  final NativePushPayloadApnsEVEnum v;
  @override
  final int id;
  @override
  final int? a;
  @override
  final NativePushPayloadApnsESEnum s;
  @override
  final NativePushPayloadApnsEEvEnum ev;
  @override
  final String? l;

  factory _$NativePushPayloadApnsE([
    void Function(NativePushPayloadApnsEBuilder)? updates,
  ]) => (NativePushPayloadApnsEBuilder()..update(updates))._build();

  _$NativePushPayloadApnsE._({
    required this.v,
    required this.id,
    this.a,
    required this.s,
    required this.ev,
    this.l,
  }) : super._();
  @override
  NativePushPayloadApnsE rebuild(
    void Function(NativePushPayloadApnsEBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NativePushPayloadApnsEBuilder toBuilder() =>
      NativePushPayloadApnsEBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NativePushPayloadApnsE &&
        v == other.v &&
        id == other.id &&
        a == other.a &&
        s == other.s &&
        ev == other.ev &&
        l == other.l;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, v.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, a.hashCode);
    _$hash = $jc(_$hash, s.hashCode);
    _$hash = $jc(_$hash, ev.hashCode);
    _$hash = $jc(_$hash, l.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NativePushPayloadApnsE')
          ..add('v', v)
          ..add('id', id)
          ..add('a', a)
          ..add('s', s)
          ..add('ev', ev)
          ..add('l', l))
        .toString();
  }
}

class NativePushPayloadApnsEBuilder
    implements Builder<NativePushPayloadApnsE, NativePushPayloadApnsEBuilder> {
  _$NativePushPayloadApnsE? _$v;

  NativePushPayloadApnsEVEnum? _v;
  NativePushPayloadApnsEVEnum? get v => _$this._v;
  set v(NativePushPayloadApnsEVEnum? v) => _$this._v = v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _a;
  int? get a => _$this._a;
  set a(int? a) => _$this._a = a;

  NativePushPayloadApnsESEnum? _s;
  NativePushPayloadApnsESEnum? get s => _$this._s;
  set s(NativePushPayloadApnsESEnum? s) => _$this._s = s;

  NativePushPayloadApnsEEvEnum? _ev;
  NativePushPayloadApnsEEvEnum? get ev => _$this._ev;
  set ev(NativePushPayloadApnsEEvEnum? ev) => _$this._ev = ev;

  String? _l;
  String? get l => _$this._l;
  set l(String? l) => _$this._l = l;

  NativePushPayloadApnsEBuilder() {
    NativePushPayloadApnsE._defaults(this);
  }

  NativePushPayloadApnsEBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _v = $v.v;
      _id = $v.id;
      _a = $v.a;
      _s = $v.s;
      _ev = $v.ev;
      _l = $v.l;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NativePushPayloadApnsE other) {
    _$v = other as _$NativePushPayloadApnsE;
  }

  @override
  void update(void Function(NativePushPayloadApnsEBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NativePushPayloadApnsE build() => _build();

  _$NativePushPayloadApnsE _build() {
    final _$result =
        _$v ??
        _$NativePushPayloadApnsE._(
          v: BuiltValueNullFieldError.checkNotNull(
            v,
            r'NativePushPayloadApnsE',
            'v',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'NativePushPayloadApnsE',
            'id',
          ),
          a: a,
          s: BuiltValueNullFieldError.checkNotNull(
            s,
            r'NativePushPayloadApnsE',
            's',
          ),
          ev: BuiltValueNullFieldError.checkNotNull(
            ev,
            r'NativePushPayloadApnsE',
            'ev',
          ),
          l: l,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
