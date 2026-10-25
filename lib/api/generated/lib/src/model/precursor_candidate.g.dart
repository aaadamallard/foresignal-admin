// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_candidate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecursorCandidateKindEnum _$precursorCandidateKindEnum_event =
    const PrecursorCandidateKindEnum._('event');
const PrecursorCandidateKindEnum _$precursorCandidateKindEnum_series =
    const PrecursorCandidateKindEnum._('series');
const PrecursorCandidateKindEnum
_$precursorCandidateKindEnum_unknownDefaultOpenApi =
    const PrecursorCandidateKindEnum._('unknownDefaultOpenApi');

PrecursorCandidateKindEnum _$precursorCandidateKindEnumValueOf(String name) {
  switch (name) {
    case 'event':
      return _$precursorCandidateKindEnum_event;
    case 'series':
      return _$precursorCandidateKindEnum_series;
    case 'unknownDefaultOpenApi':
      return _$precursorCandidateKindEnum_unknownDefaultOpenApi;
    default:
      return _$precursorCandidateKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorCandidateKindEnum> _$precursorCandidateKindEnumValues =
    BuiltSet<PrecursorCandidateKindEnum>(const <PrecursorCandidateKindEnum>[
      _$precursorCandidateKindEnum_event,
      _$precursorCandidateKindEnum_series,
      _$precursorCandidateKindEnum_unknownDefaultOpenApi,
    ]);

Serializer<PrecursorCandidateKindEnum> _$precursorCandidateKindEnumSerializer =
    _$PrecursorCandidateKindEnumSerializer();

class _$PrecursorCandidateKindEnumSerializer
    implements PrimitiveSerializer<PrecursorCandidateKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'event': 'event',
    'series': 'series',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'event': 'event',
    'series': 'series',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorCandidateKindEnum];
  @override
  final String wireName = 'PrecursorCandidateKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorCandidateKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorCandidateKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorCandidateKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorCandidate extends PrecursorCandidate {
  @override
  final String? name;
  @override
  final PrecursorCandidateKindEnum kind;
  @override
  final PrecursorSide antecedent;
  @override
  final PrecursorSide consequent;
  @override
  final PrecursorSpatial? spatial;
  @override
  final String lagMin;
  @override
  final String lagMax;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final String id;
  @override
  final String createdBy;
  @override
  final DateTime createdAt;

  factory _$PrecursorCandidate([
    void Function(PrecursorCandidateBuilder)? updates,
  ]) => (PrecursorCandidateBuilder()..update(updates))._build();

  _$PrecursorCandidate._({
    this.name,
    required this.kind,
    required this.antecedent,
    required this.consequent,
    this.spatial,
    required this.lagMin,
    required this.lagMax,
    this.regionCodes,
    required this.id,
    required this.createdBy,
    required this.createdAt,
  }) : super._();
  @override
  PrecursorCandidate rebuild(
    void Function(PrecursorCandidateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrecursorCandidateBuilder toBuilder() =>
      PrecursorCandidateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorCandidate &&
        name == other.name &&
        kind == other.kind &&
        antecedent == other.antecedent &&
        consequent == other.consequent &&
        spatial == other.spatial &&
        lagMin == other.lagMin &&
        lagMax == other.lagMax &&
        regionCodes == other.regionCodes &&
        id == other.id &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, antecedent.hashCode);
    _$hash = $jc(_$hash, consequent.hashCode);
    _$hash = $jc(_$hash, spatial.hashCode);
    _$hash = $jc(_$hash, lagMin.hashCode);
    _$hash = $jc(_$hash, lagMax.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorCandidate')
          ..add('name', name)
          ..add('kind', kind)
          ..add('antecedent', antecedent)
          ..add('consequent', consequent)
          ..add('spatial', spatial)
          ..add('lagMin', lagMin)
          ..add('lagMax', lagMax)
          ..add('regionCodes', regionCodes)
          ..add('id', id)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class PrecursorCandidateBuilder
    implements Builder<PrecursorCandidate, PrecursorCandidateBuilder> {
  _$PrecursorCandidate? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PrecursorCandidateKindEnum? _kind;
  PrecursorCandidateKindEnum? get kind => _$this._kind;
  set kind(PrecursorCandidateKindEnum? kind) => _$this._kind = kind;

  PrecursorSideBuilder? _antecedent;
  PrecursorSideBuilder get antecedent =>
      _$this._antecedent ??= PrecursorSideBuilder();
  set antecedent(PrecursorSideBuilder? antecedent) =>
      _$this._antecedent = antecedent;

  PrecursorSideBuilder? _consequent;
  PrecursorSideBuilder get consequent =>
      _$this._consequent ??= PrecursorSideBuilder();
  set consequent(PrecursorSideBuilder? consequent) =>
      _$this._consequent = consequent;

  PrecursorSpatialBuilder? _spatial;
  PrecursorSpatialBuilder get spatial =>
      _$this._spatial ??= PrecursorSpatialBuilder();
  set spatial(PrecursorSpatialBuilder? spatial) => _$this._spatial = spatial;

  String? _lagMin;
  String? get lagMin => _$this._lagMin;
  set lagMin(String? lagMin) => _$this._lagMin = lagMin;

  String? _lagMax;
  String? get lagMax => _$this._lagMax;
  set lagMax(String? lagMax) => _$this._lagMax = lagMax;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  PrecursorCandidateBuilder() {
    PrecursorCandidate._defaults(this);
  }

  PrecursorCandidateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _kind = $v.kind;
      _antecedent = $v.antecedent.toBuilder();
      _consequent = $v.consequent.toBuilder();
      _spatial = $v.spatial?.toBuilder();
      _lagMin = $v.lagMin;
      _lagMax = $v.lagMax;
      _regionCodes = $v.regionCodes?.toBuilder();
      _id = $v.id;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorCandidate other) {
    _$v = other as _$PrecursorCandidate;
  }

  @override
  void update(void Function(PrecursorCandidateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorCandidate build() => _build();

  _$PrecursorCandidate _build() {
    _$PrecursorCandidate _$result;
    try {
      _$result =
          _$v ??
          _$PrecursorCandidate._(
            name: name,
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'PrecursorCandidate',
              'kind',
            ),
            antecedent: antecedent.build(),
            consequent: consequent.build(),
            spatial: _spatial?.build(),
            lagMin: BuiltValueNullFieldError.checkNotNull(
              lagMin,
              r'PrecursorCandidate',
              'lagMin',
            ),
            lagMax: BuiltValueNullFieldError.checkNotNull(
              lagMax,
              r'PrecursorCandidate',
              'lagMax',
            ),
            regionCodes: _regionCodes?.build(),
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'PrecursorCandidate',
              'id',
            ),
            createdBy: BuiltValueNullFieldError.checkNotNull(
              createdBy,
              r'PrecursorCandidate',
              'createdBy',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'PrecursorCandidate',
              'createdAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'antecedent';
        antecedent.build();
        _$failedField = 'consequent';
        consequent.build();
        _$failedField = 'spatial';
        _spatial?.build();

        _$failedField = 'regionCodes';
        _regionCodes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PrecursorCandidate',
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
