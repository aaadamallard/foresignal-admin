// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projected_impact.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectedImpactStatusEnum _$projectedImpactStatusEnum_active =
    const ProjectedImpactStatusEnum._('active');
const ProjectedImpactStatusEnum _$projectedImpactStatusEnum_superseded =
    const ProjectedImpactStatusEnum._('superseded');
const ProjectedImpactStatusEnum
_$projectedImpactStatusEnum_unknownDefaultOpenApi =
    const ProjectedImpactStatusEnum._('unknownDefaultOpenApi');

ProjectedImpactStatusEnum _$projectedImpactStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$projectedImpactStatusEnum_active;
    case 'superseded':
      return _$projectedImpactStatusEnum_superseded;
    case 'unknownDefaultOpenApi':
      return _$projectedImpactStatusEnum_unknownDefaultOpenApi;
    default:
      return _$projectedImpactStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProjectedImpactStatusEnum> _$projectedImpactStatusEnumValues =
    BuiltSet<ProjectedImpactStatusEnum>(const <ProjectedImpactStatusEnum>[
      _$projectedImpactStatusEnum_active,
      _$projectedImpactStatusEnum_superseded,
      _$projectedImpactStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<ProjectedImpactStatusEnum> _$projectedImpactStatusEnumSerializer =
    _$ProjectedImpactStatusEnumSerializer();

class _$ProjectedImpactStatusEnumSerializer
    implements PrimitiveSerializer<ProjectedImpactStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'superseded': 'superseded',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'superseded': 'superseded',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProjectedImpactStatusEnum];
  @override
  final String wireName = 'ProjectedImpactStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProjectedImpactStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProjectedImpactStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProjectedImpactStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProjectedImpact extends ProjectedImpact {
  @override
  final String findingId;
  @override
  final String? ref;
  @override
  final HazardForecast hazard;
  @override
  final String impactFamily;
  @override
  final String admin1;
  @override
  final String? regionClass;
  @override
  final num pHazard;
  @override
  final num pConditional;
  @override
  final num pImpact;
  @override
  final ProjectedImpactInterval interval;
  @override
  final int n;
  @override
  final FindingSeverity? severity;
  @override
  final BuiltList<ProjectedImpactExposedAssetsInner>? exposedAssets;
  @override
  final BuiltList<ProjectedImpactDependencyPathsInner>? dependencyPaths;
  @override
  final BuiltList<ProjectedImpactInputsInner>? inputs;
  @override
  final BuiltList<ProjectedImpactSkippedInner>? skipped;
  @override
  final BuiltList<String> labels;
  @override
  final String? questionId;
  @override
  final ProjectedImpactStatusEnum status;
  @override
  final String? supersededBy;
  @override
  final DateTime detectedAt;
  @override
  final String? manifestId;
  @override
  final String? version;
  @override
  final BuiltList<Caveat>? caveats;
  @override
  final String? admin1Name;
  @override
  final int? lagHours;
  @override
  final ProjectedImpactQuestionWindow? questionWindow;

  factory _$ProjectedImpact([void Function(ProjectedImpactBuilder)? updates]) =>
      (ProjectedImpactBuilder()..update(updates))._build();

  _$ProjectedImpact._({
    required this.findingId,
    this.ref,
    required this.hazard,
    required this.impactFamily,
    required this.admin1,
    this.regionClass,
    required this.pHazard,
    required this.pConditional,
    required this.pImpact,
    required this.interval,
    required this.n,
    this.severity,
    this.exposedAssets,
    this.dependencyPaths,
    this.inputs,
    this.skipped,
    required this.labels,
    this.questionId,
    required this.status,
    this.supersededBy,
    required this.detectedAt,
    this.manifestId,
    this.version,
    this.caveats,
    this.admin1Name,
    this.lagHours,
    this.questionWindow,
  }) : super._();
  @override
  ProjectedImpact rebuild(void Function(ProjectedImpactBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectedImpactBuilder toBuilder() => ProjectedImpactBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectedImpact &&
        findingId == other.findingId &&
        ref == other.ref &&
        hazard == other.hazard &&
        impactFamily == other.impactFamily &&
        admin1 == other.admin1 &&
        regionClass == other.regionClass &&
        pHazard == other.pHazard &&
        pConditional == other.pConditional &&
        pImpact == other.pImpact &&
        interval == other.interval &&
        n == other.n &&
        severity == other.severity &&
        exposedAssets == other.exposedAssets &&
        dependencyPaths == other.dependencyPaths &&
        inputs == other.inputs &&
        skipped == other.skipped &&
        labels == other.labels &&
        questionId == other.questionId &&
        status == other.status &&
        supersededBy == other.supersededBy &&
        detectedAt == other.detectedAt &&
        manifestId == other.manifestId &&
        version == other.version &&
        caveats == other.caveats &&
        admin1Name == other.admin1Name &&
        lagHours == other.lagHours &&
        questionWindow == other.questionWindow;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, findingId.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, hazard.hashCode);
    _$hash = $jc(_$hash, impactFamily.hashCode);
    _$hash = $jc(_$hash, admin1.hashCode);
    _$hash = $jc(_$hash, regionClass.hashCode);
    _$hash = $jc(_$hash, pHazard.hashCode);
    _$hash = $jc(_$hash, pConditional.hashCode);
    _$hash = $jc(_$hash, pImpact.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, exposedAssets.hashCode);
    _$hash = $jc(_$hash, dependencyPaths.hashCode);
    _$hash = $jc(_$hash, inputs.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, labels.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, supersededBy.hashCode);
    _$hash = $jc(_$hash, detectedAt.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, admin1Name.hashCode);
    _$hash = $jc(_$hash, lagHours.hashCode);
    _$hash = $jc(_$hash, questionWindow.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectedImpact')
          ..add('findingId', findingId)
          ..add('ref', ref)
          ..add('hazard', hazard)
          ..add('impactFamily', impactFamily)
          ..add('admin1', admin1)
          ..add('regionClass', regionClass)
          ..add('pHazard', pHazard)
          ..add('pConditional', pConditional)
          ..add('pImpact', pImpact)
          ..add('interval', interval)
          ..add('n', n)
          ..add('severity', severity)
          ..add('exposedAssets', exposedAssets)
          ..add('dependencyPaths', dependencyPaths)
          ..add('inputs', inputs)
          ..add('skipped', skipped)
          ..add('labels', labels)
          ..add('questionId', questionId)
          ..add('status', status)
          ..add('supersededBy', supersededBy)
          ..add('detectedAt', detectedAt)
          ..add('manifestId', manifestId)
          ..add('version', version)
          ..add('caveats', caveats)
          ..add('admin1Name', admin1Name)
          ..add('lagHours', lagHours)
          ..add('questionWindow', questionWindow))
        .toString();
  }
}

class ProjectedImpactBuilder
    implements Builder<ProjectedImpact, ProjectedImpactBuilder> {
  _$ProjectedImpact? _$v;

  String? _findingId;
  String? get findingId => _$this._findingId;
  set findingId(String? findingId) => _$this._findingId = findingId;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  HazardForecastBuilder? _hazard;
  HazardForecastBuilder get hazard =>
      _$this._hazard ??= HazardForecastBuilder();
  set hazard(HazardForecastBuilder? hazard) => _$this._hazard = hazard;

  String? _impactFamily;
  String? get impactFamily => _$this._impactFamily;
  set impactFamily(String? impactFamily) => _$this._impactFamily = impactFamily;

  String? _admin1;
  String? get admin1 => _$this._admin1;
  set admin1(String? admin1) => _$this._admin1 = admin1;

  String? _regionClass;
  String? get regionClass => _$this._regionClass;
  set regionClass(String? regionClass) => _$this._regionClass = regionClass;

  num? _pHazard;
  num? get pHazard => _$this._pHazard;
  set pHazard(num? pHazard) => _$this._pHazard = pHazard;

  num? _pConditional;
  num? get pConditional => _$this._pConditional;
  set pConditional(num? pConditional) => _$this._pConditional = pConditional;

  num? _pImpact;
  num? get pImpact => _$this._pImpact;
  set pImpact(num? pImpact) => _$this._pImpact = pImpact;

  ProjectedImpactIntervalBuilder? _interval;
  ProjectedImpactIntervalBuilder get interval =>
      _$this._interval ??= ProjectedImpactIntervalBuilder();
  set interval(ProjectedImpactIntervalBuilder? interval) =>
      _$this._interval = interval;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  FindingSeverity? _severity;
  FindingSeverity? get severity => _$this._severity;
  set severity(FindingSeverity? severity) => _$this._severity = severity;

  ListBuilder<ProjectedImpactExposedAssetsInner>? _exposedAssets;
  ListBuilder<ProjectedImpactExposedAssetsInner> get exposedAssets =>
      _$this._exposedAssets ??=
          ListBuilder<ProjectedImpactExposedAssetsInner>();
  set exposedAssets(
    ListBuilder<ProjectedImpactExposedAssetsInner>? exposedAssets,
  ) => _$this._exposedAssets = exposedAssets;

  ListBuilder<ProjectedImpactDependencyPathsInner>? _dependencyPaths;
  ListBuilder<ProjectedImpactDependencyPathsInner> get dependencyPaths =>
      _$this._dependencyPaths ??=
          ListBuilder<ProjectedImpactDependencyPathsInner>();
  set dependencyPaths(
    ListBuilder<ProjectedImpactDependencyPathsInner>? dependencyPaths,
  ) => _$this._dependencyPaths = dependencyPaths;

  ListBuilder<ProjectedImpactInputsInner>? _inputs;
  ListBuilder<ProjectedImpactInputsInner> get inputs =>
      _$this._inputs ??= ListBuilder<ProjectedImpactInputsInner>();
  set inputs(ListBuilder<ProjectedImpactInputsInner>? inputs) =>
      _$this._inputs = inputs;

  ListBuilder<ProjectedImpactSkippedInner>? _skipped;
  ListBuilder<ProjectedImpactSkippedInner> get skipped =>
      _$this._skipped ??= ListBuilder<ProjectedImpactSkippedInner>();
  set skipped(ListBuilder<ProjectedImpactSkippedInner>? skipped) =>
      _$this._skipped = skipped;

  ListBuilder<String>? _labels;
  ListBuilder<String> get labels => _$this._labels ??= ListBuilder<String>();
  set labels(ListBuilder<String>? labels) => _$this._labels = labels;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  ProjectedImpactStatusEnum? _status;
  ProjectedImpactStatusEnum? get status => _$this._status;
  set status(ProjectedImpactStatusEnum? status) => _$this._status = status;

  String? _supersededBy;
  String? get supersededBy => _$this._supersededBy;
  set supersededBy(String? supersededBy) => _$this._supersededBy = supersededBy;

  DateTime? _detectedAt;
  DateTime? get detectedAt => _$this._detectedAt;
  set detectedAt(DateTime? detectedAt) => _$this._detectedAt = detectedAt;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  String? _admin1Name;
  String? get admin1Name => _$this._admin1Name;
  set admin1Name(String? admin1Name) => _$this._admin1Name = admin1Name;

  int? _lagHours;
  int? get lagHours => _$this._lagHours;
  set lagHours(int? lagHours) => _$this._lagHours = lagHours;

  ProjectedImpactQuestionWindowBuilder? _questionWindow;
  ProjectedImpactQuestionWindowBuilder get questionWindow =>
      _$this._questionWindow ??= ProjectedImpactQuestionWindowBuilder();
  set questionWindow(ProjectedImpactQuestionWindowBuilder? questionWindow) =>
      _$this._questionWindow = questionWindow;

  ProjectedImpactBuilder() {
    ProjectedImpact._defaults(this);
  }

  ProjectedImpactBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _findingId = $v.findingId;
      _ref = $v.ref;
      _hazard = $v.hazard.toBuilder();
      _impactFamily = $v.impactFamily;
      _admin1 = $v.admin1;
      _regionClass = $v.regionClass;
      _pHazard = $v.pHazard;
      _pConditional = $v.pConditional;
      _pImpact = $v.pImpact;
      _interval = $v.interval.toBuilder();
      _n = $v.n;
      _severity = $v.severity;
      _exposedAssets = $v.exposedAssets?.toBuilder();
      _dependencyPaths = $v.dependencyPaths?.toBuilder();
      _inputs = $v.inputs?.toBuilder();
      _skipped = $v.skipped?.toBuilder();
      _labels = $v.labels.toBuilder();
      _questionId = $v.questionId;
      _status = $v.status;
      _supersededBy = $v.supersededBy;
      _detectedAt = $v.detectedAt;
      _manifestId = $v.manifestId;
      _version = $v.version;
      _caveats = $v.caveats?.toBuilder();
      _admin1Name = $v.admin1Name;
      _lagHours = $v.lagHours;
      _questionWindow = $v.questionWindow?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectedImpact other) {
    _$v = other as _$ProjectedImpact;
  }

  @override
  void update(void Function(ProjectedImpactBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectedImpact build() => _build();

  _$ProjectedImpact _build() {
    _$ProjectedImpact _$result;
    try {
      _$result =
          _$v ??
          _$ProjectedImpact._(
            findingId: BuiltValueNullFieldError.checkNotNull(
              findingId,
              r'ProjectedImpact',
              'findingId',
            ),
            ref: ref,
            hazard: hazard.build(),
            impactFamily: BuiltValueNullFieldError.checkNotNull(
              impactFamily,
              r'ProjectedImpact',
              'impactFamily',
            ),
            admin1: BuiltValueNullFieldError.checkNotNull(
              admin1,
              r'ProjectedImpact',
              'admin1',
            ),
            regionClass: regionClass,
            pHazard: BuiltValueNullFieldError.checkNotNull(
              pHazard,
              r'ProjectedImpact',
              'pHazard',
            ),
            pConditional: BuiltValueNullFieldError.checkNotNull(
              pConditional,
              r'ProjectedImpact',
              'pConditional',
            ),
            pImpact: BuiltValueNullFieldError.checkNotNull(
              pImpact,
              r'ProjectedImpact',
              'pImpact',
            ),
            interval: interval.build(),
            n: BuiltValueNullFieldError.checkNotNull(
              n,
              r'ProjectedImpact',
              'n',
            ),
            severity: severity,
            exposedAssets: _exposedAssets?.build(),
            dependencyPaths: _dependencyPaths?.build(),
            inputs: _inputs?.build(),
            skipped: _skipped?.build(),
            labels: labels.build(),
            questionId: questionId,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ProjectedImpact',
              'status',
            ),
            supersededBy: supersededBy,
            detectedAt: BuiltValueNullFieldError.checkNotNull(
              detectedAt,
              r'ProjectedImpact',
              'detectedAt',
            ),
            manifestId: manifestId,
            version: version,
            caveats: _caveats?.build(),
            admin1Name: admin1Name,
            lagHours: lagHours,
            questionWindow: _questionWindow?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hazard';
        hazard.build();

        _$failedField = 'interval';
        interval.build();

        _$failedField = 'exposedAssets';
        _exposedAssets?.build();
        _$failedField = 'dependencyPaths';
        _dependencyPaths?.build();
        _$failedField = 'inputs';
        _inputs?.build();
        _$failedField = 'skipped';
        _skipped?.build();
        _$failedField = 'labels';
        labels.build();

        _$failedField = 'caveats';
        _caveats?.build();

        _$failedField = 'questionWindow';
        _questionWindow?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProjectedImpact',
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
