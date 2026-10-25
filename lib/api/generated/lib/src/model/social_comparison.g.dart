// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_comparison.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialComparisonStatusEnum _$socialComparisonStatusEnum_pending =
    const SocialComparisonStatusEnum._('pending');
const SocialComparisonStatusEnum _$socialComparisonStatusEnum_corroborated =
    const SocialComparisonStatusEnum._('corroborated');
const SocialComparisonStatusEnum _$socialComparisonStatusEnum_unobserved =
    const SocialComparisonStatusEnum._('unobserved');
const SocialComparisonStatusEnum _$socialComparisonStatusEnum_contradicted =
    const SocialComparisonStatusEnum._('contradicted');
const SocialComparisonStatusEnum
_$socialComparisonStatusEnum_insufficientCoverage =
    const SocialComparisonStatusEnum._('insufficientCoverage');
const SocialComparisonStatusEnum
_$socialComparisonStatusEnum_unknownDefaultOpenApi =
    const SocialComparisonStatusEnum._('unknownDefaultOpenApi');

SocialComparisonStatusEnum _$socialComparisonStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$socialComparisonStatusEnum_pending;
    case 'corroborated':
      return _$socialComparisonStatusEnum_corroborated;
    case 'unobserved':
      return _$socialComparisonStatusEnum_unobserved;
    case 'contradicted':
      return _$socialComparisonStatusEnum_contradicted;
    case 'insufficientCoverage':
      return _$socialComparisonStatusEnum_insufficientCoverage;
    case 'unknownDefaultOpenApi':
      return _$socialComparisonStatusEnum_unknownDefaultOpenApi;
    default:
      return _$socialComparisonStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialComparisonStatusEnum> _$socialComparisonStatusEnumValues =
    BuiltSet<SocialComparisonStatusEnum>(const <SocialComparisonStatusEnum>[
      _$socialComparisonStatusEnum_pending,
      _$socialComparisonStatusEnum_corroborated,
      _$socialComparisonStatusEnum_unobserved,
      _$socialComparisonStatusEnum_contradicted,
      _$socialComparisonStatusEnum_insufficientCoverage,
      _$socialComparisonStatusEnum_unknownDefaultOpenApi,
    ]);

const SocialComparisonFoundByEnum _$socialComparisonFoundByEnum_organic =
    const SocialComparisonFoundByEnum._('organic');
const SocialComparisonFoundByEnum _$socialComparisonFoundByEnum_cue =
    const SocialComparisonFoundByEnum._('cue');
const SocialComparisonFoundByEnum
_$socialComparisonFoundByEnum_unknownDefaultOpenApi =
    const SocialComparisonFoundByEnum._('unknownDefaultOpenApi');

SocialComparisonFoundByEnum _$socialComparisonFoundByEnumValueOf(String name) {
  switch (name) {
    case 'organic':
      return _$socialComparisonFoundByEnum_organic;
    case 'cue':
      return _$socialComparisonFoundByEnum_cue;
    case 'unknownDefaultOpenApi':
      return _$socialComparisonFoundByEnum_unknownDefaultOpenApi;
    default:
      return _$socialComparisonFoundByEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialComparisonFoundByEnum>
_$socialComparisonFoundByEnumValues =
    BuiltSet<SocialComparisonFoundByEnum>(const <SocialComparisonFoundByEnum>[
      _$socialComparisonFoundByEnum_organic,
      _$socialComparisonFoundByEnum_cue,
      _$socialComparisonFoundByEnum_unknownDefaultOpenApi,
    ]);

Serializer<SocialComparisonStatusEnum> _$socialComparisonStatusEnumSerializer =
    _$SocialComparisonStatusEnumSerializer();
Serializer<SocialComparisonFoundByEnum>
_$socialComparisonFoundByEnumSerializer =
    _$SocialComparisonFoundByEnumSerializer();

class _$SocialComparisonStatusEnumSerializer
    implements PrimitiveSerializer<SocialComparisonStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficientCoverage': 'insufficient-coverage',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficient-coverage': 'insufficientCoverage',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialComparisonStatusEnum];
  @override
  final String wireName = 'SocialComparisonStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialComparisonStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialComparisonStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialComparisonStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialComparisonFoundByEnumSerializer
    implements PrimitiveSerializer<SocialComparisonFoundByEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'organic': 'organic',
    'cue': 'cue',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'organic': 'organic',
    'cue': 'cue',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialComparisonFoundByEnum];
  @override
  final String wireName = 'SocialComparisonFoundByEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialComparisonFoundByEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialComparisonFoundByEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialComparisonFoundByEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialComparison extends SocialComparison {
  @override
  final String id;
  @override
  final String ref;
  @override
  final String claimId;
  @override
  final String narrativeId;
  @override
  final String signalFamily;
  @override
  final ClaimPlace place;
  @override
  final TimeRange window;
  @override
  final SocialComparisonStatusEnum status;
  @override
  final BuiltList<SocialPhysicalEvidence> physicalEvidence;
  @override
  final SocialComparisonDetectability detectability;
  @override
  final SocialLeadTimes leadTimes;
  @override
  final SocialComparisonContradiction? contradiction;
  @override
  final SocialComparisonFoundByEnum foundBy;
  @override
  final String? cueId;
  @override
  final String? questionId;
  @override
  final int revision;
  @override
  final DateTime? finalAt;
  @override
  final DetectorRef comparator;
  @override
  final String manifestId;
  @override
  final DateTime evaluatedAt;
  @override
  final BuiltList<SocialComparisonRevision>? revisions;
  @override
  final BuiltList<Caveat>? caveats;

  factory _$SocialComparison([
    void Function(SocialComparisonBuilder)? updates,
  ]) => (SocialComparisonBuilder()..update(updates))._build();

  _$SocialComparison._({
    required this.id,
    required this.ref,
    required this.claimId,
    required this.narrativeId,
    required this.signalFamily,
    required this.place,
    required this.window,
    required this.status,
    required this.physicalEvidence,
    required this.detectability,
    required this.leadTimes,
    this.contradiction,
    required this.foundBy,
    this.cueId,
    this.questionId,
    required this.revision,
    this.finalAt,
    required this.comparator,
    required this.manifestId,
    required this.evaluatedAt,
    this.revisions,
    this.caveats,
  }) : super._();
  @override
  SocialComparison rebuild(void Function(SocialComparisonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialComparisonBuilder toBuilder() =>
      SocialComparisonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialComparison &&
        id == other.id &&
        ref == other.ref &&
        claimId == other.claimId &&
        narrativeId == other.narrativeId &&
        signalFamily == other.signalFamily &&
        place == other.place &&
        window == other.window &&
        status == other.status &&
        physicalEvidence == other.physicalEvidence &&
        detectability == other.detectability &&
        leadTimes == other.leadTimes &&
        contradiction == other.contradiction &&
        foundBy == other.foundBy &&
        cueId == other.cueId &&
        questionId == other.questionId &&
        revision == other.revision &&
        finalAt == other.finalAt &&
        comparator == other.comparator &&
        manifestId == other.manifestId &&
        evaluatedAt == other.evaluatedAt &&
        revisions == other.revisions &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, claimId.hashCode);
    _$hash = $jc(_$hash, narrativeId.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, physicalEvidence.hashCode);
    _$hash = $jc(_$hash, detectability.hashCode);
    _$hash = $jc(_$hash, leadTimes.hashCode);
    _$hash = $jc(_$hash, contradiction.hashCode);
    _$hash = $jc(_$hash, foundBy.hashCode);
    _$hash = $jc(_$hash, cueId.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, revision.hashCode);
    _$hash = $jc(_$hash, finalAt.hashCode);
    _$hash = $jc(_$hash, comparator.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, evaluatedAt.hashCode);
    _$hash = $jc(_$hash, revisions.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialComparison')
          ..add('id', id)
          ..add('ref', ref)
          ..add('claimId', claimId)
          ..add('narrativeId', narrativeId)
          ..add('signalFamily', signalFamily)
          ..add('place', place)
          ..add('window', window)
          ..add('status', status)
          ..add('physicalEvidence', physicalEvidence)
          ..add('detectability', detectability)
          ..add('leadTimes', leadTimes)
          ..add('contradiction', contradiction)
          ..add('foundBy', foundBy)
          ..add('cueId', cueId)
          ..add('questionId', questionId)
          ..add('revision', revision)
          ..add('finalAt', finalAt)
          ..add('comparator', comparator)
          ..add('manifestId', manifestId)
          ..add('evaluatedAt', evaluatedAt)
          ..add('revisions', revisions)
          ..add('caveats', caveats))
        .toString();
  }
}

class SocialComparisonBuilder
    implements Builder<SocialComparison, SocialComparisonBuilder> {
  _$SocialComparison? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _claimId;
  String? get claimId => _$this._claimId;
  set claimId(String? claimId) => _$this._claimId = claimId;

  String? _narrativeId;
  String? get narrativeId => _$this._narrativeId;
  set narrativeId(String? narrativeId) => _$this._narrativeId = narrativeId;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  ClaimPlaceBuilder? _place;
  ClaimPlaceBuilder get place => _$this._place ??= ClaimPlaceBuilder();
  set place(ClaimPlaceBuilder? place) => _$this._place = place;

  TimeRangeBuilder? _window;
  TimeRangeBuilder get window => _$this._window ??= TimeRangeBuilder();
  set window(TimeRangeBuilder? window) => _$this._window = window;

  SocialComparisonStatusEnum? _status;
  SocialComparisonStatusEnum? get status => _$this._status;
  set status(SocialComparisonStatusEnum? status) => _$this._status = status;

  ListBuilder<SocialPhysicalEvidence>? _physicalEvidence;
  ListBuilder<SocialPhysicalEvidence> get physicalEvidence =>
      _$this._physicalEvidence ??= ListBuilder<SocialPhysicalEvidence>();
  set physicalEvidence(ListBuilder<SocialPhysicalEvidence>? physicalEvidence) =>
      _$this._physicalEvidence = physicalEvidence;

  SocialComparisonDetectabilityBuilder? _detectability;
  SocialComparisonDetectabilityBuilder get detectability =>
      _$this._detectability ??= SocialComparisonDetectabilityBuilder();
  set detectability(SocialComparisonDetectabilityBuilder? detectability) =>
      _$this._detectability = detectability;

  SocialLeadTimesBuilder? _leadTimes;
  SocialLeadTimesBuilder get leadTimes =>
      _$this._leadTimes ??= SocialLeadTimesBuilder();
  set leadTimes(SocialLeadTimesBuilder? leadTimes) =>
      _$this._leadTimes = leadTimes;

  SocialComparisonContradictionBuilder? _contradiction;
  SocialComparisonContradictionBuilder get contradiction =>
      _$this._contradiction ??= SocialComparisonContradictionBuilder();
  set contradiction(SocialComparisonContradictionBuilder? contradiction) =>
      _$this._contradiction = contradiction;

  SocialComparisonFoundByEnum? _foundBy;
  SocialComparisonFoundByEnum? get foundBy => _$this._foundBy;
  set foundBy(SocialComparisonFoundByEnum? foundBy) =>
      _$this._foundBy = foundBy;

  String? _cueId;
  String? get cueId => _$this._cueId;
  set cueId(String? cueId) => _$this._cueId = cueId;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  int? _revision;
  int? get revision => _$this._revision;
  set revision(int? revision) => _$this._revision = revision;

  DateTime? _finalAt;
  DateTime? get finalAt => _$this._finalAt;
  set finalAt(DateTime? finalAt) => _$this._finalAt = finalAt;

  DetectorRefBuilder? _comparator;
  DetectorRefBuilder get comparator =>
      _$this._comparator ??= DetectorRefBuilder();
  set comparator(DetectorRefBuilder? comparator) =>
      _$this._comparator = comparator;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  DateTime? _evaluatedAt;
  DateTime? get evaluatedAt => _$this._evaluatedAt;
  set evaluatedAt(DateTime? evaluatedAt) => _$this._evaluatedAt = evaluatedAt;

  ListBuilder<SocialComparisonRevision>? _revisions;
  ListBuilder<SocialComparisonRevision> get revisions =>
      _$this._revisions ??= ListBuilder<SocialComparisonRevision>();
  set revisions(ListBuilder<SocialComparisonRevision>? revisions) =>
      _$this._revisions = revisions;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  SocialComparisonBuilder() {
    SocialComparison._defaults(this);
  }

  SocialComparisonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _claimId = $v.claimId;
      _narrativeId = $v.narrativeId;
      _signalFamily = $v.signalFamily;
      _place = $v.place.toBuilder();
      _window = $v.window.toBuilder();
      _status = $v.status;
      _physicalEvidence = $v.physicalEvidence.toBuilder();
      _detectability = $v.detectability.toBuilder();
      _leadTimes = $v.leadTimes.toBuilder();
      _contradiction = $v.contradiction?.toBuilder();
      _foundBy = $v.foundBy;
      _cueId = $v.cueId;
      _questionId = $v.questionId;
      _revision = $v.revision;
      _finalAt = $v.finalAt;
      _comparator = $v.comparator.toBuilder();
      _manifestId = $v.manifestId;
      _evaluatedAt = $v.evaluatedAt;
      _revisions = $v.revisions?.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialComparison other) {
    _$v = other as _$SocialComparison;
  }

  @override
  void update(void Function(SocialComparisonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialComparison build() => _build();

  _$SocialComparison _build() {
    _$SocialComparison _$result;
    try {
      _$result =
          _$v ??
          _$SocialComparison._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'SocialComparison',
              'id',
            ),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'SocialComparison',
              'ref',
            ),
            claimId: BuiltValueNullFieldError.checkNotNull(
              claimId,
              r'SocialComparison',
              'claimId',
            ),
            narrativeId: BuiltValueNullFieldError.checkNotNull(
              narrativeId,
              r'SocialComparison',
              'narrativeId',
            ),
            signalFamily: BuiltValueNullFieldError.checkNotNull(
              signalFamily,
              r'SocialComparison',
              'signalFamily',
            ),
            place: place.build(),
            window: window.build(),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'SocialComparison',
              'status',
            ),
            physicalEvidence: physicalEvidence.build(),
            detectability: detectability.build(),
            leadTimes: leadTimes.build(),
            contradiction: _contradiction?.build(),
            foundBy: BuiltValueNullFieldError.checkNotNull(
              foundBy,
              r'SocialComparison',
              'foundBy',
            ),
            cueId: cueId,
            questionId: questionId,
            revision: BuiltValueNullFieldError.checkNotNull(
              revision,
              r'SocialComparison',
              'revision',
            ),
            finalAt: finalAt,
            comparator: comparator.build(),
            manifestId: BuiltValueNullFieldError.checkNotNull(
              manifestId,
              r'SocialComparison',
              'manifestId',
            ),
            evaluatedAt: BuiltValueNullFieldError.checkNotNull(
              evaluatedAt,
              r'SocialComparison',
              'evaluatedAt',
            ),
            revisions: _revisions?.build(),
            caveats: _caveats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'place';
        place.build();
        _$failedField = 'window';
        window.build();

        _$failedField = 'physicalEvidence';
        physicalEvidence.build();
        _$failedField = 'detectability';
        detectability.build();
        _$failedField = 'leadTimes';
        leadTimes.build();
        _$failedField = 'contradiction';
        _contradiction?.build();

        _$failedField = 'comparator';
        comparator.build();

        _$failedField = 'revisions';
        _revisions?.build();
        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SocialComparison',
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
