// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigation_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvestigationItemItemTypeEnum _$investigationItemItemTypeEnum_event =
    const InvestigationItemItemTypeEnum._('event');
const InvestigationItemItemTypeEnum _$investigationItemItemTypeEnum_alert =
    const InvestigationItemItemTypeEnum._('alert');
const InvestigationItemItemTypeEnum _$investigationItemItemTypeEnum_record =
    const InvestigationItemItemTypeEnum._('record');
const InvestigationItemItemTypeEnum _$investigationItemItemTypeEnum_anomaly =
    const InvestigationItemItemTypeEnum._('anomaly');
const InvestigationItemItemTypeEnum _$investigationItemItemTypeEnum_place =
    const InvestigationItemItemTypeEnum._('place');
const InvestigationItemItemTypeEnum
    _$investigationItemItemTypeEnum_briefingRun =
    const InvestigationItemItemTypeEnum._('briefingRun');
const InvestigationItemItemTypeEnum _$investigationItemItemTypeEnum_note =
    const InvestigationItemItemTypeEnum._('note');
const InvestigationItemItemTypeEnum
    _$investigationItemItemTypeEnum_evidenceItem =
    const InvestigationItemItemTypeEnum._('evidenceItem');
const InvestigationItemItemTypeEnum _$investigationItemItemTypeEnum_attachment =
    const InvestigationItemItemTypeEnum._('attachment');
const InvestigationItemItemTypeEnum _$investigationItemItemTypeEnum_object =
    const InvestigationItemItemTypeEnum._('object');

InvestigationItemItemTypeEnum _$investigationItemItemTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'event':
      return _$investigationItemItemTypeEnum_event;
    case 'alert':
      return _$investigationItemItemTypeEnum_alert;
    case 'record':
      return _$investigationItemItemTypeEnum_record;
    case 'anomaly':
      return _$investigationItemItemTypeEnum_anomaly;
    case 'place':
      return _$investigationItemItemTypeEnum_place;
    case 'briefingRun':
      return _$investigationItemItemTypeEnum_briefingRun;
    case 'note':
      return _$investigationItemItemTypeEnum_note;
    case 'evidenceItem':
      return _$investigationItemItemTypeEnum_evidenceItem;
    case 'attachment':
      return _$investigationItemItemTypeEnum_attachment;
    case 'object':
      return _$investigationItemItemTypeEnum_object;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvestigationItemItemTypeEnum>
    _$investigationItemItemTypeEnumValues = BuiltSet<
        InvestigationItemItemTypeEnum>(const <InvestigationItemItemTypeEnum>[
  _$investigationItemItemTypeEnum_event,
  _$investigationItemItemTypeEnum_alert,
  _$investigationItemItemTypeEnum_record,
  _$investigationItemItemTypeEnum_anomaly,
  _$investigationItemItemTypeEnum_place,
  _$investigationItemItemTypeEnum_briefingRun,
  _$investigationItemItemTypeEnum_note,
  _$investigationItemItemTypeEnum_evidenceItem,
  _$investigationItemItemTypeEnum_attachment,
  _$investigationItemItemTypeEnum_object,
]);

Serializer<InvestigationItemItemTypeEnum>
    _$investigationItemItemTypeEnumSerializer =
    _$InvestigationItemItemTypeEnumSerializer();

class _$InvestigationItemItemTypeEnumSerializer
    implements PrimitiveSerializer<InvestigationItemItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'event': 'event',
    'alert': 'alert',
    'record': 'record',
    'anomaly': 'anomaly',
    'place': 'place',
    'briefingRun': 'briefing_run',
    'note': 'note',
    'evidenceItem': 'evidence-item',
    'attachment': 'attachment',
    'object': 'object',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'event': 'event',
    'alert': 'alert',
    'record': 'record',
    'anomaly': 'anomaly',
    'place': 'place',
    'briefing_run': 'briefingRun',
    'note': 'note',
    'evidence-item': 'evidenceItem',
    'attachment': 'attachment',
    'object': 'object',
  };

  @override
  final Iterable<Type> types = const <Type>[InvestigationItemItemTypeEnum];
  @override
  final String wireName = 'InvestigationItemItemTypeEnum';

  @override
  Object serialize(
          Serializers serializers, InvestigationItemItemTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvestigationItemItemTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvestigationItemItemTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvestigationItem extends InvestigationItem {
  @override
  final String id;
  @override
  final InvestigationItemItemTypeEnum itemType;
  @override
  final String ref;
  @override
  final int? seq;
  @override
  final BuiltMap<String, JsonObject?>? snapshot;
  @override
  final String? note;
  @override
  final DateTime addedAt;
  @override
  final String addedBy;
  @override
  final String? objectRef;

  factory _$InvestigationItem(
          [void Function(InvestigationItemBuilder)? updates]) =>
      (InvestigationItemBuilder()..update(updates))._build();

  _$InvestigationItem._(
      {required this.id,
      required this.itemType,
      required this.ref,
      this.seq,
      this.snapshot,
      this.note,
      required this.addedAt,
      required this.addedBy,
      this.objectRef})
      : super._();
  @override
  InvestigationItem rebuild(void Function(InvestigationItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvestigationItemBuilder toBuilder() =>
      InvestigationItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvestigationItem &&
        id == other.id &&
        itemType == other.itemType &&
        ref == other.ref &&
        seq == other.seq &&
        snapshot == other.snapshot &&
        note == other.note &&
        addedAt == other.addedAt &&
        addedBy == other.addedBy &&
        objectRef == other.objectRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, itemType.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, snapshot.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, addedBy.hashCode);
    _$hash = $jc(_$hash, objectRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvestigationItem')
          ..add('id', id)
          ..add('itemType', itemType)
          ..add('ref', ref)
          ..add('seq', seq)
          ..add('snapshot', snapshot)
          ..add('note', note)
          ..add('addedAt', addedAt)
          ..add('addedBy', addedBy)
          ..add('objectRef', objectRef))
        .toString();
  }
}

class InvestigationItemBuilder
    implements Builder<InvestigationItem, InvestigationItemBuilder> {
  _$InvestigationItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  InvestigationItemItemTypeEnum? _itemType;
  InvestigationItemItemTypeEnum? get itemType => _$this._itemType;
  set itemType(InvestigationItemItemTypeEnum? itemType) =>
      _$this._itemType = itemType;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  MapBuilder<String, JsonObject?>? _snapshot;
  MapBuilder<String, JsonObject?> get snapshot =>
      _$this._snapshot ??= MapBuilder<String, JsonObject?>();
  set snapshot(MapBuilder<String, JsonObject?>? snapshot) =>
      _$this._snapshot = snapshot;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  DateTime? _addedAt;
  DateTime? get addedAt => _$this._addedAt;
  set addedAt(DateTime? addedAt) => _$this._addedAt = addedAt;

  String? _addedBy;
  String? get addedBy => _$this._addedBy;
  set addedBy(String? addedBy) => _$this._addedBy = addedBy;

  String? _objectRef;
  String? get objectRef => _$this._objectRef;
  set objectRef(String? objectRef) => _$this._objectRef = objectRef;

  InvestigationItemBuilder() {
    InvestigationItem._defaults(this);
  }

  InvestigationItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _itemType = $v.itemType;
      _ref = $v.ref;
      _seq = $v.seq;
      _snapshot = $v.snapshot?.toBuilder();
      _note = $v.note;
      _addedAt = $v.addedAt;
      _addedBy = $v.addedBy;
      _objectRef = $v.objectRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvestigationItem other) {
    _$v = other as _$InvestigationItem;
  }

  @override
  void update(void Function(InvestigationItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvestigationItem build() => _build();

  _$InvestigationItem _build() {
    _$InvestigationItem _$result;
    try {
      _$result = _$v ??
          _$InvestigationItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'InvestigationItem', 'id'),
            itemType: BuiltValueNullFieldError.checkNotNull(
                itemType, r'InvestigationItem', 'itemType'),
            ref: BuiltValueNullFieldError.checkNotNull(
                ref, r'InvestigationItem', 'ref'),
            seq: seq,
            snapshot: _snapshot?.build(),
            note: note,
            addedAt: BuiltValueNullFieldError.checkNotNull(
                addedAt, r'InvestigationItem', 'addedAt'),
            addedBy: BuiltValueNullFieldError.checkNotNull(
                addedBy, r'InvestigationItem', 'addedBy'),
            objectRef: objectRef,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snapshot';
        _snapshot?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvestigationItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
