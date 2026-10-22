// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RelationInputTypeEnum _$relationInputTypeEnum_memberOf =
    const RelationInputTypeEnum._('memberOf');
const RelationInputTypeEnum _$relationInputTypeEnum_observedBy =
    const RelationInputTypeEnum._('observedBy');
const RelationInputTypeEnum _$relationInputTypeEnum_sameAs =
    const RelationInputTypeEnum._('sameAs');
const RelationInputTypeEnum _$relationInputTypeEnum_locatedIn =
    const RelationInputTypeEnum._('locatedIn');
const RelationInputTypeEnum _$relationInputTypeEnum_near =
    const RelationInputTypeEnum._('near');
const RelationInputTypeEnum _$relationInputTypeEnum_dependsOn =
    const RelationInputTypeEnum._('dependsOn');
const RelationInputTypeEnum _$relationInputTypeEnum_affects =
    const RelationInputTypeEnum._('affects');
const RelationInputTypeEnum _$relationInputTypeEnum_derivedFrom =
    const RelationInputTypeEnum._('derivedFrom');
const RelationInputTypeEnum _$relationInputTypeEnum_evidenceFor =
    const RelationInputTypeEnum._('evidenceFor');
const RelationInputTypeEnum _$relationInputTypeEnum_evidenceAgainst =
    const RelationInputTypeEnum._('evidenceAgainst');
const RelationInputTypeEnum _$relationInputTypeEnum_about =
    const RelationInputTypeEnum._('about');
const RelationInputTypeEnum _$relationInputTypeEnum_mentions =
    const RelationInputTypeEnum._('mentions');
const RelationInputTypeEnum _$relationInputTypeEnum_precedes =
    const RelationInputTypeEnum._('precedes');
const RelationInputTypeEnum _$relationInputTypeEnum_causes =
    const RelationInputTypeEnum._('causes');
const RelationInputTypeEnum _$relationInputTypeEnum_relatedTo =
    const RelationInputTypeEnum._('relatedTo');
const RelationInputTypeEnum _$relationInputTypeEnum_owns =
    const RelationInputTypeEnum._('owns');
const RelationInputTypeEnum _$relationInputTypeEnum_controls =
    const RelationInputTypeEnum._('controls');
const RelationInputTypeEnum _$relationInputTypeEnum_officerOf =
    const RelationInputTypeEnum._('officerOf');
const RelationInputTypeEnum _$relationInputTypeEnum_beneficialOwner =
    const RelationInputTypeEnum._('beneficialOwner');
const RelationInputTypeEnum _$relationInputTypeEnum_affiliatedWith =
    const RelationInputTypeEnum._('affiliatedWith');

RelationInputTypeEnum _$relationInputTypeEnumValueOf(String name) {
  switch (name) {
    case 'memberOf':
      return _$relationInputTypeEnum_memberOf;
    case 'observedBy':
      return _$relationInputTypeEnum_observedBy;
    case 'sameAs':
      return _$relationInputTypeEnum_sameAs;
    case 'locatedIn':
      return _$relationInputTypeEnum_locatedIn;
    case 'near':
      return _$relationInputTypeEnum_near;
    case 'dependsOn':
      return _$relationInputTypeEnum_dependsOn;
    case 'affects':
      return _$relationInputTypeEnum_affects;
    case 'derivedFrom':
      return _$relationInputTypeEnum_derivedFrom;
    case 'evidenceFor':
      return _$relationInputTypeEnum_evidenceFor;
    case 'evidenceAgainst':
      return _$relationInputTypeEnum_evidenceAgainst;
    case 'about':
      return _$relationInputTypeEnum_about;
    case 'mentions':
      return _$relationInputTypeEnum_mentions;
    case 'precedes':
      return _$relationInputTypeEnum_precedes;
    case 'causes':
      return _$relationInputTypeEnum_causes;
    case 'relatedTo':
      return _$relationInputTypeEnum_relatedTo;
    case 'owns':
      return _$relationInputTypeEnum_owns;
    case 'controls':
      return _$relationInputTypeEnum_controls;
    case 'officerOf':
      return _$relationInputTypeEnum_officerOf;
    case 'beneficialOwner':
      return _$relationInputTypeEnum_beneficialOwner;
    case 'affiliatedWith':
      return _$relationInputTypeEnum_affiliatedWith;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RelationInputTypeEnum> _$relationInputTypeEnumValues =
    BuiltSet<RelationInputTypeEnum>(const <RelationInputTypeEnum>[
      _$relationInputTypeEnum_memberOf,
      _$relationInputTypeEnum_observedBy,
      _$relationInputTypeEnum_sameAs,
      _$relationInputTypeEnum_locatedIn,
      _$relationInputTypeEnum_near,
      _$relationInputTypeEnum_dependsOn,
      _$relationInputTypeEnum_affects,
      _$relationInputTypeEnum_derivedFrom,
      _$relationInputTypeEnum_evidenceFor,
      _$relationInputTypeEnum_evidenceAgainst,
      _$relationInputTypeEnum_about,
      _$relationInputTypeEnum_mentions,
      _$relationInputTypeEnum_precedes,
      _$relationInputTypeEnum_causes,
      _$relationInputTypeEnum_relatedTo,
      _$relationInputTypeEnum_owns,
      _$relationInputTypeEnum_controls,
      _$relationInputTypeEnum_officerOf,
      _$relationInputTypeEnum_beneficialOwner,
      _$relationInputTypeEnum_affiliatedWith,
    ]);

const RelationInputLabelEnum _$relationInputLabelEnum_confirmed =
    const RelationInputLabelEnum._('confirmed');
const RelationInputLabelEnum _$relationInputLabelEnum_likely =
    const RelationInputLabelEnum._('likely');
const RelationInputLabelEnum _$relationInputLabelEnum_possible =
    const RelationInputLabelEnum._('possible');
const RelationInputLabelEnum _$relationInputLabelEnum_speculative =
    const RelationInputLabelEnum._('speculative');

RelationInputLabelEnum _$relationInputLabelEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$relationInputLabelEnum_confirmed;
    case 'likely':
      return _$relationInputLabelEnum_likely;
    case 'possible':
      return _$relationInputLabelEnum_possible;
    case 'speculative':
      return _$relationInputLabelEnum_speculative;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RelationInputLabelEnum> _$relationInputLabelEnumValues =
    BuiltSet<RelationInputLabelEnum>(const <RelationInputLabelEnum>[
      _$relationInputLabelEnum_confirmed,
      _$relationInputLabelEnum_likely,
      _$relationInputLabelEnum_possible,
      _$relationInputLabelEnum_speculative,
    ]);

Serializer<RelationInputTypeEnum> _$relationInputTypeEnumSerializer =
    _$RelationInputTypeEnumSerializer();
Serializer<RelationInputLabelEnum> _$relationInputLabelEnumSerializer =
    _$RelationInputLabelEnumSerializer();

class _$RelationInputTypeEnumSerializer
    implements PrimitiveSerializer<RelationInputTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'memberOf': 'member-of',
    'observedBy': 'observed-by',
    'sameAs': 'same-as',
    'locatedIn': 'located-in',
    'near': 'near',
    'dependsOn': 'depends-on',
    'affects': 'affects',
    'derivedFrom': 'derived-from',
    'evidenceFor': 'evidence-for',
    'evidenceAgainst': 'evidence-against',
    'about': 'about',
    'mentions': 'mentions',
    'precedes': 'precedes',
    'causes': 'causes',
    'relatedTo': 'related-to',
    'owns': 'owns',
    'controls': 'controls',
    'officerOf': 'officer-of',
    'beneficialOwner': 'beneficial-owner',
    'affiliatedWith': 'affiliated-with',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'member-of': 'memberOf',
    'observed-by': 'observedBy',
    'same-as': 'sameAs',
    'located-in': 'locatedIn',
    'near': 'near',
    'depends-on': 'dependsOn',
    'affects': 'affects',
    'derived-from': 'derivedFrom',
    'evidence-for': 'evidenceFor',
    'evidence-against': 'evidenceAgainst',
    'about': 'about',
    'mentions': 'mentions',
    'precedes': 'precedes',
    'causes': 'causes',
    'related-to': 'relatedTo',
    'owns': 'owns',
    'controls': 'controls',
    'officer-of': 'officerOf',
    'beneficial-owner': 'beneficialOwner',
    'affiliated-with': 'affiliatedWith',
  };

  @override
  final Iterable<Type> types = const <Type>[RelationInputTypeEnum];
  @override
  final String wireName = 'RelationInputTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    RelationInputTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RelationInputTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RelationInputTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RelationInputLabelEnumSerializer
    implements PrimitiveSerializer<RelationInputLabelEnum> {
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
  final Iterable<Type> types = const <Type>[RelationInputLabelEnum];
  @override
  final String wireName = 'RelationInputLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    RelationInputLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RelationInputLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RelationInputLabelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RelationInput extends RelationInput {
  @override
  final String fromRef;
  @override
  final String toRef;
  @override
  final RelationInputTypeEnum type;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validTo;
  @override
  final num? confidence;
  @override
  final RelationInputLabelEnum? label;
  @override
  final bool? private;

  factory _$RelationInput([void Function(RelationInputBuilder)? updates]) =>
      (RelationInputBuilder()..update(updates))._build();

  _$RelationInput._({
    required this.fromRef,
    required this.toRef,
    required this.type,
    this.validFrom,
    this.validTo,
    this.confidence,
    this.label,
    this.private,
  }) : super._();
  @override
  RelationInput rebuild(void Function(RelationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelationInputBuilder toBuilder() => RelationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationInput &&
        fromRef == other.fromRef &&
        toRef == other.toRef &&
        type == other.type &&
        validFrom == other.validFrom &&
        validTo == other.validTo &&
        confidence == other.confidence &&
        label == other.label &&
        private == other.private;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromRef.hashCode);
    _$hash = $jc(_$hash, toRef.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validTo.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelationInput')
          ..add('fromRef', fromRef)
          ..add('toRef', toRef)
          ..add('type', type)
          ..add('validFrom', validFrom)
          ..add('validTo', validTo)
          ..add('confidence', confidence)
          ..add('label', label)
          ..add('private', private))
        .toString();
  }
}

class RelationInputBuilder
    implements Builder<RelationInput, RelationInputBuilder> {
  _$RelationInput? _$v;

  String? _fromRef;
  String? get fromRef => _$this._fromRef;
  set fromRef(String? fromRef) => _$this._fromRef = fromRef;

  String? _toRef;
  String? get toRef => _$this._toRef;
  set toRef(String? toRef) => _$this._toRef = toRef;

  RelationInputTypeEnum? _type;
  RelationInputTypeEnum? get type => _$this._type;
  set type(RelationInputTypeEnum? type) => _$this._type = type;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validTo;
  DateTime? get validTo => _$this._validTo;
  set validTo(DateTime? validTo) => _$this._validTo = validTo;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  RelationInputLabelEnum? _label;
  RelationInputLabelEnum? get label => _$this._label;
  set label(RelationInputLabelEnum? label) => _$this._label = label;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  RelationInputBuilder() {
    RelationInput._defaults(this);
  }

  RelationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromRef = $v.fromRef;
      _toRef = $v.toRef;
      _type = $v.type;
      _validFrom = $v.validFrom;
      _validTo = $v.validTo;
      _confidence = $v.confidence;
      _label = $v.label;
      _private = $v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationInput other) {
    _$v = other as _$RelationInput;
  }

  @override
  void update(void Function(RelationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelationInput build() => _build();

  _$RelationInput _build() {
    final _$result =
        _$v ??
        _$RelationInput._(
          fromRef: BuiltValueNullFieldError.checkNotNull(
            fromRef,
            r'RelationInput',
            'fromRef',
          ),
          toRef: BuiltValueNullFieldError.checkNotNull(
            toRef,
            r'RelationInput',
            'toRef',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'RelationInput',
            'type',
          ),
          validFrom: validFrom,
          validTo: validTo,
          confidence: confidence,
          label: label,
          private: private,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
