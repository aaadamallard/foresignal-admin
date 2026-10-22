// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_provider_input_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PushProviderInputConfigKeyEnvironmentEnum
_$pushProviderInputConfigKeyEnvironmentEnum_sandbox =
    const PushProviderInputConfigKeyEnvironmentEnum._('sandbox');
const PushProviderInputConfigKeyEnvironmentEnum
_$pushProviderInputConfigKeyEnvironmentEnum_production =
    const PushProviderInputConfigKeyEnvironmentEnum._('production');
const PushProviderInputConfigKeyEnvironmentEnum
_$pushProviderInputConfigKeyEnvironmentEnum_both =
    const PushProviderInputConfigKeyEnvironmentEnum._('both');

PushProviderInputConfigKeyEnvironmentEnum
_$pushProviderInputConfigKeyEnvironmentEnumValueOf(String name) {
  switch (name) {
    case 'sandbox':
      return _$pushProviderInputConfigKeyEnvironmentEnum_sandbox;
    case 'production':
      return _$pushProviderInputConfigKeyEnvironmentEnum_production;
    case 'both':
      return _$pushProviderInputConfigKeyEnvironmentEnum_both;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PushProviderInputConfigKeyEnvironmentEnum>
_$pushProviderInputConfigKeyEnvironmentEnumValues =
    BuiltSet<PushProviderInputConfigKeyEnvironmentEnum>(
      const <PushProviderInputConfigKeyEnvironmentEnum>[
        _$pushProviderInputConfigKeyEnvironmentEnum_sandbox,
        _$pushProviderInputConfigKeyEnvironmentEnum_production,
        _$pushProviderInputConfigKeyEnvironmentEnum_both,
      ],
    );

Serializer<PushProviderInputConfigKeyEnvironmentEnum>
_$pushProviderInputConfigKeyEnvironmentEnumSerializer =
    _$PushProviderInputConfigKeyEnvironmentEnumSerializer();

class _$PushProviderInputConfigKeyEnvironmentEnumSerializer
    implements PrimitiveSerializer<PushProviderInputConfigKeyEnvironmentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sandbox': 'sandbox',
    'production': 'production',
    'both': 'both',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sandbox': 'sandbox',
    'production': 'production',
    'both': 'both',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PushProviderInputConfigKeyEnvironmentEnum,
  ];
  @override
  final String wireName = 'PushProviderInputConfigKeyEnvironmentEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushProviderInputConfigKeyEnvironmentEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushProviderInputConfigKeyEnvironmentEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushProviderInputConfigKeyEnvironmentEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushProviderInputConfig extends PushProviderInputConfig {
  @override
  final OneOf oneOf;

  factory _$PushProviderInputConfig([
    void Function(PushProviderInputConfigBuilder)? updates,
  ]) => (PushProviderInputConfigBuilder()..update(updates))._build();

  _$PushProviderInputConfig._({required this.oneOf}) : super._();
  @override
  PushProviderInputConfig rebuild(
    void Function(PushProviderInputConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PushProviderInputConfigBuilder toBuilder() =>
      PushProviderInputConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushProviderInputConfig && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(
      r'PushProviderInputConfig',
    )..add('oneOf', oneOf)).toString();
  }
}

class PushProviderInputConfigBuilder
    implements
        Builder<PushProviderInputConfig, PushProviderInputConfigBuilder> {
  _$PushProviderInputConfig? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  PushProviderInputConfigBuilder() {
    PushProviderInputConfig._defaults(this);
  }

  PushProviderInputConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushProviderInputConfig other) {
    _$v = other as _$PushProviderInputConfig;
  }

  @override
  void update(void Function(PushProviderInputConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushProviderInputConfig build() => _build();

  _$PushProviderInputConfig _build() {
    final _$result =
        _$v ??
        _$PushProviderInputConfig._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'PushProviderInputConfig',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
