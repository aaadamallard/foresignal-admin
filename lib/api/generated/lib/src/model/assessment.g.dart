// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AssessmentCadenceEnum _$assessmentCadenceEnum_daily =
    const AssessmentCadenceEnum._('daily');
const AssessmentCadenceEnum _$assessmentCadenceEnum_weekly =
    const AssessmentCadenceEnum._('weekly');
const AssessmentCadenceEnum _$assessmentCadenceEnum_monthly =
    const AssessmentCadenceEnum._('monthly');
const AssessmentCadenceEnum _$assessmentCadenceEnum_onDemand =
    const AssessmentCadenceEnum._('onDemand');

AssessmentCadenceEnum _$assessmentCadenceEnumValueOf(String name) {
  switch (name) {
    case 'daily':
      return _$assessmentCadenceEnum_daily;
    case 'weekly':
      return _$assessmentCadenceEnum_weekly;
    case 'monthly':
      return _$assessmentCadenceEnum_monthly;
    case 'onDemand':
      return _$assessmentCadenceEnum_onDemand;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AssessmentCadenceEnum> _$assessmentCadenceEnumValues =
    BuiltSet<AssessmentCadenceEnum>(const <AssessmentCadenceEnum>[
  _$assessmentCadenceEnum_daily,
  _$assessmentCadenceEnum_weekly,
  _$assessmentCadenceEnum_monthly,
  _$assessmentCadenceEnum_onDemand,
]);

const AssessmentStatusEnum _$assessmentStatusEnum_ok =
    const AssessmentStatusEnum._('ok');
const AssessmentStatusEnum _$assessmentStatusEnum_partial =
    const AssessmentStatusEnum._('partial');
const AssessmentStatusEnum _$assessmentStatusEnum_digestOnly =
    const AssessmentStatusEnum._('digestOnly');
const AssessmentStatusEnum _$assessmentStatusEnum_failed =
    const AssessmentStatusEnum._('failed');

AssessmentStatusEnum _$assessmentStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$assessmentStatusEnum_ok;
    case 'partial':
      return _$assessmentStatusEnum_partial;
    case 'digestOnly':
      return _$assessmentStatusEnum_digestOnly;
    case 'failed':
      return _$assessmentStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AssessmentStatusEnum> _$assessmentStatusEnumValues =
    BuiltSet<AssessmentStatusEnum>(const <AssessmentStatusEnum>[
  _$assessmentStatusEnum_ok,
  _$assessmentStatusEnum_partial,
  _$assessmentStatusEnum_digestOnly,
  _$assessmentStatusEnum_failed,
]);

const AssessmentEffortEnum _$assessmentEffortEnum_low =
    const AssessmentEffortEnum._('low');
const AssessmentEffortEnum _$assessmentEffortEnum_medium =
    const AssessmentEffortEnum._('medium');
const AssessmentEffortEnum _$assessmentEffortEnum_high =
    const AssessmentEffortEnum._('high');

AssessmentEffortEnum _$assessmentEffortEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$assessmentEffortEnum_low;
    case 'medium':
      return _$assessmentEffortEnum_medium;
    case 'high':
      return _$assessmentEffortEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AssessmentEffortEnum> _$assessmentEffortEnumValues =
    BuiltSet<AssessmentEffortEnum>(const <AssessmentEffortEnum>[
  _$assessmentEffortEnum_low,
  _$assessmentEffortEnum_medium,
  _$assessmentEffortEnum_high,
]);

Serializer<AssessmentCadenceEnum> _$assessmentCadenceEnumSerializer =
    _$AssessmentCadenceEnumSerializer();
Serializer<AssessmentStatusEnum> _$assessmentStatusEnumSerializer =
    _$AssessmentStatusEnumSerializer();
Serializer<AssessmentEffortEnum> _$assessmentEffortEnumSerializer =
    _$AssessmentEffortEnumSerializer();

class _$AssessmentCadenceEnumSerializer
    implements PrimitiveSerializer<AssessmentCadenceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'onDemand': 'on-demand',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'on-demand': 'onDemand',
  };

  @override
  final Iterable<Type> types = const <Type>[AssessmentCadenceEnum];
  @override
  final String wireName = 'AssessmentCadenceEnum';

  @override
  Object serialize(Serializers serializers, AssessmentCadenceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AssessmentCadenceEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AssessmentCadenceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AssessmentStatusEnumSerializer
    implements PrimitiveSerializer<AssessmentStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'partial': 'partial',
    'digestOnly': 'digest-only',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'partial': 'partial',
    'digest-only': 'digestOnly',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[AssessmentStatusEnum];
  @override
  final String wireName = 'AssessmentStatusEnum';

  @override
  Object serialize(Serializers serializers, AssessmentStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AssessmentStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AssessmentStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AssessmentEffortEnumSerializer
    implements PrimitiveSerializer<AssessmentEffortEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
  };

  @override
  final Iterable<Type> types = const <Type>[AssessmentEffortEnum];
  @override
  final String wireName = 'AssessmentEffortEnum';

  @override
  Object serialize(Serializers serializers, AssessmentEffortEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AssessmentEffortEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AssessmentEffortEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Assessment extends Assessment {
  @override
  final String id;
  @override
  final String? ref;
  @override
  final String? cycleId;
  @override
  final String? situationId;
  @override
  final AssessmentCadenceEnum cadence;
  @override
  final DateTime periodStart;
  @override
  final DateTime periodEnd;
  @override
  final String? previousAssessmentId;
  @override
  final AssessmentStatusEnum status;
  @override
  final BuiltList<KeyJudgment> bluf;
  @override
  final String? headline;
  @override
  final BuiltList<AssessmentSectionsInner> sections;
  @override
  final String? markdown;
  @override
  final String? html;
  @override
  final String? packetRef;
  @override
  final BuiltMap<String, CycleRunRolesInner>? roles;
  @override
  final String? model;
  @override
  final AssessmentEffortEnum? effort;
  @override
  final String? manifestId;
  @override
  final BuiltList<AssessmentPromptTemplatesInner>? promptTemplates;
  @override
  final BuiltList<String>? citations;
  @override
  final BuiltList<String>? lintWarnings;
  @override
  final String? footer;
  @override
  final bool private;
  @override
  final DateTime createdAt;
  @override
  final AssessmentCoverage? coverage;
  @override
  final SocialVersusObserved? social;

  factory _$Assessment([void Function(AssessmentBuilder)? updates]) =>
      (AssessmentBuilder()..update(updates))._build();

  _$Assessment._(
      {required this.id,
      this.ref,
      this.cycleId,
      this.situationId,
      required this.cadence,
      required this.periodStart,
      required this.periodEnd,
      this.previousAssessmentId,
      required this.status,
      required this.bluf,
      this.headline,
      required this.sections,
      this.markdown,
      this.html,
      this.packetRef,
      this.roles,
      this.model,
      this.effort,
      this.manifestId,
      this.promptTemplates,
      this.citations,
      this.lintWarnings,
      this.footer,
      required this.private,
      required this.createdAt,
      this.coverage,
      this.social})
      : super._();
  @override
  Assessment rebuild(void Function(AssessmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssessmentBuilder toBuilder() => AssessmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Assessment &&
        id == other.id &&
        ref == other.ref &&
        cycleId == other.cycleId &&
        situationId == other.situationId &&
        cadence == other.cadence &&
        periodStart == other.periodStart &&
        periodEnd == other.periodEnd &&
        previousAssessmentId == other.previousAssessmentId &&
        status == other.status &&
        bluf == other.bluf &&
        headline == other.headline &&
        sections == other.sections &&
        markdown == other.markdown &&
        html == other.html &&
        packetRef == other.packetRef &&
        roles == other.roles &&
        model == other.model &&
        effort == other.effort &&
        manifestId == other.manifestId &&
        promptTemplates == other.promptTemplates &&
        citations == other.citations &&
        lintWarnings == other.lintWarnings &&
        footer == other.footer &&
        private == other.private &&
        createdAt == other.createdAt &&
        coverage == other.coverage &&
        social == other.social;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, cycleId.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, cadence.hashCode);
    _$hash = $jc(_$hash, periodStart.hashCode);
    _$hash = $jc(_$hash, periodEnd.hashCode);
    _$hash = $jc(_$hash, previousAssessmentId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, bluf.hashCode);
    _$hash = $jc(_$hash, headline.hashCode);
    _$hash = $jc(_$hash, sections.hashCode);
    _$hash = $jc(_$hash, markdown.hashCode);
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jc(_$hash, packetRef.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, effort.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, promptTemplates.hashCode);
    _$hash = $jc(_$hash, citations.hashCode);
    _$hash = $jc(_$hash, lintWarnings.hashCode);
    _$hash = $jc(_$hash, footer.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, coverage.hashCode);
    _$hash = $jc(_$hash, social.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Assessment')
          ..add('id', id)
          ..add('ref', ref)
          ..add('cycleId', cycleId)
          ..add('situationId', situationId)
          ..add('cadence', cadence)
          ..add('periodStart', periodStart)
          ..add('periodEnd', periodEnd)
          ..add('previousAssessmentId', previousAssessmentId)
          ..add('status', status)
          ..add('bluf', bluf)
          ..add('headline', headline)
          ..add('sections', sections)
          ..add('markdown', markdown)
          ..add('html', html)
          ..add('packetRef', packetRef)
          ..add('roles', roles)
          ..add('model', model)
          ..add('effort', effort)
          ..add('manifestId', manifestId)
          ..add('promptTemplates', promptTemplates)
          ..add('citations', citations)
          ..add('lintWarnings', lintWarnings)
          ..add('footer', footer)
          ..add('private', private)
          ..add('createdAt', createdAt)
          ..add('coverage', coverage)
          ..add('social', social))
        .toString();
  }
}

class AssessmentBuilder implements Builder<Assessment, AssessmentBuilder> {
  _$Assessment? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _cycleId;
  String? get cycleId => _$this._cycleId;
  set cycleId(String? cycleId) => _$this._cycleId = cycleId;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  AssessmentCadenceEnum? _cadence;
  AssessmentCadenceEnum? get cadence => _$this._cadence;
  set cadence(AssessmentCadenceEnum? cadence) => _$this._cadence = cadence;

  DateTime? _periodStart;
  DateTime? get periodStart => _$this._periodStart;
  set periodStart(DateTime? periodStart) => _$this._periodStart = periodStart;

  DateTime? _periodEnd;
  DateTime? get periodEnd => _$this._periodEnd;
  set periodEnd(DateTime? periodEnd) => _$this._periodEnd = periodEnd;

  String? _previousAssessmentId;
  String? get previousAssessmentId => _$this._previousAssessmentId;
  set previousAssessmentId(String? previousAssessmentId) =>
      _$this._previousAssessmentId = previousAssessmentId;

  AssessmentStatusEnum? _status;
  AssessmentStatusEnum? get status => _$this._status;
  set status(AssessmentStatusEnum? status) => _$this._status = status;

  ListBuilder<KeyJudgment>? _bluf;
  ListBuilder<KeyJudgment> get bluf =>
      _$this._bluf ??= ListBuilder<KeyJudgment>();
  set bluf(ListBuilder<KeyJudgment>? bluf) => _$this._bluf = bluf;

  String? _headline;
  String? get headline => _$this._headline;
  set headline(String? headline) => _$this._headline = headline;

  ListBuilder<AssessmentSectionsInner>? _sections;
  ListBuilder<AssessmentSectionsInner> get sections =>
      _$this._sections ??= ListBuilder<AssessmentSectionsInner>();
  set sections(ListBuilder<AssessmentSectionsInner>? sections) =>
      _$this._sections = sections;

  String? _markdown;
  String? get markdown => _$this._markdown;
  set markdown(String? markdown) => _$this._markdown = markdown;

  String? _html;
  String? get html => _$this._html;
  set html(String? html) => _$this._html = html;

  String? _packetRef;
  String? get packetRef => _$this._packetRef;
  set packetRef(String? packetRef) => _$this._packetRef = packetRef;

  MapBuilder<String, CycleRunRolesInner>? _roles;
  MapBuilder<String, CycleRunRolesInner> get roles =>
      _$this._roles ??= MapBuilder<String, CycleRunRolesInner>();
  set roles(MapBuilder<String, CycleRunRolesInner>? roles) =>
      _$this._roles = roles;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  AssessmentEffortEnum? _effort;
  AssessmentEffortEnum? get effort => _$this._effort;
  set effort(AssessmentEffortEnum? effort) => _$this._effort = effort;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ListBuilder<AssessmentPromptTemplatesInner>? _promptTemplates;
  ListBuilder<AssessmentPromptTemplatesInner> get promptTemplates =>
      _$this._promptTemplates ??= ListBuilder<AssessmentPromptTemplatesInner>();
  set promptTemplates(
          ListBuilder<AssessmentPromptTemplatesInner>? promptTemplates) =>
      _$this._promptTemplates = promptTemplates;

  ListBuilder<String>? _citations;
  ListBuilder<String> get citations =>
      _$this._citations ??= ListBuilder<String>();
  set citations(ListBuilder<String>? citations) =>
      _$this._citations = citations;

  ListBuilder<String>? _lintWarnings;
  ListBuilder<String> get lintWarnings =>
      _$this._lintWarnings ??= ListBuilder<String>();
  set lintWarnings(ListBuilder<String>? lintWarnings) =>
      _$this._lintWarnings = lintWarnings;

  String? _footer;
  String? get footer => _$this._footer;
  set footer(String? footer) => _$this._footer = footer;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  AssessmentCoverageBuilder? _coverage;
  AssessmentCoverageBuilder get coverage =>
      _$this._coverage ??= AssessmentCoverageBuilder();
  set coverage(AssessmentCoverageBuilder? coverage) =>
      _$this._coverage = coverage;

  SocialVersusObservedBuilder? _social;
  SocialVersusObservedBuilder get social =>
      _$this._social ??= SocialVersusObservedBuilder();
  set social(SocialVersusObservedBuilder? social) => _$this._social = social;

  AssessmentBuilder() {
    Assessment._defaults(this);
  }

  AssessmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _cycleId = $v.cycleId;
      _situationId = $v.situationId;
      _cadence = $v.cadence;
      _periodStart = $v.periodStart;
      _periodEnd = $v.periodEnd;
      _previousAssessmentId = $v.previousAssessmentId;
      _status = $v.status;
      _bluf = $v.bluf.toBuilder();
      _headline = $v.headline;
      _sections = $v.sections.toBuilder();
      _markdown = $v.markdown;
      _html = $v.html;
      _packetRef = $v.packetRef;
      _roles = $v.roles?.toBuilder();
      _model = $v.model;
      _effort = $v.effort;
      _manifestId = $v.manifestId;
      _promptTemplates = $v.promptTemplates?.toBuilder();
      _citations = $v.citations?.toBuilder();
      _lintWarnings = $v.lintWarnings?.toBuilder();
      _footer = $v.footer;
      _private = $v.private;
      _createdAt = $v.createdAt;
      _coverage = $v.coverage?.toBuilder();
      _social = $v.social?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Assessment other) {
    _$v = other as _$Assessment;
  }

  @override
  void update(void Function(AssessmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Assessment build() => _build();

  _$Assessment _build() {
    _$Assessment _$result;
    try {
      _$result = _$v ??
          _$Assessment._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Assessment', 'id'),
            ref: ref,
            cycleId: cycleId,
            situationId: situationId,
            cadence: BuiltValueNullFieldError.checkNotNull(
                cadence, r'Assessment', 'cadence'),
            periodStart: BuiltValueNullFieldError.checkNotNull(
                periodStart, r'Assessment', 'periodStart'),
            periodEnd: BuiltValueNullFieldError.checkNotNull(
                periodEnd, r'Assessment', 'periodEnd'),
            previousAssessmentId: previousAssessmentId,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'Assessment', 'status'),
            bluf: bluf.build(),
            headline: headline,
            sections: sections.build(),
            markdown: markdown,
            html: html,
            packetRef: packetRef,
            roles: _roles?.build(),
            model: model,
            effort: effort,
            manifestId: manifestId,
            promptTemplates: _promptTemplates?.build(),
            citations: _citations?.build(),
            lintWarnings: _lintWarnings?.build(),
            footer: footer,
            private: BuiltValueNullFieldError.checkNotNull(
                private, r'Assessment', 'private'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Assessment', 'createdAt'),
            coverage: _coverage?.build(),
            social: _social?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bluf';
        bluf.build();

        _$failedField = 'sections';
        sections.build();

        _$failedField = 'roles';
        _roles?.build();

        _$failedField = 'promptTemplates';
        _promptTemplates?.build();
        _$failedField = 'citations';
        _citations?.build();
        _$failedField = 'lintWarnings';
        _lintWarnings?.build();

        _$failedField = 'coverage';
        _coverage?.build();
        _$failedField = 'social';
        _social?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Assessment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
