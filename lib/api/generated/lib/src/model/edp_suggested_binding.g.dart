// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_suggested_binding.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdpSuggestedBindingTargetEnum _$edpSuggestedBindingTargetEnum_series =
    const EdpSuggestedBindingTargetEnum._('series');
const EdpSuggestedBindingTargetEnum
_$edpSuggestedBindingTargetEnum_canonicalFamily =
    const EdpSuggestedBindingTargetEnum._('canonicalFamily');
const EdpSuggestedBindingTargetEnum _$edpSuggestedBindingTargetEnum_social =
    const EdpSuggestedBindingTargetEnum._('social');
const EdpSuggestedBindingTargetEnum _$edpSuggestedBindingTargetEnum_news =
    const EdpSuggestedBindingTargetEnum._('news');
const EdpSuggestedBindingTargetEnum _$edpSuggestedBindingTargetEnum_evidence =
    const EdpSuggestedBindingTargetEnum._('evidence');
const EdpSuggestedBindingTargetEnum _$edpSuggestedBindingTargetEnum_indicator =
    const EdpSuggestedBindingTargetEnum._('indicator');
const EdpSuggestedBindingTargetEnum _$edpSuggestedBindingTargetEnum_forecast =
    const EdpSuggestedBindingTargetEnum._('forecast');
const EdpSuggestedBindingTargetEnum _$edpSuggestedBindingTargetEnum_place =
    const EdpSuggestedBindingTargetEnum._('place');
const EdpSuggestedBindingTargetEnum _$edpSuggestedBindingTargetEnum_situation =
    const EdpSuggestedBindingTargetEnum._('situation');
const EdpSuggestedBindingTargetEnum _$edpSuggestedBindingTargetEnum_chronicle =
    const EdpSuggestedBindingTargetEnum._('chronicle');

EdpSuggestedBindingTargetEnum _$edpSuggestedBindingTargetEnumValueOf(
  String name,
) {
  switch (name) {
    case 'series':
      return _$edpSuggestedBindingTargetEnum_series;
    case 'canonicalFamily':
      return _$edpSuggestedBindingTargetEnum_canonicalFamily;
    case 'social':
      return _$edpSuggestedBindingTargetEnum_social;
    case 'news':
      return _$edpSuggestedBindingTargetEnum_news;
    case 'evidence':
      return _$edpSuggestedBindingTargetEnum_evidence;
    case 'indicator':
      return _$edpSuggestedBindingTargetEnum_indicator;
    case 'forecast':
      return _$edpSuggestedBindingTargetEnum_forecast;
    case 'place':
      return _$edpSuggestedBindingTargetEnum_place;
    case 'situation':
      return _$edpSuggestedBindingTargetEnum_situation;
    case 'chronicle':
      return _$edpSuggestedBindingTargetEnum_chronicle;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EdpSuggestedBindingTargetEnum>
_$edpSuggestedBindingTargetEnumValues = BuiltSet<EdpSuggestedBindingTargetEnum>(
  const <EdpSuggestedBindingTargetEnum>[
    _$edpSuggestedBindingTargetEnum_series,
    _$edpSuggestedBindingTargetEnum_canonicalFamily,
    _$edpSuggestedBindingTargetEnum_social,
    _$edpSuggestedBindingTargetEnum_news,
    _$edpSuggestedBindingTargetEnum_evidence,
    _$edpSuggestedBindingTargetEnum_indicator,
    _$edpSuggestedBindingTargetEnum_forecast,
    _$edpSuggestedBindingTargetEnum_place,
    _$edpSuggestedBindingTargetEnum_situation,
    _$edpSuggestedBindingTargetEnum_chronicle,
  ],
);

Serializer<EdpSuggestedBindingTargetEnum>
_$edpSuggestedBindingTargetEnumSerializer =
    _$EdpSuggestedBindingTargetEnumSerializer();

class _$EdpSuggestedBindingTargetEnumSerializer
    implements PrimitiveSerializer<EdpSuggestedBindingTargetEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'series': 'series',
    'canonicalFamily': 'canonical-family',
    'social': 'social',
    'news': 'news',
    'evidence': 'evidence',
    'indicator': 'indicator',
    'forecast': 'forecast',
    'place': 'place',
    'situation': 'situation',
    'chronicle': 'chronicle',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'series': 'series',
    'canonical-family': 'canonicalFamily',
    'social': 'social',
    'news': 'news',
    'evidence': 'evidence',
    'indicator': 'indicator',
    'forecast': 'forecast',
    'place': 'place',
    'situation': 'situation',
    'chronicle': 'chronicle',
  };

  @override
  final Iterable<Type> types = const <Type>[EdpSuggestedBindingTargetEnum];
  @override
  final String wireName = 'EdpSuggestedBindingTargetEnum';

  @override
  Object serialize(
    Serializers serializers,
    EdpSuggestedBindingTargetEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdpSuggestedBindingTargetEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdpSuggestedBindingTargetEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EdpSuggestedBinding extends EdpSuggestedBinding {
  @override
  final EdpSuggestedBindingTargetEnum target;
  @override
  final BuiltMap<String, JsonObject?>? config;

  factory _$EdpSuggestedBinding([
    void Function(EdpSuggestedBindingBuilder)? updates,
  ]) => (EdpSuggestedBindingBuilder()..update(updates))._build();

  _$EdpSuggestedBinding._({required this.target, this.config}) : super._();
  @override
  EdpSuggestedBinding rebuild(
    void Function(EdpSuggestedBindingBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdpSuggestedBindingBuilder toBuilder() =>
      EdpSuggestedBindingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpSuggestedBinding &&
        target == other.target &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpSuggestedBinding')
          ..add('target', target)
          ..add('config', config))
        .toString();
  }
}

class EdpSuggestedBindingBuilder
    implements Builder<EdpSuggestedBinding, EdpSuggestedBindingBuilder> {
  _$EdpSuggestedBinding? _$v;

  EdpSuggestedBindingTargetEnum? _target;
  EdpSuggestedBindingTargetEnum? get target => _$this._target;
  set target(EdpSuggestedBindingTargetEnum? target) => _$this._target = target;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  EdpSuggestedBindingBuilder() {
    EdpSuggestedBinding._defaults(this);
  }

  EdpSuggestedBindingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _target = $v.target;
      _config = $v.config?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpSuggestedBinding other) {
    _$v = other as _$EdpSuggestedBinding;
  }

  @override
  void update(void Function(EdpSuggestedBindingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpSuggestedBinding build() => _build();

  _$EdpSuggestedBinding _build() {
    _$EdpSuggestedBinding _$result;
    try {
      _$result =
          _$v ??
          _$EdpSuggestedBinding._(
            target: BuiltValueNullFieldError.checkNotNull(
              target,
              r'EdpSuggestedBinding',
              'target',
            ),
            config: _config?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpSuggestedBinding',
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
