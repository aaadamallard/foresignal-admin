// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_consensus.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OutletConsensusBucketEnum _$outletConsensusBucketEnum_left =
    const OutletConsensusBucketEnum._('left');
const OutletConsensusBucketEnum _$outletConsensusBucketEnum_center =
    const OutletConsensusBucketEnum._('center');
const OutletConsensusBucketEnum _$outletConsensusBucketEnum_right =
    const OutletConsensusBucketEnum._('right');

OutletConsensusBucketEnum _$outletConsensusBucketEnumValueOf(String name) {
  switch (name) {
    case 'left':
      return _$outletConsensusBucketEnum_left;
    case 'center':
      return _$outletConsensusBucketEnum_center;
    case 'right':
      return _$outletConsensusBucketEnum_right;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OutletConsensusBucketEnum> _$outletConsensusBucketEnumValues =
    BuiltSet<OutletConsensusBucketEnum>(const <OutletConsensusBucketEnum>[
      _$outletConsensusBucketEnum_left,
      _$outletConsensusBucketEnum_center,
      _$outletConsensusBucketEnum_right,
    ]);

Serializer<OutletConsensusBucketEnum> _$outletConsensusBucketEnumSerializer =
    _$OutletConsensusBucketEnumSerializer();

class _$OutletConsensusBucketEnumSerializer
    implements PrimitiveSerializer<OutletConsensusBucketEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'left': 'left',
    'center': 'center',
    'right': 'right',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'left': 'left',
    'center': 'center',
    'right': 'right',
  };

  @override
  final Iterable<Type> types = const <Type>[OutletConsensusBucketEnum];
  @override
  final String wireName = 'OutletConsensusBucketEnum';

  @override
  Object serialize(
    Serializers serializers,
    OutletConsensusBucketEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OutletConsensusBucketEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OutletConsensusBucketEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OutletConsensus extends OutletConsensus {
  @override
  final String outletId;
  @override
  final JsonObject? dimension;
  @override
  final num? median;
  @override
  final int nProviders;
  @override
  final num? disagreement;
  @override
  final OutletConsensusBucketEnum? bucket;
  @override
  final BuiltList<OutletConsensusProvidersInner> providers;
  @override
  final DateTime? computedAt;

  factory _$OutletConsensus([void Function(OutletConsensusBuilder)? updates]) =>
      (OutletConsensusBuilder()..update(updates))._build();

  _$OutletConsensus._({
    required this.outletId,
    this.dimension,
    this.median,
    required this.nProviders,
    this.disagreement,
    this.bucket,
    required this.providers,
    this.computedAt,
  }) : super._();
  @override
  OutletConsensus rebuild(void Function(OutletConsensusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutletConsensusBuilder toBuilder() => OutletConsensusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutletConsensus &&
        outletId == other.outletId &&
        dimension == other.dimension &&
        median == other.median &&
        nProviders == other.nProviders &&
        disagreement == other.disagreement &&
        bucket == other.bucket &&
        providers == other.providers &&
        computedAt == other.computedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, outletId.hashCode);
    _$hash = $jc(_$hash, dimension.hashCode);
    _$hash = $jc(_$hash, median.hashCode);
    _$hash = $jc(_$hash, nProviders.hashCode);
    _$hash = $jc(_$hash, disagreement.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, providers.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OutletConsensus')
          ..add('outletId', outletId)
          ..add('dimension', dimension)
          ..add('median', median)
          ..add('nProviders', nProviders)
          ..add('disagreement', disagreement)
          ..add('bucket', bucket)
          ..add('providers', providers)
          ..add('computedAt', computedAt))
        .toString();
  }
}

class OutletConsensusBuilder
    implements Builder<OutletConsensus, OutletConsensusBuilder> {
  _$OutletConsensus? _$v;

  String? _outletId;
  String? get outletId => _$this._outletId;
  set outletId(String? outletId) => _$this._outletId = outletId;

  JsonObject? _dimension;
  JsonObject? get dimension => _$this._dimension;
  set dimension(JsonObject? dimension) => _$this._dimension = dimension;

  num? _median;
  num? get median => _$this._median;
  set median(num? median) => _$this._median = median;

  int? _nProviders;
  int? get nProviders => _$this._nProviders;
  set nProviders(int? nProviders) => _$this._nProviders = nProviders;

  num? _disagreement;
  num? get disagreement => _$this._disagreement;
  set disagreement(num? disagreement) => _$this._disagreement = disagreement;

  OutletConsensusBucketEnum? _bucket;
  OutletConsensusBucketEnum? get bucket => _$this._bucket;
  set bucket(OutletConsensusBucketEnum? bucket) => _$this._bucket = bucket;

  ListBuilder<OutletConsensusProvidersInner>? _providers;
  ListBuilder<OutletConsensusProvidersInner> get providers =>
      _$this._providers ??= ListBuilder<OutletConsensusProvidersInner>();
  set providers(ListBuilder<OutletConsensusProvidersInner>? providers) =>
      _$this._providers = providers;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  OutletConsensusBuilder() {
    OutletConsensus._defaults(this);
  }

  OutletConsensusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _outletId = $v.outletId;
      _dimension = $v.dimension;
      _median = $v.median;
      _nProviders = $v.nProviders;
      _disagreement = $v.disagreement;
      _bucket = $v.bucket;
      _providers = $v.providers.toBuilder();
      _computedAt = $v.computedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutletConsensus other) {
    _$v = other as _$OutletConsensus;
  }

  @override
  void update(void Function(OutletConsensusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutletConsensus build() => _build();

  _$OutletConsensus _build() {
    _$OutletConsensus _$result;
    try {
      _$result =
          _$v ??
          _$OutletConsensus._(
            outletId: BuiltValueNullFieldError.checkNotNull(
              outletId,
              r'OutletConsensus',
              'outletId',
            ),
            dimension: dimension,
            median: median,
            nProviders: BuiltValueNullFieldError.checkNotNull(
              nProviders,
              r'OutletConsensus',
              'nProviders',
            ),
            disagreement: disagreement,
            bucket: bucket,
            providers: providers.build(),
            computedAt: computedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'providers';
        providers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OutletConsensus',
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
