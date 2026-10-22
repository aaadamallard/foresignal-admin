// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IngestPolicyModeEnum _$ingestPolicyModeEnum_LATEST =
    const IngestPolicyModeEnum._('LATEST');

IngestPolicyModeEnum _$ingestPolicyModeEnumValueOf(String name) {
  switch (name) {
    case 'LATEST':
      return _$ingestPolicyModeEnum_LATEST;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IngestPolicyModeEnum> _$ingestPolicyModeEnumValues =
    BuiltSet<IngestPolicyModeEnum>(const <IngestPolicyModeEnum>[
  _$ingestPolicyModeEnum_LATEST,
]);

Serializer<IngestPolicyModeEnum> _$ingestPolicyModeEnumSerializer =
    _$IngestPolicyModeEnumSerializer();

class _$IngestPolicyModeEnumSerializer
    implements PrimitiveSerializer<IngestPolicyModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LATEST': 'LATEST',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LATEST': 'LATEST',
  };

  @override
  final Iterable<Type> types = const <Type>[IngestPolicyModeEnum];
  @override
  final String wireName = 'IngestPolicyModeEnum';

  @override
  Object serialize(Serializers serializers, IngestPolicyModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IngestPolicyModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IngestPolicyModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IngestPolicy extends IngestPolicy {
  @override
  final OneOf oneOf;

  factory _$IngestPolicy([void Function(IngestPolicyBuilder)? updates]) =>
      (IngestPolicyBuilder()..update(updates))._build();

  _$IngestPolicy._({required this.oneOf}) : super._();
  @override
  IngestPolicy rebuild(void Function(IngestPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestPolicyBuilder toBuilder() => IngestPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestPolicy && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestPolicy')..add('oneOf', oneOf))
        .toString();
  }
}

class IngestPolicyBuilder
    implements Builder<IngestPolicy, IngestPolicyBuilder> {
  _$IngestPolicy? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  IngestPolicyBuilder() {
    IngestPolicy._defaults(this);
  }

  IngestPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestPolicy other) {
    _$v = other as _$IngestPolicy;
  }

  @override
  void update(void Function(IngestPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestPolicy build() => _build();

  _$IngestPolicy _build() {
    final _$result = _$v ??
        _$IngestPolicy._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'IngestPolicy', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
