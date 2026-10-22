// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PeerCreateModeEnum _$peerCreateModeEnum_PULL =
    const PeerCreateModeEnum._('PULL');
const PeerCreateModeEnum _$peerCreateModeEnum_RECEIVE =
    const PeerCreateModeEnum._('RECEIVE');

PeerCreateModeEnum _$peerCreateModeEnumValueOf(String name) {
  switch (name) {
    case 'PULL':
      return _$peerCreateModeEnum_PULL;
    case 'RECEIVE':
      return _$peerCreateModeEnum_RECEIVE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PeerCreateModeEnum> _$peerCreateModeEnumValues =
    BuiltSet<PeerCreateModeEnum>(const <PeerCreateModeEnum>[
  _$peerCreateModeEnum_PULL,
  _$peerCreateModeEnum_RECEIVE,
]);

const PeerCreateReliabilityEnum _$peerCreateReliabilityEnum_A =
    const PeerCreateReliabilityEnum._('A');
const PeerCreateReliabilityEnum _$peerCreateReliabilityEnum_B =
    const PeerCreateReliabilityEnum._('B');
const PeerCreateReliabilityEnum _$peerCreateReliabilityEnum_C =
    const PeerCreateReliabilityEnum._('C');
const PeerCreateReliabilityEnum _$peerCreateReliabilityEnum_D =
    const PeerCreateReliabilityEnum._('D');
const PeerCreateReliabilityEnum _$peerCreateReliabilityEnum_E =
    const PeerCreateReliabilityEnum._('E');
const PeerCreateReliabilityEnum _$peerCreateReliabilityEnum_F =
    const PeerCreateReliabilityEnum._('F');

PeerCreateReliabilityEnum _$peerCreateReliabilityEnumValueOf(String name) {
  switch (name) {
    case 'A':
      return _$peerCreateReliabilityEnum_A;
    case 'B':
      return _$peerCreateReliabilityEnum_B;
    case 'C':
      return _$peerCreateReliabilityEnum_C;
    case 'D':
      return _$peerCreateReliabilityEnum_D;
    case 'E':
      return _$peerCreateReliabilityEnum_E;
    case 'F':
      return _$peerCreateReliabilityEnum_F;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PeerCreateReliabilityEnum> _$peerCreateReliabilityEnumValues =
    BuiltSet<PeerCreateReliabilityEnum>(const <PeerCreateReliabilityEnum>[
  _$peerCreateReliabilityEnum_A,
  _$peerCreateReliabilityEnum_B,
  _$peerCreateReliabilityEnum_C,
  _$peerCreateReliabilityEnum_D,
  _$peerCreateReliabilityEnum_E,
  _$peerCreateReliabilityEnum_F,
]);

Serializer<PeerCreateModeEnum> _$peerCreateModeEnumSerializer =
    _$PeerCreateModeEnumSerializer();
Serializer<PeerCreateReliabilityEnum> _$peerCreateReliabilityEnumSerializer =
    _$PeerCreateReliabilityEnumSerializer();

class _$PeerCreateModeEnumSerializer
    implements PrimitiveSerializer<PeerCreateModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PULL': 'PULL',
    'RECEIVE': 'RECEIVE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PULL': 'PULL',
    'RECEIVE': 'RECEIVE',
  };

  @override
  final Iterable<Type> types = const <Type>[PeerCreateModeEnum];
  @override
  final String wireName = 'PeerCreateModeEnum';

  @override
  Object serialize(Serializers serializers, PeerCreateModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PeerCreateModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PeerCreateModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PeerCreateReliabilityEnumSerializer
    implements PrimitiveSerializer<PeerCreateReliabilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
  };

  @override
  final Iterable<Type> types = const <Type>[PeerCreateReliabilityEnum];
  @override
  final String wireName = 'PeerCreateReliabilityEnum';

  @override
  Object serialize(Serializers serializers, PeerCreateReliabilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PeerCreateReliabilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PeerCreateReliabilityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PeerCreate extends PeerCreate {
  @override
  final String id;
  @override
  final String name;
  @override
  final String baseUrl;
  @override
  final PeerCreateModeEnum? mode;
  @override
  final bool? enabled;
  @override
  final String? token;
  @override
  final PeerSelection? selection;
  @override
  final bool? sameOperator;
  @override
  final PeerCreateReliabilityEnum? reliability;
  @override
  final String? exchangeKey;

  factory _$PeerCreate([void Function(PeerCreateBuilder)? updates]) =>
      (PeerCreateBuilder()..update(updates))._build();

  _$PeerCreate._(
      {required this.id,
      required this.name,
      required this.baseUrl,
      this.mode,
      this.enabled,
      this.token,
      this.selection,
      this.sameOperator,
      this.reliability,
      this.exchangeKey})
      : super._();
  @override
  PeerCreate rebuild(void Function(PeerCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeerCreateBuilder toBuilder() => PeerCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeerCreate &&
        id == other.id &&
        name == other.name &&
        baseUrl == other.baseUrl &&
        mode == other.mode &&
        enabled == other.enabled &&
        token == other.token &&
        selection == other.selection &&
        sameOperator == other.sameOperator &&
        reliability == other.reliability &&
        exchangeKey == other.exchangeKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, selection.hashCode);
    _$hash = $jc(_$hash, sameOperator.hashCode);
    _$hash = $jc(_$hash, reliability.hashCode);
    _$hash = $jc(_$hash, exchangeKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeerCreate')
          ..add('id', id)
          ..add('name', name)
          ..add('baseUrl', baseUrl)
          ..add('mode', mode)
          ..add('enabled', enabled)
          ..add('token', token)
          ..add('selection', selection)
          ..add('sameOperator', sameOperator)
          ..add('reliability', reliability)
          ..add('exchangeKey', exchangeKey))
        .toString();
  }
}

class PeerCreateBuilder implements Builder<PeerCreate, PeerCreateBuilder> {
  _$PeerCreate? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(String? baseUrl) => _$this._baseUrl = baseUrl;

  PeerCreateModeEnum? _mode;
  PeerCreateModeEnum? get mode => _$this._mode;
  set mode(PeerCreateModeEnum? mode) => _$this._mode = mode;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  PeerSelectionBuilder? _selection;
  PeerSelectionBuilder get selection =>
      _$this._selection ??= PeerSelectionBuilder();
  set selection(PeerSelectionBuilder? selection) =>
      _$this._selection = selection;

  bool? _sameOperator;
  bool? get sameOperator => _$this._sameOperator;
  set sameOperator(bool? sameOperator) => _$this._sameOperator = sameOperator;

  PeerCreateReliabilityEnum? _reliability;
  PeerCreateReliabilityEnum? get reliability => _$this._reliability;
  set reliability(PeerCreateReliabilityEnum? reliability) =>
      _$this._reliability = reliability;

  String? _exchangeKey;
  String? get exchangeKey => _$this._exchangeKey;
  set exchangeKey(String? exchangeKey) => _$this._exchangeKey = exchangeKey;

  PeerCreateBuilder() {
    PeerCreate._defaults(this);
  }

  PeerCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _baseUrl = $v.baseUrl;
      _mode = $v.mode;
      _enabled = $v.enabled;
      _token = $v.token;
      _selection = $v.selection?.toBuilder();
      _sameOperator = $v.sameOperator;
      _reliability = $v.reliability;
      _exchangeKey = $v.exchangeKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeerCreate other) {
    _$v = other as _$PeerCreate;
  }

  @override
  void update(void Function(PeerCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeerCreate build() => _build();

  _$PeerCreate _build() {
    _$PeerCreate _$result;
    try {
      _$result = _$v ??
          _$PeerCreate._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'PeerCreate', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PeerCreate', 'name'),
            baseUrl: BuiltValueNullFieldError.checkNotNull(
                baseUrl, r'PeerCreate', 'baseUrl'),
            mode: mode,
            enabled: enabled,
            token: token,
            selection: _selection?.build(),
            sameOperator: sameOperator,
            reliability: reliability,
            exchangeKey: exchangeKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selection';
        _selection?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PeerCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
