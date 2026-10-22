// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_weights_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndexWeightsInputSource_Enum _$indexWeightsInputSourceEnum_fitted =
    const IndexWeightsInputSource_Enum._('fitted');
const IndexWeightsInputSource_Enum _$indexWeightsInputSourceEnum_operator_ =
    const IndexWeightsInputSource_Enum._('operator_');
const IndexWeightsInputSource_Enum _$indexWeightsInputSourceEnum_default_ =
    const IndexWeightsInputSource_Enum._('default_');

IndexWeightsInputSource_Enum _$indexWeightsInputSourceEnumValueOf(String name) {
  switch (name) {
    case 'fitted':
      return _$indexWeightsInputSourceEnum_fitted;
    case 'operator_':
      return _$indexWeightsInputSourceEnum_operator_;
    case 'default_':
      return _$indexWeightsInputSourceEnum_default_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndexWeightsInputSource_Enum>
_$indexWeightsInputSourceEnumValues =
    BuiltSet<IndexWeightsInputSource_Enum>(const <IndexWeightsInputSource_Enum>[
      _$indexWeightsInputSourceEnum_fitted,
      _$indexWeightsInputSourceEnum_operator_,
      _$indexWeightsInputSourceEnum_default_,
    ]);

Serializer<IndexWeightsInputSource_Enum>
_$indexWeightsInputSourceEnumSerializer =
    _$IndexWeightsInputSource_EnumSerializer();

class _$IndexWeightsInputSource_EnumSerializer
    implements PrimitiveSerializer<IndexWeightsInputSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'fitted': 'fitted',
    'operator_': 'operator',
    'default_': 'default',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'fitted': 'fitted',
    'operator': 'operator_',
    'default': 'default_',
  };

  @override
  final Iterable<Type> types = const <Type>[IndexWeightsInputSource_Enum];
  @override
  final String wireName = 'IndexWeightsInputSource_Enum';

  @override
  Object serialize(
    Serializers serializers,
    IndexWeightsInputSource_Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IndexWeightsInputSource_Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IndexWeightsInputSource_Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IndexWeightsInput extends IndexWeightsInput {
  @override
  final IndexWeightsInputSource_Enum source_;
  @override
  final int? version;
  @override
  final BuiltMap<String, num>? weights;
  @override
  final String? rationale;

  factory _$IndexWeightsInput([
    void Function(IndexWeightsInputBuilder)? updates,
  ]) => (IndexWeightsInputBuilder()..update(updates))._build();

  _$IndexWeightsInput._({
    required this.source_,
    this.version,
    this.weights,
    this.rationale,
  }) : super._();
  @override
  IndexWeightsInput rebuild(void Function(IndexWeightsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndexWeightsInputBuilder toBuilder() =>
      IndexWeightsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndexWeightsInput &&
        source_ == other.source_ &&
        version == other.version &&
        weights == other.weights &&
        rationale == other.rationale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, weights.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndexWeightsInput')
          ..add('source_', source_)
          ..add('version', version)
          ..add('weights', weights)
          ..add('rationale', rationale))
        .toString();
  }
}

class IndexWeightsInputBuilder
    implements Builder<IndexWeightsInput, IndexWeightsInputBuilder> {
  _$IndexWeightsInput? _$v;

  IndexWeightsInputSource_Enum? _source_;
  IndexWeightsInputSource_Enum? get source_ => _$this._source_;
  set source_(IndexWeightsInputSource_Enum? source_) =>
      _$this._source_ = source_;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  MapBuilder<String, num>? _weights;
  MapBuilder<String, num> get weights =>
      _$this._weights ??= MapBuilder<String, num>();
  set weights(MapBuilder<String, num>? weights) => _$this._weights = weights;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  IndexWeightsInputBuilder() {
    IndexWeightsInput._defaults(this);
  }

  IndexWeightsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_;
      _version = $v.version;
      _weights = $v.weights?.toBuilder();
      _rationale = $v.rationale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndexWeightsInput other) {
    _$v = other as _$IndexWeightsInput;
  }

  @override
  void update(void Function(IndexWeightsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndexWeightsInput build() => _build();

  _$IndexWeightsInput _build() {
    _$IndexWeightsInput _$result;
    try {
      _$result =
          _$v ??
          _$IndexWeightsInput._(
            source_: BuiltValueNullFieldError.checkNotNull(
              source_,
              r'IndexWeightsInput',
              'source_',
            ),
            version: version,
            weights: _weights?.build(),
            rationale: rationale,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weights';
        _weights?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IndexWeightsInput',
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
