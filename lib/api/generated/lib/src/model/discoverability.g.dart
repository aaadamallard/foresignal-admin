// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discoverability.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DiscoverabilityDiscoverabilityEnum
_$discoverabilityDiscoverabilityEnum_none =
    const DiscoverabilityDiscoverabilityEnum._('none');
const DiscoverabilityDiscoverabilityEnum
_$discoverabilityDiscoverabilityEnum_instance =
    const DiscoverabilityDiscoverabilityEnum._('instance');
const DiscoverabilityDiscoverabilityEnum
_$discoverabilityDiscoverabilityEnum_network =
    const DiscoverabilityDiscoverabilityEnum._('network');
const DiscoverabilityDiscoverabilityEnum
_$discoverabilityDiscoverabilityEnum_unknownDefaultOpenApi =
    const DiscoverabilityDiscoverabilityEnum._('unknownDefaultOpenApi');

DiscoverabilityDiscoverabilityEnum _$discoverabilityDiscoverabilityEnumValueOf(
  String name,
) {
  switch (name) {
    case 'none':
      return _$discoverabilityDiscoverabilityEnum_none;
    case 'instance':
      return _$discoverabilityDiscoverabilityEnum_instance;
    case 'network':
      return _$discoverabilityDiscoverabilityEnum_network;
    case 'unknownDefaultOpenApi':
      return _$discoverabilityDiscoverabilityEnum_unknownDefaultOpenApi;
    default:
      return _$discoverabilityDiscoverabilityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DiscoverabilityDiscoverabilityEnum>
_$discoverabilityDiscoverabilityEnumValues =
    BuiltSet<DiscoverabilityDiscoverabilityEnum>(
      const <DiscoverabilityDiscoverabilityEnum>[
        _$discoverabilityDiscoverabilityEnum_none,
        _$discoverabilityDiscoverabilityEnum_instance,
        _$discoverabilityDiscoverabilityEnum_network,
        _$discoverabilityDiscoverabilityEnum_unknownDefaultOpenApi,
      ],
    );

const DiscoverabilityMaxAllowedEnum _$discoverabilityMaxAllowedEnum_none =
    const DiscoverabilityMaxAllowedEnum._('none');
const DiscoverabilityMaxAllowedEnum _$discoverabilityMaxAllowedEnum_instance =
    const DiscoverabilityMaxAllowedEnum._('instance');
const DiscoverabilityMaxAllowedEnum _$discoverabilityMaxAllowedEnum_network =
    const DiscoverabilityMaxAllowedEnum._('network');
const DiscoverabilityMaxAllowedEnum
_$discoverabilityMaxAllowedEnum_unknownDefaultOpenApi =
    const DiscoverabilityMaxAllowedEnum._('unknownDefaultOpenApi');

DiscoverabilityMaxAllowedEnum _$discoverabilityMaxAllowedEnumValueOf(
  String name,
) {
  switch (name) {
    case 'none':
      return _$discoverabilityMaxAllowedEnum_none;
    case 'instance':
      return _$discoverabilityMaxAllowedEnum_instance;
    case 'network':
      return _$discoverabilityMaxAllowedEnum_network;
    case 'unknownDefaultOpenApi':
      return _$discoverabilityMaxAllowedEnum_unknownDefaultOpenApi;
    default:
      return _$discoverabilityMaxAllowedEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DiscoverabilityMaxAllowedEnum>
_$discoverabilityMaxAllowedEnumValues = BuiltSet<DiscoverabilityMaxAllowedEnum>(
  const <DiscoverabilityMaxAllowedEnum>[
    _$discoverabilityMaxAllowedEnum_none,
    _$discoverabilityMaxAllowedEnum_instance,
    _$discoverabilityMaxAllowedEnum_network,
    _$discoverabilityMaxAllowedEnum_unknownDefaultOpenApi,
  ],
);

Serializer<DiscoverabilityDiscoverabilityEnum>
_$discoverabilityDiscoverabilityEnumSerializer =
    _$DiscoverabilityDiscoverabilityEnumSerializer();
Serializer<DiscoverabilityMaxAllowedEnum>
_$discoverabilityMaxAllowedEnumSerializer =
    _$DiscoverabilityMaxAllowedEnumSerializer();

class _$DiscoverabilityDiscoverabilityEnumSerializer
    implements PrimitiveSerializer<DiscoverabilityDiscoverabilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'instance': 'instance',
    'network': 'network',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'instance': 'instance',
    'network': 'network',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DiscoverabilityDiscoverabilityEnum];
  @override
  final String wireName = 'DiscoverabilityDiscoverabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    DiscoverabilityDiscoverabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DiscoverabilityDiscoverabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DiscoverabilityDiscoverabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DiscoverabilityMaxAllowedEnumSerializer
    implements PrimitiveSerializer<DiscoverabilityMaxAllowedEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'instance': 'instance',
    'network': 'network',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'instance': 'instance',
    'network': 'network',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DiscoverabilityMaxAllowedEnum];
  @override
  final String wireName = 'DiscoverabilityMaxAllowedEnum';

  @override
  Object serialize(
    Serializers serializers,
    DiscoverabilityMaxAllowedEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DiscoverabilityMaxAllowedEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DiscoverabilityMaxAllowedEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Discoverability extends Discoverability {
  @override
  final DiscoverabilityDiscoverabilityEnum discoverability;
  @override
  final bool? revealTitle;
  @override
  final bool? revealOwner;
  @override
  final DiscoverabilityMaxAllowedEnum? maxAllowed;
  @override
  final String? tlp;
  @override
  final DateTime? updatedAt;

  factory _$Discoverability([void Function(DiscoverabilityBuilder)? updates]) =>
      (DiscoverabilityBuilder()..update(updates))._build();

  _$Discoverability._({
    required this.discoverability,
    this.revealTitle,
    this.revealOwner,
    this.maxAllowed,
    this.tlp,
    this.updatedAt,
  }) : super._();
  @override
  Discoverability rebuild(void Function(DiscoverabilityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscoverabilityBuilder toBuilder() => DiscoverabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Discoverability &&
        discoverability == other.discoverability &&
        revealTitle == other.revealTitle &&
        revealOwner == other.revealOwner &&
        maxAllowed == other.maxAllowed &&
        tlp == other.tlp &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, discoverability.hashCode);
    _$hash = $jc(_$hash, revealTitle.hashCode);
    _$hash = $jc(_$hash, revealOwner.hashCode);
    _$hash = $jc(_$hash, maxAllowed.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Discoverability')
          ..add('discoverability', discoverability)
          ..add('revealTitle', revealTitle)
          ..add('revealOwner', revealOwner)
          ..add('maxAllowed', maxAllowed)
          ..add('tlp', tlp)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class DiscoverabilityBuilder
    implements Builder<Discoverability, DiscoverabilityBuilder> {
  _$Discoverability? _$v;

  DiscoverabilityDiscoverabilityEnum? _discoverability;
  DiscoverabilityDiscoverabilityEnum? get discoverability =>
      _$this._discoverability;
  set discoverability(DiscoverabilityDiscoverabilityEnum? discoverability) =>
      _$this._discoverability = discoverability;

  bool? _revealTitle;
  bool? get revealTitle => _$this._revealTitle;
  set revealTitle(bool? revealTitle) => _$this._revealTitle = revealTitle;

  bool? _revealOwner;
  bool? get revealOwner => _$this._revealOwner;
  set revealOwner(bool? revealOwner) => _$this._revealOwner = revealOwner;

  DiscoverabilityMaxAllowedEnum? _maxAllowed;
  DiscoverabilityMaxAllowedEnum? get maxAllowed => _$this._maxAllowed;
  set maxAllowed(DiscoverabilityMaxAllowedEnum? maxAllowed) =>
      _$this._maxAllowed = maxAllowed;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DiscoverabilityBuilder() {
    Discoverability._defaults(this);
  }

  DiscoverabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _discoverability = $v.discoverability;
      _revealTitle = $v.revealTitle;
      _revealOwner = $v.revealOwner;
      _maxAllowed = $v.maxAllowed;
      _tlp = $v.tlp;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Discoverability other) {
    _$v = other as _$Discoverability;
  }

  @override
  void update(void Function(DiscoverabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Discoverability build() => _build();

  _$Discoverability _build() {
    final _$result =
        _$v ??
        _$Discoverability._(
          discoverability: BuiltValueNullFieldError.checkNotNull(
            discoverability,
            r'Discoverability',
            'discoverability',
          ),
          revealTitle: revealTitle,
          revealOwner: revealOwner,
          maxAllowed: maxAllowed,
          tlp: tlp,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
