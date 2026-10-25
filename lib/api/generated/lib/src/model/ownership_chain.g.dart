// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ownership_chain.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OwnershipChainDirectionEnum _$ownershipChainDirectionEnum_in_ =
    const OwnershipChainDirectionEnum._('in_');
const OwnershipChainDirectionEnum _$ownershipChainDirectionEnum_out_ =
    const OwnershipChainDirectionEnum._('out_');
const OwnershipChainDirectionEnum _$ownershipChainDirectionEnum_both =
    const OwnershipChainDirectionEnum._('both');
const OwnershipChainDirectionEnum
_$ownershipChainDirectionEnum_unknownDefaultOpenApi =
    const OwnershipChainDirectionEnum._('unknownDefaultOpenApi');

OwnershipChainDirectionEnum _$ownershipChainDirectionEnumValueOf(String name) {
  switch (name) {
    case 'in_':
      return _$ownershipChainDirectionEnum_in_;
    case 'out_':
      return _$ownershipChainDirectionEnum_out_;
    case 'both':
      return _$ownershipChainDirectionEnum_both;
    case 'unknownDefaultOpenApi':
      return _$ownershipChainDirectionEnum_unknownDefaultOpenApi;
    default:
      return _$ownershipChainDirectionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OwnershipChainDirectionEnum>
_$ownershipChainDirectionEnumValues =
    BuiltSet<OwnershipChainDirectionEnum>(const <OwnershipChainDirectionEnum>[
      _$ownershipChainDirectionEnum_in_,
      _$ownershipChainDirectionEnum_out_,
      _$ownershipChainDirectionEnum_both,
      _$ownershipChainDirectionEnum_unknownDefaultOpenApi,
    ]);

Serializer<OwnershipChainDirectionEnum>
_$ownershipChainDirectionEnumSerializer =
    _$OwnershipChainDirectionEnumSerializer();

class _$OwnershipChainDirectionEnumSerializer
    implements PrimitiveSerializer<OwnershipChainDirectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'in_': 'in',
    'out_': 'out',
    'both': 'both',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'in': 'in_',
    'out': 'out_',
    'both': 'both',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OwnershipChainDirectionEnum];
  @override
  final String wireName = 'OwnershipChainDirectionEnum';

  @override
  Object serialize(
    Serializers serializers,
    OwnershipChainDirectionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OwnershipChainDirectionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OwnershipChainDirectionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OwnershipChain extends OwnershipChain {
  @override
  final BuiltList<String> refs;
  @override
  final OwnershipChainDirectionEnum direction;
  @override
  final DateTime? asOf;
  @override
  final DateTime? generatedAt;
  @override
  final BuiltList<OwnershipChainNode> chains;
  @override
  final BuiltList<OwnershipChainNode> shared;

  factory _$OwnershipChain([void Function(OwnershipChainBuilder)? updates]) =>
      (OwnershipChainBuilder()..update(updates))._build();

  _$OwnershipChain._({
    required this.refs,
    required this.direction,
    this.asOf,
    this.generatedAt,
    required this.chains,
    required this.shared,
  }) : super._();
  @override
  OwnershipChain rebuild(void Function(OwnershipChainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnershipChainBuilder toBuilder() => OwnershipChainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnershipChain &&
        refs == other.refs &&
        direction == other.direction &&
        asOf == other.asOf &&
        generatedAt == other.generatedAt &&
        chains == other.chains &&
        shared == other.shared;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refs.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jc(_$hash, chains.hashCode);
    _$hash = $jc(_$hash, shared.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OwnershipChain')
          ..add('refs', refs)
          ..add('direction', direction)
          ..add('asOf', asOf)
          ..add('generatedAt', generatedAt)
          ..add('chains', chains)
          ..add('shared', shared))
        .toString();
  }
}

class OwnershipChainBuilder
    implements Builder<OwnershipChain, OwnershipChainBuilder> {
  _$OwnershipChain? _$v;

  ListBuilder<String>? _refs;
  ListBuilder<String> get refs => _$this._refs ??= ListBuilder<String>();
  set refs(ListBuilder<String>? refs) => _$this._refs = refs;

  OwnershipChainDirectionEnum? _direction;
  OwnershipChainDirectionEnum? get direction => _$this._direction;
  set direction(OwnershipChainDirectionEnum? direction) =>
      _$this._direction = direction;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  ListBuilder<OwnershipChainNode>? _chains;
  ListBuilder<OwnershipChainNode> get chains =>
      _$this._chains ??= ListBuilder<OwnershipChainNode>();
  set chains(ListBuilder<OwnershipChainNode>? chains) =>
      _$this._chains = chains;

  ListBuilder<OwnershipChainNode>? _shared;
  ListBuilder<OwnershipChainNode> get shared =>
      _$this._shared ??= ListBuilder<OwnershipChainNode>();
  set shared(ListBuilder<OwnershipChainNode>? shared) =>
      _$this._shared = shared;

  OwnershipChainBuilder() {
    OwnershipChain._defaults(this);
  }

  OwnershipChainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refs = $v.refs.toBuilder();
      _direction = $v.direction;
      _asOf = $v.asOf;
      _generatedAt = $v.generatedAt;
      _chains = $v.chains.toBuilder();
      _shared = $v.shared.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OwnershipChain other) {
    _$v = other as _$OwnershipChain;
  }

  @override
  void update(void Function(OwnershipChainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OwnershipChain build() => _build();

  _$OwnershipChain _build() {
    _$OwnershipChain _$result;
    try {
      _$result =
          _$v ??
          _$OwnershipChain._(
            refs: refs.build(),
            direction: BuiltValueNullFieldError.checkNotNull(
              direction,
              r'OwnershipChain',
              'direction',
            ),
            asOf: asOf,
            generatedAt: generatedAt,
            chains: chains.build(),
            shared: shared.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refs';
        refs.build();

        _$failedField = 'chains';
        chains.build();
        _$failedField = 'shared';
        shared.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OwnershipChain',
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
