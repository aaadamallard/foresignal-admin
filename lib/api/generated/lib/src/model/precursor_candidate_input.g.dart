// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_candidate_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecursorCandidateInputKindEnum _$precursorCandidateInputKindEnum_event =
    const PrecursorCandidateInputKindEnum._('event');
const PrecursorCandidateInputKindEnum _$precursorCandidateInputKindEnum_series =
    const PrecursorCandidateInputKindEnum._('series');
const PrecursorCandidateInputKindEnum
_$precursorCandidateInputKindEnum_unknownDefaultOpenApi =
    const PrecursorCandidateInputKindEnum._('unknownDefaultOpenApi');

PrecursorCandidateInputKindEnum _$precursorCandidateInputKindEnumValueOf(
  String name,
) {
  switch (name) {
    case 'event':
      return _$precursorCandidateInputKindEnum_event;
    case 'series':
      return _$precursorCandidateInputKindEnum_series;
    case 'unknownDefaultOpenApi':
      return _$precursorCandidateInputKindEnum_unknownDefaultOpenApi;
    default:
      return _$precursorCandidateInputKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorCandidateInputKindEnum>
_$precursorCandidateInputKindEnumValues =
    BuiltSet<PrecursorCandidateInputKindEnum>(
      const <PrecursorCandidateInputKindEnum>[
        _$precursorCandidateInputKindEnum_event,
        _$precursorCandidateInputKindEnum_series,
        _$precursorCandidateInputKindEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<PrecursorCandidateInputKindEnum>
_$precursorCandidateInputKindEnumSerializer =
    _$PrecursorCandidateInputKindEnumSerializer();

class _$PrecursorCandidateInputKindEnumSerializer
    implements PrimitiveSerializer<PrecursorCandidateInputKindEnum> {
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
  final Iterable<Type> types = const <Type>[PrecursorCandidateInputKindEnum];
  @override
  final String wireName = 'PrecursorCandidateInputKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorCandidateInputKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorCandidateInputKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorCandidateInputKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorCandidateInput extends PrecursorCandidateInput {
  @override
  final String? name;
  @override
  final PrecursorCandidateInputKindEnum kind;
  @override
  final PrecursorSide antecedent;
  @override
  final PrecursorSide consequent;
  @override
  final PrecursorSpatial? spatial;
  @override
  final String? lagMin;
  @override
  final String lagMax;
  @override
  final BuiltList<String>? regionCodes;

  factory _$PrecursorCandidateInput([
    void Function(PrecursorCandidateInputBuilder)? updates,
  ]) => (PrecursorCandidateInputBuilder()..update(updates))._build();

  _$PrecursorCandidateInput._({
    this.name,
    required this.kind,
    required this.antecedent,
    required this.consequent,
    this.spatial,
    this.lagMin,
    required this.lagMax,
    this.regionCodes,
  }) : super._();
  @override
  PrecursorCandidateInput rebuild(
    void Function(PrecursorCandidateInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PrecursorCandidateInputBuilder toBuilder() =>
      PrecursorCandidateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorCandidateInput &&
        name == other.name &&
        kind == other.kind &&
        antecedent == other.antecedent &&
        consequent == other.consequent &&
        spatial == other.spatial &&
        lagMin == other.lagMin &&
        lagMax == other.lagMax &&
        regionCodes == other.regionCodes;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorCandidateInput')
          ..add('name', name)
          ..add('kind', kind)
          ..add('antecedent', antecedent)
          ..add('consequent', consequent)
          ..add('spatial', spatial)
          ..add('lagMin', lagMin)
          ..add('lagMax', lagMax)
          ..add('regionCodes', regionCodes))
        .toString();
  }
}

class PrecursorCandidateInputBuilder
    implements
        Builder<PrecursorCandidateInput, PrecursorCandidateInputBuilder> {
  _$PrecursorCandidateInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PrecursorCandidateInputKindEnum? _kind;
  PrecursorCandidateInputKindEnum? get kind => _$this._kind;
  set kind(PrecursorCandidateInputKindEnum? kind) => _$this._kind = kind;

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

  PrecursorCandidateInputBuilder() {
    PrecursorCandidateInput._defaults(this);
  }

  PrecursorCandidateInputBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorCandidateInput other) {
    _$v = other as _$PrecursorCandidateInput;
  }

  @override
  void update(void Function(PrecursorCandidateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorCandidateInput build() => _build();

  _$PrecursorCandidateInput _build() {
    _$PrecursorCandidateInput _$result;
    try {
      _$result =
          _$v ??
          _$PrecursorCandidateInput._(
            name: name,
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'PrecursorCandidateInput',
              'kind',
            ),
            antecedent: antecedent.build(),
            consequent: consequent.build(),
            spatial: _spatial?.build(),
            lagMin: lagMin,
            lagMax: BuiltValueNullFieldError.checkNotNull(
              lagMax,
              r'PrecursorCandidateInput',
              'lagMax',
            ),
            regionCodes: _regionCodes?.build(),
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
          r'PrecursorCandidateInput',
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
