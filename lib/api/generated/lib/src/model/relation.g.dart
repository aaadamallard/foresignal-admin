// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RelationLabelEnum _$relationLabelEnum_confirmed =
    const RelationLabelEnum._('confirmed');
const RelationLabelEnum _$relationLabelEnum_likely = const RelationLabelEnum._(
  'likely',
);
const RelationLabelEnum _$relationLabelEnum_possible =
    const RelationLabelEnum._('possible');
const RelationLabelEnum _$relationLabelEnum_speculative =
    const RelationLabelEnum._('speculative');

RelationLabelEnum _$relationLabelEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$relationLabelEnum_confirmed;
    case 'likely':
      return _$relationLabelEnum_likely;
    case 'possible':
      return _$relationLabelEnum_possible;
    case 'speculative':
      return _$relationLabelEnum_speculative;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RelationLabelEnum> _$relationLabelEnumValues =
    BuiltSet<RelationLabelEnum>(const <RelationLabelEnum>[
      _$relationLabelEnum_confirmed,
      _$relationLabelEnum_likely,
      _$relationLabelEnum_possible,
      _$relationLabelEnum_speculative,
    ]);

Serializer<RelationLabelEnum> _$relationLabelEnumSerializer =
    _$RelationLabelEnumSerializer();

class _$RelationLabelEnumSerializer
    implements PrimitiveSerializer<RelationLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'confirmed': 'confirmed',
    'likely': 'likely',
    'possible': 'possible',
    'speculative': 'speculative',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'confirmed': 'confirmed',
    'likely': 'likely',
    'possible': 'possible',
    'speculative': 'speculative',
  };

  @override
  final Iterable<Type> types = const <Type>[RelationLabelEnum];
  @override
  final String wireName = 'RelationLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    RelationLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RelationLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RelationLabelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Relation extends Relation {
  @override
  final String id;
  @override
  final String fromRef;
  @override
  final String toRef;
  @override
  final String type;
  @override
  final DateTime validFrom;
  @override
  final DateTime? validTo;
  @override
  final num confidence;
  @override
  final RelationLabelEnum label;
  @override
  final RelationProvenance provenance;
  @override
  final bool projected;
  @override
  final bool? private;
  @override
  final DateTime createdAt;
  @override
  final DateTime? retiredAt;

  factory _$Relation([void Function(RelationBuilder)? updates]) =>
      (RelationBuilder()..update(updates))._build();

  _$Relation._({
    required this.id,
    required this.fromRef,
    required this.toRef,
    required this.type,
    required this.validFrom,
    this.validTo,
    required this.confidence,
    required this.label,
    required this.provenance,
    required this.projected,
    this.private,
    required this.createdAt,
    this.retiredAt,
  }) : super._();
  @override
  Relation rebuild(void Function(RelationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationBuilder toBuilder() => RelationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Relation &&
        id == other.id &&
        fromRef == other.fromRef &&
        toRef == other.toRef &&
        type == other.type &&
        validFrom == other.validFrom &&
        validTo == other.validTo &&
        confidence == other.confidence &&
        label == other.label &&
        provenance == other.provenance &&
        projected == other.projected &&
        private == other.private &&
        createdAt == other.createdAt &&
        retiredAt == other.retiredAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fromRef.hashCode);
    _$hash = $jc(_$hash, toRef.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validTo.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, provenance.hashCode);
    _$hash = $jc(_$hash, projected.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, retiredAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Relation')
          ..add('id', id)
          ..add('fromRef', fromRef)
          ..add('toRef', toRef)
          ..add('type', type)
          ..add('validFrom', validFrom)
          ..add('validTo', validTo)
          ..add('confidence', confidence)
          ..add('label', label)
          ..add('provenance', provenance)
          ..add('projected', projected)
          ..add('private', private)
          ..add('createdAt', createdAt)
          ..add('retiredAt', retiredAt))
        .toString();
  }
}

class RelationBuilder implements Builder<Relation, RelationBuilder> {
  _$Relation? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fromRef;
  String? get fromRef => _$this._fromRef;
  set fromRef(String? fromRef) => _$this._fromRef = fromRef;

  String? _toRef;
  String? get toRef => _$this._toRef;
  set toRef(String? toRef) => _$this._toRef = toRef;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validTo;
  DateTime? get validTo => _$this._validTo;
  set validTo(DateTime? validTo) => _$this._validTo = validTo;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  RelationLabelEnum? _label;
  RelationLabelEnum? get label => _$this._label;
  set label(RelationLabelEnum? label) => _$this._label = label;

  RelationProvenanceBuilder? _provenance;
  RelationProvenanceBuilder get provenance =>
      _$this._provenance ??= RelationProvenanceBuilder();
  set provenance(RelationProvenanceBuilder? provenance) =>
      _$this._provenance = provenance;

  bool? _projected;
  bool? get projected => _$this._projected;
  set projected(bool? projected) => _$this._projected = projected;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _retiredAt;
  DateTime? get retiredAt => _$this._retiredAt;
  set retiredAt(DateTime? retiredAt) => _$this._retiredAt = retiredAt;

  RelationBuilder() {
    Relation._defaults(this);
  }

  RelationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fromRef = $v.fromRef;
      _toRef = $v.toRef;
      _type = $v.type;
      _validFrom = $v.validFrom;
      _validTo = $v.validTo;
      _confidence = $v.confidence;
      _label = $v.label;
      _provenance = $v.provenance.toBuilder();
      _projected = $v.projected;
      _private = $v.private;
      _createdAt = $v.createdAt;
      _retiredAt = $v.retiredAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Relation other) {
    _$v = other as _$Relation;
  }

  @override
  void update(void Function(RelationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Relation build() => _build();

  _$Relation _build() {
    _$Relation _$result;
    try {
      _$result =
          _$v ??
          _$Relation._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Relation', 'id'),
            fromRef: BuiltValueNullFieldError.checkNotNull(
              fromRef,
              r'Relation',
              'fromRef',
            ),
            toRef: BuiltValueNullFieldError.checkNotNull(
              toRef,
              r'Relation',
              'toRef',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Relation',
              'type',
            ),
            validFrom: BuiltValueNullFieldError.checkNotNull(
              validFrom,
              r'Relation',
              'validFrom',
            ),
            validTo: validTo,
            confidence: BuiltValueNullFieldError.checkNotNull(
              confidence,
              r'Relation',
              'confidence',
            ),
            label: BuiltValueNullFieldError.checkNotNull(
              label,
              r'Relation',
              'label',
            ),
            provenance: provenance.build(),
            projected: BuiltValueNullFieldError.checkNotNull(
              projected,
              r'Relation',
              'projected',
            ),
            private: private,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Relation',
              'createdAt',
            ),
            retiredAt: retiredAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provenance';
        provenance.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Relation',
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
