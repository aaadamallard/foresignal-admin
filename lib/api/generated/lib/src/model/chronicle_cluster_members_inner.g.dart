// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_cluster_members_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleClusterMembersInnerDisclosureEnum
_$chronicleClusterMembersInnerDisclosureEnum_full =
    const ChronicleClusterMembersInnerDisclosureEnum._('full');
const ChronicleClusterMembersInnerDisclosureEnum
_$chronicleClusterMembersInnerDisclosureEnum_opaque =
    const ChronicleClusterMembersInnerDisclosureEnum._('opaque');

ChronicleClusterMembersInnerDisclosureEnum
_$chronicleClusterMembersInnerDisclosureEnumValueOf(String name) {
  switch (name) {
    case 'full':
      return _$chronicleClusterMembersInnerDisclosureEnum_full;
    case 'opaque':
      return _$chronicleClusterMembersInnerDisclosureEnum_opaque;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleClusterMembersInnerDisclosureEnum>
_$chronicleClusterMembersInnerDisclosureEnumValues =
    BuiltSet<ChronicleClusterMembersInnerDisclosureEnum>(
      const <ChronicleClusterMembersInnerDisclosureEnum>[
        _$chronicleClusterMembersInnerDisclosureEnum_full,
        _$chronicleClusterMembersInnerDisclosureEnum_opaque,
      ],
    );

const ChronicleClusterMembersInnerStrengthEnum
_$chronicleClusterMembersInnerStrengthEnum_low =
    const ChronicleClusterMembersInnerStrengthEnum._('low');
const ChronicleClusterMembersInnerStrengthEnum
_$chronicleClusterMembersInnerStrengthEnum_medium =
    const ChronicleClusterMembersInnerStrengthEnum._('medium');
const ChronicleClusterMembersInnerStrengthEnum
_$chronicleClusterMembersInnerStrengthEnum_high =
    const ChronicleClusterMembersInnerStrengthEnum._('high');

ChronicleClusterMembersInnerStrengthEnum
_$chronicleClusterMembersInnerStrengthEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$chronicleClusterMembersInnerStrengthEnum_low;
    case 'medium':
      return _$chronicleClusterMembersInnerStrengthEnum_medium;
    case 'high':
      return _$chronicleClusterMembersInnerStrengthEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleClusterMembersInnerStrengthEnum>
_$chronicleClusterMembersInnerStrengthEnumValues =
    BuiltSet<ChronicleClusterMembersInnerStrengthEnum>(
      const <ChronicleClusterMembersInnerStrengthEnum>[
        _$chronicleClusterMembersInnerStrengthEnum_low,
        _$chronicleClusterMembersInnerStrengthEnum_medium,
        _$chronicleClusterMembersInnerStrengthEnum_high,
      ],
    );

Serializer<ChronicleClusterMembersInnerDisclosureEnum>
_$chronicleClusterMembersInnerDisclosureEnumSerializer =
    _$ChronicleClusterMembersInnerDisclosureEnumSerializer();
Serializer<ChronicleClusterMembersInnerStrengthEnum>
_$chronicleClusterMembersInnerStrengthEnumSerializer =
    _$ChronicleClusterMembersInnerStrengthEnumSerializer();

class _$ChronicleClusterMembersInnerDisclosureEnumSerializer
    implements PrimitiveSerializer<ChronicleClusterMembersInnerDisclosureEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'full': 'full',
    'opaque': 'opaque',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'full': 'full',
    'opaque': 'opaque',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChronicleClusterMembersInnerDisclosureEnum,
  ];
  @override
  final String wireName = 'ChronicleClusterMembersInnerDisclosureEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleClusterMembersInnerDisclosureEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleClusterMembersInnerDisclosureEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleClusterMembersInnerDisclosureEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleClusterMembersInnerStrengthEnumSerializer
    implements PrimitiveSerializer<ChronicleClusterMembersInnerStrengthEnum> {
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
    ChronicleClusterMembersInnerStrengthEnum,
  ];
  @override
  final String wireName = 'ChronicleClusterMembersInnerStrengthEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleClusterMembersInnerStrengthEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleClusterMembersInnerStrengthEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleClusterMembersInnerStrengthEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleClusterMembersInner extends ChronicleClusterMembersInner {
  @override
  final ChronicleClusterMembersInnerDisclosureEnum disclosure;
  @override
  final String? chronicleId;
  @override
  final ObjectEnvelope? envelope;
  @override
  final String? linkId;
  @override
  final ChronicleClusterMembersInnerStrengthEnum? strength;

  factory _$ChronicleClusterMembersInner([
    void Function(ChronicleClusterMembersInnerBuilder)? updates,
  ]) => (ChronicleClusterMembersInnerBuilder()..update(updates))._build();

  _$ChronicleClusterMembersInner._({
    required this.disclosure,
    this.chronicleId,
    this.envelope,
    this.linkId,
    this.strength,
  }) : super._();
  @override
  ChronicleClusterMembersInner rebuild(
    void Function(ChronicleClusterMembersInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleClusterMembersInnerBuilder toBuilder() =>
      ChronicleClusterMembersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleClusterMembersInner &&
        disclosure == other.disclosure &&
        chronicleId == other.chronicleId &&
        envelope == other.envelope &&
        linkId == other.linkId &&
        strength == other.strength;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, disclosure.hashCode);
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, envelope.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, strength.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleClusterMembersInner')
          ..add('disclosure', disclosure)
          ..add('chronicleId', chronicleId)
          ..add('envelope', envelope)
          ..add('linkId', linkId)
          ..add('strength', strength))
        .toString();
  }
}

class ChronicleClusterMembersInnerBuilder
    implements
        Builder<
          ChronicleClusterMembersInner,
          ChronicleClusterMembersInnerBuilder
        > {
  _$ChronicleClusterMembersInner? _$v;

  ChronicleClusterMembersInnerDisclosureEnum? _disclosure;
  ChronicleClusterMembersInnerDisclosureEnum? get disclosure =>
      _$this._disclosure;
  set disclosure(ChronicleClusterMembersInnerDisclosureEnum? disclosure) =>
      _$this._disclosure = disclosure;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  ObjectEnvelopeBuilder? _envelope;
  ObjectEnvelopeBuilder get envelope =>
      _$this._envelope ??= ObjectEnvelopeBuilder();
  set envelope(ObjectEnvelopeBuilder? envelope) => _$this._envelope = envelope;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  ChronicleClusterMembersInnerStrengthEnum? _strength;
  ChronicleClusterMembersInnerStrengthEnum? get strength => _$this._strength;
  set strength(ChronicleClusterMembersInnerStrengthEnum? strength) =>
      _$this._strength = strength;

  ChronicleClusterMembersInnerBuilder() {
    ChronicleClusterMembersInner._defaults(this);
  }

  ChronicleClusterMembersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _disclosure = $v.disclosure;
      _chronicleId = $v.chronicleId;
      _envelope = $v.envelope?.toBuilder();
      _linkId = $v.linkId;
      _strength = $v.strength;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleClusterMembersInner other) {
    _$v = other as _$ChronicleClusterMembersInner;
  }

  @override
  void update(void Function(ChronicleClusterMembersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleClusterMembersInner build() => _build();

  _$ChronicleClusterMembersInner _build() {
    _$ChronicleClusterMembersInner _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleClusterMembersInner._(
            disclosure: BuiltValueNullFieldError.checkNotNull(
              disclosure,
              r'ChronicleClusterMembersInner',
              'disclosure',
            ),
            chronicleId: chronicleId,
            envelope: _envelope?.build(),
            linkId: linkId,
            strength: strength,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'envelope';
        _envelope?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleClusterMembersInner',
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
