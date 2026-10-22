// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigation_item_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvestigationItemInputItemTypeEnum
_$investigationItemInputItemTypeEnum_event =
    const InvestigationItemInputItemTypeEnum._('event');
const InvestigationItemInputItemTypeEnum
_$investigationItemInputItemTypeEnum_alert =
    const InvestigationItemInputItemTypeEnum._('alert');
const InvestigationItemInputItemTypeEnum
_$investigationItemInputItemTypeEnum_record =
    const InvestigationItemInputItemTypeEnum._('record');
const InvestigationItemInputItemTypeEnum
_$investigationItemInputItemTypeEnum_anomaly =
    const InvestigationItemInputItemTypeEnum._('anomaly');
const InvestigationItemInputItemTypeEnum
_$investigationItemInputItemTypeEnum_place =
    const InvestigationItemInputItemTypeEnum._('place');
const InvestigationItemInputItemTypeEnum
_$investigationItemInputItemTypeEnum_briefingRun =
    const InvestigationItemInputItemTypeEnum._('briefingRun');
const InvestigationItemInputItemTypeEnum
_$investigationItemInputItemTypeEnum_note =
    const InvestigationItemInputItemTypeEnum._('note');
const InvestigationItemInputItemTypeEnum
_$investigationItemInputItemTypeEnum_evidenceItem =
    const InvestigationItemInputItemTypeEnum._('evidenceItem');
const InvestigationItemInputItemTypeEnum
_$investigationItemInputItemTypeEnum_attachment =
    const InvestigationItemInputItemTypeEnum._('attachment');
const InvestigationItemInputItemTypeEnum
_$investigationItemInputItemTypeEnum_object =
    const InvestigationItemInputItemTypeEnum._('object');

InvestigationItemInputItemTypeEnum _$investigationItemInputItemTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'event':
      return _$investigationItemInputItemTypeEnum_event;
    case 'alert':
      return _$investigationItemInputItemTypeEnum_alert;
    case 'record':
      return _$investigationItemInputItemTypeEnum_record;
    case 'anomaly':
      return _$investigationItemInputItemTypeEnum_anomaly;
    case 'place':
      return _$investigationItemInputItemTypeEnum_place;
    case 'briefingRun':
      return _$investigationItemInputItemTypeEnum_briefingRun;
    case 'note':
      return _$investigationItemInputItemTypeEnum_note;
    case 'evidenceItem':
      return _$investigationItemInputItemTypeEnum_evidenceItem;
    case 'attachment':
      return _$investigationItemInputItemTypeEnum_attachment;
    case 'object':
      return _$investigationItemInputItemTypeEnum_object;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvestigationItemInputItemTypeEnum>
_$investigationItemInputItemTypeEnumValues =
    BuiltSet<InvestigationItemInputItemTypeEnum>(
      const <InvestigationItemInputItemTypeEnum>[
        _$investigationItemInputItemTypeEnum_event,
        _$investigationItemInputItemTypeEnum_alert,
        _$investigationItemInputItemTypeEnum_record,
        _$investigationItemInputItemTypeEnum_anomaly,
        _$investigationItemInputItemTypeEnum_place,
        _$investigationItemInputItemTypeEnum_briefingRun,
        _$investigationItemInputItemTypeEnum_note,
        _$investigationItemInputItemTypeEnum_evidenceItem,
        _$investigationItemInputItemTypeEnum_attachment,
        _$investigationItemInputItemTypeEnum_object,
      ],
    );

Serializer<InvestigationItemInputItemTypeEnum>
_$investigationItemInputItemTypeEnumSerializer =
    _$InvestigationItemInputItemTypeEnumSerializer();

class _$InvestigationItemInputItemTypeEnumSerializer
    implements PrimitiveSerializer<InvestigationItemInputItemTypeEnum> {
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
  final Iterable<Type> types = const <Type>[InvestigationItemInputItemTypeEnum];
  @override
  final String wireName = 'InvestigationItemInputItemTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    InvestigationItemInputItemTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InvestigationItemInputItemTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InvestigationItemInputItemTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$InvestigationItemInput extends InvestigationItemInput {
  @override
  final InvestigationItemInputItemTypeEnum itemType;
  @override
  final String ref;
  @override
  final int? seq;
  @override
  final String? note;

  factory _$InvestigationItemInput([
    void Function(InvestigationItemInputBuilder)? updates,
  ]) => (InvestigationItemInputBuilder()..update(updates))._build();

  _$InvestigationItemInput._({
    required this.itemType,
    required this.ref,
    this.seq,
    this.note,
  }) : super._();
  @override
  InvestigationItemInput rebuild(
    void Function(InvestigationItemInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvestigationItemInputBuilder toBuilder() =>
      InvestigationItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvestigationItemInput &&
        itemType == other.itemType &&
        ref == other.ref &&
        seq == other.seq &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, itemType.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvestigationItemInput')
          ..add('itemType', itemType)
          ..add('ref', ref)
          ..add('seq', seq)
          ..add('note', note))
        .toString();
  }
}

class InvestigationItemInputBuilder
    implements Builder<InvestigationItemInput, InvestigationItemInputBuilder> {
  _$InvestigationItemInput? _$v;

  InvestigationItemInputItemTypeEnum? _itemType;
  InvestigationItemInputItemTypeEnum? get itemType => _$this._itemType;
  set itemType(InvestigationItemInputItemTypeEnum? itemType) =>
      _$this._itemType = itemType;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  InvestigationItemInputBuilder() {
    InvestigationItemInput._defaults(this);
  }

  InvestigationItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemType = $v.itemType;
      _ref = $v.ref;
      _seq = $v.seq;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvestigationItemInput other) {
    _$v = other as _$InvestigationItemInput;
  }

  @override
  void update(void Function(InvestigationItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvestigationItemInput build() => _build();

  _$InvestigationItemInput _build() {
    final _$result =
        _$v ??
        _$InvestigationItemInput._(
          itemType: BuiltValueNullFieldError.checkNotNull(
            itemType,
            r'InvestigationItemInput',
            'itemType',
          ),
          ref: BuiltValueNullFieldError.checkNotNull(
            ref,
            r'InvestigationItemInput',
            'ref',
          ),
          seq: seq,
          note: note,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
