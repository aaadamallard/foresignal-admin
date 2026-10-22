// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_baseline_slot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnomalyBaselineSlotModelEnum _$anomalyBaselineSlotModelEnum_poisson =
    const AnomalyBaselineSlotModelEnum._('poisson');
const AnomalyBaselineSlotModelEnum _$anomalyBaselineSlotModelEnum_nb =
    const AnomalyBaselineSlotModelEnum._('nb');

AnomalyBaselineSlotModelEnum _$anomalyBaselineSlotModelEnumValueOf(
  String name,
) {
  switch (name) {
    case 'poisson':
      return _$anomalyBaselineSlotModelEnum_poisson;
    case 'nb':
      return _$anomalyBaselineSlotModelEnum_nb;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnomalyBaselineSlotModelEnum>
_$anomalyBaselineSlotModelEnumValues = BuiltSet<AnomalyBaselineSlotModelEnum>(
  const <AnomalyBaselineSlotModelEnum>[
    _$anomalyBaselineSlotModelEnum_poisson,
    _$anomalyBaselineSlotModelEnum_nb,
  ],
);

Serializer<AnomalyBaselineSlotModelEnum>
_$anomalyBaselineSlotModelEnumSerializer =
    _$AnomalyBaselineSlotModelEnumSerializer();

class _$AnomalyBaselineSlotModelEnumSerializer
    implements PrimitiveSerializer<AnomalyBaselineSlotModelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'poisson': 'poisson',
    'nb': 'nb',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'poisson': 'poisson',
    'nb': 'nb',
  };

  @override
  final Iterable<Type> types = const <Type>[AnomalyBaselineSlotModelEnum];
  @override
  final String wireName = 'AnomalyBaselineSlotModelEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyBaselineSlotModelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyBaselineSlotModelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyBaselineSlotModelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyBaselineSlot extends AnomalyBaselineSlot {
  @override
  final String groupKey;
  @override
  final int slot;
  @override
  final int n;
  @override
  final num mean;
  @override
  final num variance;
  @override
  final AnomalyBaselineSlotModelEnum model;

  factory _$AnomalyBaselineSlot([
    void Function(AnomalyBaselineSlotBuilder)? updates,
  ]) => (AnomalyBaselineSlotBuilder()..update(updates))._build();

  _$AnomalyBaselineSlot._({
    required this.groupKey,
    required this.slot,
    required this.n,
    required this.mean,
    required this.variance,
    required this.model,
  }) : super._();
  @override
  AnomalyBaselineSlot rebuild(
    void Function(AnomalyBaselineSlotBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnomalyBaselineSlotBuilder toBuilder() =>
      AnomalyBaselineSlotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnomalyBaselineSlot &&
        groupKey == other.groupKey &&
        slot == other.slot &&
        n == other.n &&
        mean == other.mean &&
        variance == other.variance &&
        model == other.model;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupKey.hashCode);
    _$hash = $jc(_$hash, slot.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, mean.hashCode);
    _$hash = $jc(_$hash, variance.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnomalyBaselineSlot')
          ..add('groupKey', groupKey)
          ..add('slot', slot)
          ..add('n', n)
          ..add('mean', mean)
          ..add('variance', variance)
          ..add('model', model))
        .toString();
  }
}

class AnomalyBaselineSlotBuilder
    implements Builder<AnomalyBaselineSlot, AnomalyBaselineSlotBuilder> {
  _$AnomalyBaselineSlot? _$v;

  String? _groupKey;
  String? get groupKey => _$this._groupKey;
  set groupKey(String? groupKey) => _$this._groupKey = groupKey;

  int? _slot;
  int? get slot => _$this._slot;
  set slot(int? slot) => _$this._slot = slot;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  num? _mean;
  num? get mean => _$this._mean;
  set mean(num? mean) => _$this._mean = mean;

  num? _variance;
  num? get variance => _$this._variance;
  set variance(num? variance) => _$this._variance = variance;

  AnomalyBaselineSlotModelEnum? _model;
  AnomalyBaselineSlotModelEnum? get model => _$this._model;
  set model(AnomalyBaselineSlotModelEnum? model) => _$this._model = model;

  AnomalyBaselineSlotBuilder() {
    AnomalyBaselineSlot._defaults(this);
  }

  AnomalyBaselineSlotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupKey = $v.groupKey;
      _slot = $v.slot;
      _n = $v.n;
      _mean = $v.mean;
      _variance = $v.variance;
      _model = $v.model;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnomalyBaselineSlot other) {
    _$v = other as _$AnomalyBaselineSlot;
  }

  @override
  void update(void Function(AnomalyBaselineSlotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnomalyBaselineSlot build() => _build();

  _$AnomalyBaselineSlot _build() {
    final _$result =
        _$v ??
        _$AnomalyBaselineSlot._(
          groupKey: BuiltValueNullFieldError.checkNotNull(
            groupKey,
            r'AnomalyBaselineSlot',
            'groupKey',
          ),
          slot: BuiltValueNullFieldError.checkNotNull(
            slot,
            r'AnomalyBaselineSlot',
            'slot',
          ),
          n: BuiltValueNullFieldError.checkNotNull(
            n,
            r'AnomalyBaselineSlot',
            'n',
          ),
          mean: BuiltValueNullFieldError.checkNotNull(
            mean,
            r'AnomalyBaselineSlot',
            'mean',
          ),
          variance: BuiltValueNullFieldError.checkNotNull(
            variance,
            r'AnomalyBaselineSlot',
            'variance',
          ),
          model: BuiltValueNullFieldError.checkNotNull(
            model,
            r'AnomalyBaselineSlot',
            'model',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
