// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_timeline_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClusterTimelineItemTypeEnum _$clusterTimelineItemTypeEnum_alert =
    const ClusterTimelineItemTypeEnum._('alert');
const ClusterTimelineItemTypeEnum _$clusterTimelineItemTypeEnum_finding =
    const ClusterTimelineItemTypeEnum._('finding');
const ClusterTimelineItemTypeEnum
_$clusterTimelineItemTypeEnum_situationChange =
    const ClusterTimelineItemTypeEnum._('situationChange');
const ClusterTimelineItemTypeEnum
_$clusterTimelineItemTypeEnum_hypothesisBandChange =
    const ClusterTimelineItemTypeEnum._('hypothesisBandChange');
const ClusterTimelineItemTypeEnum
_$clusterTimelineItemTypeEnum_forecastResolution =
    const ClusterTimelineItemTypeEnum._('forecastResolution');
const ClusterTimelineItemTypeEnum
_$clusterTimelineItemTypeEnum_firstAppearance =
    const ClusterTimelineItemTypeEnum._('firstAppearance');
const ClusterTimelineItemTypeEnum _$clusterTimelineItemTypeEnum_layerEdit =
    const ClusterTimelineItemTypeEnum._('layerEdit');
const ClusterTimelineItemTypeEnum _$clusterTimelineItemTypeEnum_captureGap =
    const ClusterTimelineItemTypeEnum._('captureGap');
const ClusterTimelineItemTypeEnum _$clusterTimelineItemTypeEnum_capWarning =
    const ClusterTimelineItemTypeEnum._('capWarning');
const ClusterTimelineItemTypeEnum _$clusterTimelineItemTypeEnum_capFallback =
    const ClusterTimelineItemTypeEnum._('capFallback');
const ClusterTimelineItemTypeEnum _$clusterTimelineItemTypeEnum_statusChange =
    const ClusterTimelineItemTypeEnum._('statusChange');
const ClusterTimelineItemTypeEnum _$clusterTimelineItemTypeEnum_backfill =
    const ClusterTimelineItemTypeEnum._('backfill');
const ClusterTimelineItemTypeEnum _$clusterTimelineItemTypeEnum_record =
    const ClusterTimelineItemTypeEnum._('record');

ClusterTimelineItemTypeEnum _$clusterTimelineItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'alert':
      return _$clusterTimelineItemTypeEnum_alert;
    case 'finding':
      return _$clusterTimelineItemTypeEnum_finding;
    case 'situationChange':
      return _$clusterTimelineItemTypeEnum_situationChange;
    case 'hypothesisBandChange':
      return _$clusterTimelineItemTypeEnum_hypothesisBandChange;
    case 'forecastResolution':
      return _$clusterTimelineItemTypeEnum_forecastResolution;
    case 'firstAppearance':
      return _$clusterTimelineItemTypeEnum_firstAppearance;
    case 'layerEdit':
      return _$clusterTimelineItemTypeEnum_layerEdit;
    case 'captureGap':
      return _$clusterTimelineItemTypeEnum_captureGap;
    case 'capWarning':
      return _$clusterTimelineItemTypeEnum_capWarning;
    case 'capFallback':
      return _$clusterTimelineItemTypeEnum_capFallback;
    case 'statusChange':
      return _$clusterTimelineItemTypeEnum_statusChange;
    case 'backfill':
      return _$clusterTimelineItemTypeEnum_backfill;
    case 'record':
      return _$clusterTimelineItemTypeEnum_record;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClusterTimelineItemTypeEnum>
_$clusterTimelineItemTypeEnumValues =
    BuiltSet<ClusterTimelineItemTypeEnum>(const <ClusterTimelineItemTypeEnum>[
      _$clusterTimelineItemTypeEnum_alert,
      _$clusterTimelineItemTypeEnum_finding,
      _$clusterTimelineItemTypeEnum_situationChange,
      _$clusterTimelineItemTypeEnum_hypothesisBandChange,
      _$clusterTimelineItemTypeEnum_forecastResolution,
      _$clusterTimelineItemTypeEnum_firstAppearance,
      _$clusterTimelineItemTypeEnum_layerEdit,
      _$clusterTimelineItemTypeEnum_captureGap,
      _$clusterTimelineItemTypeEnum_capWarning,
      _$clusterTimelineItemTypeEnum_capFallback,
      _$clusterTimelineItemTypeEnum_statusChange,
      _$clusterTimelineItemTypeEnum_backfill,
      _$clusterTimelineItemTypeEnum_record,
    ]);

Serializer<ClusterTimelineItemTypeEnum>
_$clusterTimelineItemTypeEnumSerializer =
    _$ClusterTimelineItemTypeEnumSerializer();

class _$ClusterTimelineItemTypeEnumSerializer
    implements PrimitiveSerializer<ClusterTimelineItemTypeEnum> {
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
    'record': 'record',
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
    'record': 'record',
  };

  @override
  final Iterable<Type> types = const <Type>[ClusterTimelineItemTypeEnum];
  @override
  final String wireName = 'ClusterTimelineItemTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ClusterTimelineItemTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ClusterTimelineItemTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ClusterTimelineItemTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ClusterTimelineItem extends ClusterTimelineItem {
  @override
  final String evidenceKey;
  @override
  final DateTime at;
  @override
  final ClusterTimelineItemTypeEnum type;
  @override
  final String title;
  @override
  final String? ref;
  @override
  final ObjectEnvelope? envelope;
  @override
  final BuiltList<String> heldBy;

  factory _$ClusterTimelineItem([
    void Function(ClusterTimelineItemBuilder)? updates,
  ]) => (ClusterTimelineItemBuilder()..update(updates))._build();

  _$ClusterTimelineItem._({
    required this.evidenceKey,
    required this.at,
    required this.type,
    required this.title,
    this.ref,
    this.envelope,
    required this.heldBy,
  }) : super._();
  @override
  ClusterTimelineItem rebuild(
    void Function(ClusterTimelineItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ClusterTimelineItemBuilder toBuilder() =>
      ClusterTimelineItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClusterTimelineItem &&
        evidenceKey == other.evidenceKey &&
        at == other.at &&
        type == other.type &&
        title == other.title &&
        ref == other.ref &&
        envelope == other.envelope &&
        heldBy == other.heldBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evidenceKey.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, envelope.hashCode);
    _$hash = $jc(_$hash, heldBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClusterTimelineItem')
          ..add('evidenceKey', evidenceKey)
          ..add('at', at)
          ..add('type', type)
          ..add('title', title)
          ..add('ref', ref)
          ..add('envelope', envelope)
          ..add('heldBy', heldBy))
        .toString();
  }
}

class ClusterTimelineItemBuilder
    implements Builder<ClusterTimelineItem, ClusterTimelineItemBuilder> {
  _$ClusterTimelineItem? _$v;

  String? _evidenceKey;
  String? get evidenceKey => _$this._evidenceKey;
  set evidenceKey(String? evidenceKey) => _$this._evidenceKey = evidenceKey;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ClusterTimelineItemTypeEnum? _type;
  ClusterTimelineItemTypeEnum? get type => _$this._type;
  set type(ClusterTimelineItemTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ObjectEnvelopeBuilder? _envelope;
  ObjectEnvelopeBuilder get envelope =>
      _$this._envelope ??= ObjectEnvelopeBuilder();
  set envelope(ObjectEnvelopeBuilder? envelope) => _$this._envelope = envelope;

  ListBuilder<String>? _heldBy;
  ListBuilder<String> get heldBy => _$this._heldBy ??= ListBuilder<String>();
  set heldBy(ListBuilder<String>? heldBy) => _$this._heldBy = heldBy;

  ClusterTimelineItemBuilder() {
    ClusterTimelineItem._defaults(this);
  }

  ClusterTimelineItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evidenceKey = $v.evidenceKey;
      _at = $v.at;
      _type = $v.type;
      _title = $v.title;
      _ref = $v.ref;
      _envelope = $v.envelope?.toBuilder();
      _heldBy = $v.heldBy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClusterTimelineItem other) {
    _$v = other as _$ClusterTimelineItem;
  }

  @override
  void update(void Function(ClusterTimelineItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClusterTimelineItem build() => _build();

  _$ClusterTimelineItem _build() {
    _$ClusterTimelineItem _$result;
    try {
      _$result =
          _$v ??
          _$ClusterTimelineItem._(
            evidenceKey: BuiltValueNullFieldError.checkNotNull(
              evidenceKey,
              r'ClusterTimelineItem',
              'evidenceKey',
            ),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'ClusterTimelineItem',
              'at',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ClusterTimelineItem',
              'type',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'ClusterTimelineItem',
              'title',
            ),
            ref: ref,
            envelope: _envelope?.build(),
            heldBy: heldBy.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'envelope';
        _envelope?.build();
        _$failedField = 'heldBy';
        heldBy.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ClusterTimelineItem',
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
