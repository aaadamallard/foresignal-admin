// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PeerUpdateReliabilityEnum _$peerUpdateReliabilityEnum_A =
    const PeerUpdateReliabilityEnum._('A');
const PeerUpdateReliabilityEnum _$peerUpdateReliabilityEnum_B =
    const PeerUpdateReliabilityEnum._('B');
const PeerUpdateReliabilityEnum _$peerUpdateReliabilityEnum_C =
    const PeerUpdateReliabilityEnum._('C');
const PeerUpdateReliabilityEnum _$peerUpdateReliabilityEnum_D =
    const PeerUpdateReliabilityEnum._('D');
const PeerUpdateReliabilityEnum _$peerUpdateReliabilityEnum_E =
    const PeerUpdateReliabilityEnum._('E');
const PeerUpdateReliabilityEnum _$peerUpdateReliabilityEnum_F =
    const PeerUpdateReliabilityEnum._('F');

PeerUpdateReliabilityEnum _$peerUpdateReliabilityEnumValueOf(String name) {
  switch (name) {
    case 'A':
      return _$peerUpdateReliabilityEnum_A;
    case 'B':
      return _$peerUpdateReliabilityEnum_B;
    case 'C':
      return _$peerUpdateReliabilityEnum_C;
    case 'D':
      return _$peerUpdateReliabilityEnum_D;
    case 'E':
      return _$peerUpdateReliabilityEnum_E;
    case 'F':
      return _$peerUpdateReliabilityEnum_F;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PeerUpdateReliabilityEnum> _$peerUpdateReliabilityEnumValues =
    BuiltSet<PeerUpdateReliabilityEnum>(const <PeerUpdateReliabilityEnum>[
      _$peerUpdateReliabilityEnum_A,
      _$peerUpdateReliabilityEnum_B,
      _$peerUpdateReliabilityEnum_C,
      _$peerUpdateReliabilityEnum_D,
      _$peerUpdateReliabilityEnum_E,
      _$peerUpdateReliabilityEnum_F,
    ]);

Serializer<PeerUpdateReliabilityEnum> _$peerUpdateReliabilityEnumSerializer =
    _$PeerUpdateReliabilityEnumSerializer();

class _$PeerUpdateReliabilityEnumSerializer
    implements PrimitiveSerializer<PeerUpdateReliabilityEnum> {
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
  final Iterable<Type> types = const <Type>[PeerUpdateReliabilityEnum];
  @override
  final String wireName = 'PeerUpdateReliabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    PeerUpdateReliabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PeerUpdateReliabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PeerUpdateReliabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PeerUpdate extends PeerUpdate {
  @override
  final String name;
  @override
  final String baseUrl;
  @override
  final bool? enabled;
  @override
  final String? token;
  @override
  final PeerSelection? selection;
  @override
  final bool? sameOperator;
  @override
  final PeerUpdateReliabilityEnum? reliability;
  @override
  final String? pinnedKid;
  @override
  final String? exchangeKey;

  factory _$PeerUpdate([void Function(PeerUpdateBuilder)? updates]) =>
      (PeerUpdateBuilder()..update(updates))._build();

  _$PeerUpdate._({
    required this.name,
    required this.baseUrl,
    this.enabled,
    this.token,
    this.selection,
    this.sameOperator,
    this.reliability,
    this.pinnedKid,
    this.exchangeKey,
  }) : super._();
  @override
  PeerUpdate rebuild(void Function(PeerUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeerUpdateBuilder toBuilder() => PeerUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeerUpdate &&
        name == other.name &&
        baseUrl == other.baseUrl &&
        enabled == other.enabled &&
        token == other.token &&
        selection == other.selection &&
        sameOperator == other.sameOperator &&
        reliability == other.reliability &&
        pinnedKid == other.pinnedKid &&
        exchangeKey == other.exchangeKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, selection.hashCode);
    _$hash = $jc(_$hash, sameOperator.hashCode);
    _$hash = $jc(_$hash, reliability.hashCode);
    _$hash = $jc(_$hash, pinnedKid.hashCode);
    _$hash = $jc(_$hash, exchangeKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeerUpdate')
          ..add('name', name)
          ..add('baseUrl', baseUrl)
          ..add('enabled', enabled)
          ..add('token', token)
          ..add('selection', selection)
          ..add('sameOperator', sameOperator)
          ..add('reliability', reliability)
          ..add('pinnedKid', pinnedKid)
          ..add('exchangeKey', exchangeKey))
        .toString();
  }
}

class PeerUpdateBuilder implements Builder<PeerUpdate, PeerUpdateBuilder> {
  _$PeerUpdate? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(String? baseUrl) => _$this._baseUrl = baseUrl;

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

  PeerUpdateReliabilityEnum? _reliability;
  PeerUpdateReliabilityEnum? get reliability => _$this._reliability;
  set reliability(PeerUpdateReliabilityEnum? reliability) =>
      _$this._reliability = reliability;

  String? _pinnedKid;
  String? get pinnedKid => _$this._pinnedKid;
  set pinnedKid(String? pinnedKid) => _$this._pinnedKid = pinnedKid;

  String? _exchangeKey;
  String? get exchangeKey => _$this._exchangeKey;
  set exchangeKey(String? exchangeKey) => _$this._exchangeKey = exchangeKey;

  PeerUpdateBuilder() {
    PeerUpdate._defaults(this);
  }

  PeerUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _baseUrl = $v.baseUrl;
      _enabled = $v.enabled;
      _token = $v.token;
      _selection = $v.selection?.toBuilder();
      _sameOperator = $v.sameOperator;
      _reliability = $v.reliability;
      _pinnedKid = $v.pinnedKid;
      _exchangeKey = $v.exchangeKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeerUpdate other) {
    _$v = other as _$PeerUpdate;
  }

  @override
  void update(void Function(PeerUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeerUpdate build() => _build();

  _$PeerUpdate _build() {
    _$PeerUpdate _$result;
    try {
      _$result =
          _$v ??
          _$PeerUpdate._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'PeerUpdate',
              'name',
            ),
            baseUrl: BuiltValueNullFieldError.checkNotNull(
              baseUrl,
              r'PeerUpdate',
              'baseUrl',
            ),
            enabled: enabled,
            token: token,
            selection: _selection?.build(),
            sameOperator: sameOperator,
            reliability: reliability,
            pinnedKid: pinnedKid,
            exchangeKey: exchangeKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selection';
        _selection?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PeerUpdate',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
