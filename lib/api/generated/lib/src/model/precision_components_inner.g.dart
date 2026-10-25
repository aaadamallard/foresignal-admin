// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precision_components_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecisionComponentsInnerComponentEnum
_$precisionComponentsInnerComponentEnum_finding =
    const PrecisionComponentsInnerComponentEnum._('finding');
const PrecisionComponentsInnerComponentEnum
_$precisionComponentsInnerComponentEnum_intelEvent =
    const PrecisionComponentsInnerComponentEnum._('intelEvent');
const PrecisionComponentsInnerComponentEnum
_$precisionComponentsInnerComponentEnum_situation =
    const PrecisionComponentsInnerComponentEnum._('situation');
const PrecisionComponentsInnerComponentEnum
_$precisionComponentsInnerComponentEnum_precursorActive =
    const PrecisionComponentsInnerComponentEnum._('precursorActive');
const PrecisionComponentsInnerComponentEnum
_$precisionComponentsInnerComponentEnum_unknownDefaultOpenApi =
    const PrecisionComponentsInnerComponentEnum._('unknownDefaultOpenApi');

PrecisionComponentsInnerComponentEnum
_$precisionComponentsInnerComponentEnumValueOf(String name) {
  switch (name) {
    case 'finding':
      return _$precisionComponentsInnerComponentEnum_finding;
    case 'intelEvent':
      return _$precisionComponentsInnerComponentEnum_intelEvent;
    case 'situation':
      return _$precisionComponentsInnerComponentEnum_situation;
    case 'precursorActive':
      return _$precisionComponentsInnerComponentEnum_precursorActive;
    case 'unknownDefaultOpenApi':
      return _$precisionComponentsInnerComponentEnum_unknownDefaultOpenApi;
    default:
      return _$precisionComponentsInnerComponentEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecisionComponentsInnerComponentEnum>
_$precisionComponentsInnerComponentEnumValues =
    BuiltSet<PrecisionComponentsInnerComponentEnum>(
      const <PrecisionComponentsInnerComponentEnum>[
        _$precisionComponentsInnerComponentEnum_finding,
        _$precisionComponentsInnerComponentEnum_intelEvent,
        _$precisionComponentsInnerComponentEnum_situation,
        _$precisionComponentsInnerComponentEnum_precursorActive,
        _$precisionComponentsInnerComponentEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<PrecisionComponentsInnerComponentEnum>
_$precisionComponentsInnerComponentEnumSerializer =
    _$PrecisionComponentsInnerComponentEnumSerializer();

class _$PrecisionComponentsInnerComponentEnumSerializer
    implements PrimitiveSerializer<PrecisionComponentsInnerComponentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'finding': 'finding',
    'intelEvent': 'intel-event',
    'situation': 'situation',
    'precursorActive': 'precursor-active',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'finding': 'finding',
    'intel-event': 'intelEvent',
    'situation': 'situation',
    'precursor-active': 'precursorActive',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PrecisionComponentsInnerComponentEnum,
  ];
  @override
  final String wireName = 'PrecisionComponentsInnerComponentEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecisionComponentsInnerComponentEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecisionComponentsInnerComponentEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecisionComponentsInnerComponentEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecisionComponentsInner extends PrecisionComponentsInner {
  @override
  final PrecisionComponentsInnerComponentEnum component;
  @override
  final String key;
  @override
  final int confirmed;
  @override
  final int rejected;
  @override
  final int? duplicate;
  @override
  final int? needsReview;
  @override
  final int labeled;
  @override
  final num? precision;
  @override
  final ImpactRateInterval? interval;

  factory _$PrecisionComponentsInner([
    void Function(PrecisionComponentsInnerBuilder)? updates,
  ]) => (PrecisionComponentsInnerBuilder()..update(updates))._build();

  _$PrecisionComponentsInner._({
    required this.component,
    required this.key,
    required this.confirmed,
    required this.rejected,
    this.duplicate,
    this.needsReview,
    required this.labeled,
    this.precision,
    this.interval,
  }) : super._();
  @override
  PrecisionComponentsInner rebuild(
    void Function(PrecisionComponentsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrecisionComponentsInnerBuilder toBuilder() =>
      PrecisionComponentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecisionComponentsInner &&
        component == other.component &&
        key == other.key &&
        confirmed == other.confirmed &&
        rejected == other.rejected &&
        duplicate == other.duplicate &&
        needsReview == other.needsReview &&
        labeled == other.labeled &&
        precision == other.precision &&
        interval == other.interval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, confirmed.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jc(_$hash, duplicate.hashCode);
    _$hash = $jc(_$hash, needsReview.hashCode);
    _$hash = $jc(_$hash, labeled.hashCode);
    _$hash = $jc(_$hash, precision.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecisionComponentsInner')
          ..add('component', component)
          ..add('key', key)
          ..add('confirmed', confirmed)
          ..add('rejected', rejected)
          ..add('duplicate', duplicate)
          ..add('needsReview', needsReview)
          ..add('labeled', labeled)
          ..add('precision', precision)
          ..add('interval', interval))
        .toString();
  }
}

class PrecisionComponentsInnerBuilder
    implements
        Builder<PrecisionComponentsInner, PrecisionComponentsInnerBuilder> {
  _$PrecisionComponentsInner? _$v;

  PrecisionComponentsInnerComponentEnum? _component;
  PrecisionComponentsInnerComponentEnum? get component => _$this._component;
  set component(PrecisionComponentsInnerComponentEnum? component) =>
      _$this._component = component;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  int? _confirmed;
  int? get confirmed => _$this._confirmed;
  set confirmed(int? confirmed) => _$this._confirmed = confirmed;

  int? _rejected;
  int? get rejected => _$this._rejected;
  set rejected(int? rejected) => _$this._rejected = rejected;

  int? _duplicate;
  int? get duplicate => _$this._duplicate;
  set duplicate(int? duplicate) => _$this._duplicate = duplicate;

  int? _needsReview;
  int? get needsReview => _$this._needsReview;
  set needsReview(int? needsReview) => _$this._needsReview = needsReview;

  int? _labeled;
  int? get labeled => _$this._labeled;
  set labeled(int? labeled) => _$this._labeled = labeled;

  num? _precision;
  num? get precision => _$this._precision;
  set precision(num? precision) => _$this._precision = precision;

  ImpactRateIntervalBuilder? _interval;
  ImpactRateIntervalBuilder get interval =>
      _$this._interval ??= ImpactRateIntervalBuilder();
  set interval(ImpactRateIntervalBuilder? interval) =>
      _$this._interval = interval;

  PrecisionComponentsInnerBuilder() {
    PrecisionComponentsInner._defaults(this);
  }

  PrecisionComponentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _component = $v.component;
      _key = $v.key;
      _confirmed = $v.confirmed;
      _rejected = $v.rejected;
      _duplicate = $v.duplicate;
      _needsReview = $v.needsReview;
      _labeled = $v.labeled;
      _precision = $v.precision;
      _interval = $v.interval?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecisionComponentsInner other) {
    _$v = other as _$PrecisionComponentsInner;
  }

  @override
  void update(void Function(PrecisionComponentsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecisionComponentsInner build() => _build();

  _$PrecisionComponentsInner _build() {
    _$PrecisionComponentsInner _$result;
    try {
      _$result =
          _$v ??
          _$PrecisionComponentsInner._(
            component: BuiltValueNullFieldError.checkNotNull(
              component,
              r'PrecisionComponentsInner',
              'component',
            ),
            key: BuiltValueNullFieldError.checkNotNull(
              key,
              r'PrecisionComponentsInner',
              'key',
            ),
            confirmed: BuiltValueNullFieldError.checkNotNull(
              confirmed,
              r'PrecisionComponentsInner',
              'confirmed',
            ),
            rejected: BuiltValueNullFieldError.checkNotNull(
              rejected,
              r'PrecisionComponentsInner',
              'rejected',
            ),
            duplicate: duplicate,
            needsReview: needsReview,
            labeled: BuiltValueNullFieldError.checkNotNull(
              labeled,
              r'PrecisionComponentsInner',
              'labeled',
            ),
            precision: precision,
            interval: _interval?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interval';
        _interval?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PrecisionComponentsInner',
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
