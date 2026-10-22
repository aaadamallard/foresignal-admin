// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_thread_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleThreadItemTypeEnum _$chronicleThreadItemTypeEnum_alert =
    const ChronicleThreadItemTypeEnum._('alert');
const ChronicleThreadItemTypeEnum _$chronicleThreadItemTypeEnum_finding =
    const ChronicleThreadItemTypeEnum._('finding');
const ChronicleThreadItemTypeEnum
    _$chronicleThreadItemTypeEnum_situationChange =
    const ChronicleThreadItemTypeEnum._('situationChange');
const ChronicleThreadItemTypeEnum
    _$chronicleThreadItemTypeEnum_hypothesisBandChange =
    const ChronicleThreadItemTypeEnum._('hypothesisBandChange');
const ChronicleThreadItemTypeEnum
    _$chronicleThreadItemTypeEnum_forecastResolution =
    const ChronicleThreadItemTypeEnum._('forecastResolution');
const ChronicleThreadItemTypeEnum
    _$chronicleThreadItemTypeEnum_firstAppearance =
    const ChronicleThreadItemTypeEnum._('firstAppearance');
const ChronicleThreadItemTypeEnum _$chronicleThreadItemTypeEnum_layerEdit =
    const ChronicleThreadItemTypeEnum._('layerEdit');
const ChronicleThreadItemTypeEnum _$chronicleThreadItemTypeEnum_captureGap =
    const ChronicleThreadItemTypeEnum._('captureGap');
const ChronicleThreadItemTypeEnum _$chronicleThreadItemTypeEnum_capWarning =
    const ChronicleThreadItemTypeEnum._('capWarning');
const ChronicleThreadItemTypeEnum _$chronicleThreadItemTypeEnum_capFallback =
    const ChronicleThreadItemTypeEnum._('capFallback');
const ChronicleThreadItemTypeEnum _$chronicleThreadItemTypeEnum_statusChange =
    const ChronicleThreadItemTypeEnum._('statusChange');
const ChronicleThreadItemTypeEnum _$chronicleThreadItemTypeEnum_backfill =
    const ChronicleThreadItemTypeEnum._('backfill');
const ChronicleThreadItemTypeEnum
    _$chronicleThreadItemTypeEnum_narrativeChange =
    const ChronicleThreadItemTypeEnum._('narrativeChange');
const ChronicleThreadItemTypeEnum
    _$chronicleThreadItemTypeEnum_comparisonChange =
    const ChronicleThreadItemTypeEnum._('comparisonChange');

ChronicleThreadItemTypeEnum _$chronicleThreadItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'alert':
      return _$chronicleThreadItemTypeEnum_alert;
    case 'finding':
      return _$chronicleThreadItemTypeEnum_finding;
    case 'situationChange':
      return _$chronicleThreadItemTypeEnum_situationChange;
    case 'hypothesisBandChange':
      return _$chronicleThreadItemTypeEnum_hypothesisBandChange;
    case 'forecastResolution':
      return _$chronicleThreadItemTypeEnum_forecastResolution;
    case 'firstAppearance':
      return _$chronicleThreadItemTypeEnum_firstAppearance;
    case 'layerEdit':
      return _$chronicleThreadItemTypeEnum_layerEdit;
    case 'captureGap':
      return _$chronicleThreadItemTypeEnum_captureGap;
    case 'capWarning':
      return _$chronicleThreadItemTypeEnum_capWarning;
    case 'capFallback':
      return _$chronicleThreadItemTypeEnum_capFallback;
    case 'statusChange':
      return _$chronicleThreadItemTypeEnum_statusChange;
    case 'backfill':
      return _$chronicleThreadItemTypeEnum_backfill;
    case 'narrativeChange':
      return _$chronicleThreadItemTypeEnum_narrativeChange;
    case 'comparisonChange':
      return _$chronicleThreadItemTypeEnum_comparisonChange;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleThreadItemTypeEnum>
    _$chronicleThreadItemTypeEnumValues =
    BuiltSet<ChronicleThreadItemTypeEnum>(const <ChronicleThreadItemTypeEnum>[
  _$chronicleThreadItemTypeEnum_alert,
  _$chronicleThreadItemTypeEnum_finding,
  _$chronicleThreadItemTypeEnum_situationChange,
  _$chronicleThreadItemTypeEnum_hypothesisBandChange,
  _$chronicleThreadItemTypeEnum_forecastResolution,
  _$chronicleThreadItemTypeEnum_firstAppearance,
  _$chronicleThreadItemTypeEnum_layerEdit,
  _$chronicleThreadItemTypeEnum_captureGap,
  _$chronicleThreadItemTypeEnum_capWarning,
  _$chronicleThreadItemTypeEnum_capFallback,
  _$chronicleThreadItemTypeEnum_statusChange,
  _$chronicleThreadItemTypeEnum_backfill,
  _$chronicleThreadItemTypeEnum_narrativeChange,
  _$chronicleThreadItemTypeEnum_comparisonChange,
]);

Serializer<ChronicleThreadItemTypeEnum>
    _$chronicleThreadItemTypeEnumSerializer =
    _$ChronicleThreadItemTypeEnumSerializer();

class _$ChronicleThreadItemTypeEnumSerializer
    implements PrimitiveSerializer<ChronicleThreadItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alert': 'alert',
    'finding': 'finding',
    'situationChange': 'situation-change',
    'hypothesisBandChange': 'hypothesis-band-change',
    'forecastResolution': 'forecast-resolution',
    'firstAppearance': 'first-appearance',
    'layerEdit': 'layer-edit',
    'captureGap': 'capture-gap',
    'capWarning': 'cap-warning',
    'capFallback': 'cap-fallback',
    'statusChange': 'status-change',
    'backfill': 'backfill',
    'narrativeChange': 'narrative-change',
    'comparisonChange': 'comparison-change',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'alert': 'alert',
    'finding': 'finding',
    'situation-change': 'situationChange',
    'hypothesis-band-change': 'hypothesisBandChange',
    'forecast-resolution': 'forecastResolution',
    'first-appearance': 'firstAppearance',
    'layer-edit': 'layerEdit',
    'capture-gap': 'captureGap',
    'cap-warning': 'capWarning',
    'cap-fallback': 'capFallback',
    'status-change': 'statusChange',
    'backfill': 'backfill',
    'narrative-change': 'narrativeChange',
    'comparison-change': 'comparisonChange',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleThreadItemTypeEnum];
  @override
  final String wireName = 'ChronicleThreadItemTypeEnum';

  @override
  Object serialize(Serializers serializers, ChronicleThreadItemTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChronicleThreadItemTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChronicleThreadItemTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChronicleThreadItem extends ChronicleThreadItem {
  @override
  final int id;
  @override
  final String chronicleId;
  @override
  final ChronicleThreadItemTypeEnum type;
  @override
  final DateTime at;
  @override
  final int? seq;
  @override
  final String? layerId;
  @override
  final String title;
  @override
  final String? summary;
  @override
  final String? ref;
  @override
  final ObjectEnvelope? envelope;
  @override
  final BuiltMap<String, JsonObject?>? snapshot;
  @override
  final ChronicleThreadItemGap? gap;
  @override
  final bool? backfilled;

  factory _$ChronicleThreadItem(
          [void Function(ChronicleThreadItemBuilder)? updates]) =>
      (ChronicleThreadItemBuilder()..update(updates))._build();

  _$ChronicleThreadItem._(
      {required this.id,
      required this.chronicleId,
      required this.type,
      required this.at,
      this.seq,
      this.layerId,
      required this.title,
      this.summary,
      this.ref,
      this.envelope,
      this.snapshot,
      this.gap,
      this.backfilled})
      : super._();
  @override
  ChronicleThreadItem rebuild(
          void Function(ChronicleThreadItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleThreadItemBuilder toBuilder() =>
      ChronicleThreadItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleThreadItem &&
        id == other.id &&
        chronicleId == other.chronicleId &&
        type == other.type &&
        at == other.at &&
        seq == other.seq &&
        layerId == other.layerId &&
        title == other.title &&
        summary == other.summary &&
        ref == other.ref &&
        envelope == other.envelope &&
        snapshot == other.snapshot &&
        gap == other.gap &&
        backfilled == other.backfilled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, layerId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, envelope.hashCode);
    _$hash = $jc(_$hash, snapshot.hashCode);
    _$hash = $jc(_$hash, gap.hashCode);
    _$hash = $jc(_$hash, backfilled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleThreadItem')
          ..add('id', id)
          ..add('chronicleId', chronicleId)
          ..add('type', type)
          ..add('at', at)
          ..add('seq', seq)
          ..add('layerId', layerId)
          ..add('title', title)
          ..add('summary', summary)
          ..add('ref', ref)
          ..add('envelope', envelope)
          ..add('snapshot', snapshot)
          ..add('gap', gap)
          ..add('backfilled', backfilled))
        .toString();
  }
}

class ChronicleThreadItemBuilder
    implements Builder<ChronicleThreadItem, ChronicleThreadItemBuilder> {
  _$ChronicleThreadItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  ChronicleThreadItemTypeEnum? _type;
  ChronicleThreadItemTypeEnum? get type => _$this._type;
  set type(ChronicleThreadItemTypeEnum? type) => _$this._type = type;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  String? _layerId;
  String? get layerId => _$this._layerId;
  set layerId(String? layerId) => _$this._layerId = layerId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ObjectEnvelopeBuilder? _envelope;
  ObjectEnvelopeBuilder get envelope =>
      _$this._envelope ??= ObjectEnvelopeBuilder();
  set envelope(ObjectEnvelopeBuilder? envelope) => _$this._envelope = envelope;

  MapBuilder<String, JsonObject?>? _snapshot;
  MapBuilder<String, JsonObject?> get snapshot =>
      _$this._snapshot ??= MapBuilder<String, JsonObject?>();
  set snapshot(MapBuilder<String, JsonObject?>? snapshot) =>
      _$this._snapshot = snapshot;

  ChronicleThreadItemGapBuilder? _gap;
  ChronicleThreadItemGapBuilder get gap =>
      _$this._gap ??= ChronicleThreadItemGapBuilder();
  set gap(ChronicleThreadItemGapBuilder? gap) => _$this._gap = gap;

  bool? _backfilled;
  bool? get backfilled => _$this._backfilled;
  set backfilled(bool? backfilled) => _$this._backfilled = backfilled;

  ChronicleThreadItemBuilder() {
    ChronicleThreadItem._defaults(this);
  }

  ChronicleThreadItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _chronicleId = $v.chronicleId;
      _type = $v.type;
      _at = $v.at;
      _seq = $v.seq;
      _layerId = $v.layerId;
      _title = $v.title;
      _summary = $v.summary;
      _ref = $v.ref;
      _envelope = $v.envelope?.toBuilder();
      _snapshot = $v.snapshot?.toBuilder();
      _gap = $v.gap?.toBuilder();
      _backfilled = $v.backfilled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleThreadItem other) {
    _$v = other as _$ChronicleThreadItem;
  }

  @override
  void update(void Function(ChronicleThreadItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleThreadItem build() => _build();

  _$ChronicleThreadItem _build() {
    _$ChronicleThreadItem _$result;
    try {
      _$result = _$v ??
          _$ChronicleThreadItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ChronicleThreadItem', 'id'),
            chronicleId: BuiltValueNullFieldError.checkNotNull(
                chronicleId, r'ChronicleThreadItem', 'chronicleId'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ChronicleThreadItem', 'type'),
            at: BuiltValueNullFieldError.checkNotNull(
                at, r'ChronicleThreadItem', 'at'),
            seq: seq,
            layerId: layerId,
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ChronicleThreadItem', 'title'),
            summary: summary,
            ref: ref,
            envelope: _envelope?.build(),
            snapshot: _snapshot?.build(),
            gap: _gap?.build(),
            backfilled: backfilled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'envelope';
        _envelope?.build();
        _$failedField = 'snapshot';
        _snapshot?.build();
        _$failedField = 'gap';
        _gap?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleThreadItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
