// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_assumption.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const KeyAssumptionStatusEnum _$keyAssumptionStatusEnum_solid =
    const KeyAssumptionStatusEnum._('solid');
const KeyAssumptionStatusEnum _$keyAssumptionStatusEnum_caveated =
    const KeyAssumptionStatusEnum._('caveated');
const KeyAssumptionStatusEnum _$keyAssumptionStatusEnum_unsupported =
    const KeyAssumptionStatusEnum._('unsupported');
const KeyAssumptionStatusEnum _$keyAssumptionStatusEnum_broken =
    const KeyAssumptionStatusEnum._('broken');

KeyAssumptionStatusEnum _$keyAssumptionStatusEnumValueOf(String name) {
  switch (name) {
    case 'solid':
      return _$keyAssumptionStatusEnum_solid;
    case 'caveated':
      return _$keyAssumptionStatusEnum_caveated;
    case 'unsupported':
      return _$keyAssumptionStatusEnum_unsupported;
    case 'broken':
      return _$keyAssumptionStatusEnum_broken;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<KeyAssumptionStatusEnum> _$keyAssumptionStatusEnumValues =
    BuiltSet<KeyAssumptionStatusEnum>(const <KeyAssumptionStatusEnum>[
  _$keyAssumptionStatusEnum_solid,
  _$keyAssumptionStatusEnum_caveated,
  _$keyAssumptionStatusEnum_unsupported,
  _$keyAssumptionStatusEnum_broken,
]);

Serializer<KeyAssumptionStatusEnum> _$keyAssumptionStatusEnumSerializer =
    _$KeyAssumptionStatusEnumSerializer();

class _$KeyAssumptionStatusEnumSerializer
    implements PrimitiveSerializer<KeyAssumptionStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
  };

  @override
  final Iterable<Type> types = const <Type>[KeyAssumptionStatusEnum];
  @override
  final String wireName = 'KeyAssumptionStatusEnum';

  @override
  Object serialize(Serializers serializers, KeyAssumptionStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  KeyAssumptionStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      KeyAssumptionStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$KeyAssumption extends KeyAssumption {
  @override
  final String id;
  @override
  final String setId;
  @override
  final String text;
  @override
  final bool linchpin;
  @override
  final String? rationale;
  @override
  final String? wouldBeWrongIf;
  @override
  final KeyAssumptionStatusEnum status;
  @override
  final BuiltList<String>? indicatorIds;
  @override
  final DateTime? reviewDue;
  @override
  final String? updatedBy;
  @override
  final DateTime updatedAt;

  factory _$KeyAssumption([void Function(KeyAssumptionBuilder)? updates]) =>
      (KeyAssumptionBuilder()..update(updates))._build();

  _$KeyAssumption._(
      {required this.id,
      required this.setId,
      required this.text,
      required this.linchpin,
      this.rationale,
      this.wouldBeWrongIf,
      required this.status,
      this.indicatorIds,
      this.reviewDue,
      this.updatedBy,
      required this.updatedAt})
      : super._();
  @override
  KeyAssumption rebuild(void Function(KeyAssumptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyAssumptionBuilder toBuilder() => KeyAssumptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyAssumption &&
        id == other.id &&
        setId == other.setId &&
        text == other.text &&
        linchpin == other.linchpin &&
        rationale == other.rationale &&
        wouldBeWrongIf == other.wouldBeWrongIf &&
        status == other.status &&
        indicatorIds == other.indicatorIds &&
        reviewDue == other.reviewDue &&
        updatedBy == other.updatedBy &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, linchpin.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, wouldBeWrongIf.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, indicatorIds.hashCode);
    _$hash = $jc(_$hash, reviewDue.hashCode);
    _$hash = $jc(_$hash, updatedBy.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeyAssumption')
          ..add('id', id)
          ..add('setId', setId)
          ..add('text', text)
          ..add('linchpin', linchpin)
          ..add('rationale', rationale)
          ..add('wouldBeWrongIf', wouldBeWrongIf)
          ..add('status', status)
          ..add('indicatorIds', indicatorIds)
          ..add('reviewDue', reviewDue)
          ..add('updatedBy', updatedBy)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class KeyAssumptionBuilder
    implements Builder<KeyAssumption, KeyAssumptionBuilder> {
  _$KeyAssumption? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _linchpin;
  bool? get linchpin => _$this._linchpin;
  set linchpin(bool? linchpin) => _$this._linchpin = linchpin;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  String? _wouldBeWrongIf;
  String? get wouldBeWrongIf => _$this._wouldBeWrongIf;
  set wouldBeWrongIf(String? wouldBeWrongIf) =>
      _$this._wouldBeWrongIf = wouldBeWrongIf;

  KeyAssumptionStatusEnum? _status;
  KeyAssumptionStatusEnum? get status => _$this._status;
  set status(KeyAssumptionStatusEnum? status) => _$this._status = status;

  ListBuilder<String>? _indicatorIds;
  ListBuilder<String> get indicatorIds =>
      _$this._indicatorIds ??= ListBuilder<String>();
  set indicatorIds(ListBuilder<String>? indicatorIds) =>
      _$this._indicatorIds = indicatorIds;

  DateTime? _reviewDue;
  DateTime? get reviewDue => _$this._reviewDue;
  set reviewDue(DateTime? reviewDue) => _$this._reviewDue = reviewDue;

  String? _updatedBy;
  String? get updatedBy => _$this._updatedBy;
  set updatedBy(String? updatedBy) => _$this._updatedBy = updatedBy;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  KeyAssumptionBuilder() {
    KeyAssumption._defaults(this);
  }

  KeyAssumptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _setId = $v.setId;
      _text = $v.text;
      _linchpin = $v.linchpin;
      _rationale = $v.rationale;
      _wouldBeWrongIf = $v.wouldBeWrongIf;
      _status = $v.status;
      _indicatorIds = $v.indicatorIds?.toBuilder();
      _reviewDue = $v.reviewDue;
      _updatedBy = $v.updatedBy;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeyAssumption other) {
    _$v = other as _$KeyAssumption;
  }

  @override
  void update(void Function(KeyAssumptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyAssumption build() => _build();

  _$KeyAssumption _build() {
    _$KeyAssumption _$result;
    try {
      _$result = _$v ??
          _$KeyAssumption._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'KeyAssumption', 'id'),
            setId: BuiltValueNullFieldError.checkNotNull(
                setId, r'KeyAssumption', 'setId'),
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'KeyAssumption', 'text'),
            linchpin: BuiltValueNullFieldError.checkNotNull(
                linchpin, r'KeyAssumption', 'linchpin'),
            rationale: rationale,
            wouldBeWrongIf: wouldBeWrongIf,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'KeyAssumption', 'status'),
            indicatorIds: _indicatorIds?.build(),
            reviewDue: reviewDue,
            updatedBy: updatedBy,
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'KeyAssumption', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'indicatorIds';
        _indicatorIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'KeyAssumption', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
