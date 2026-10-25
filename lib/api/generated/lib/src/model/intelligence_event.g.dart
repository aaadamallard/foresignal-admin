// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intelligence_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntelligenceEventTypeEnum _$intelligenceEventTypeEnum_maritimeDisruption =
    const IntelligenceEventTypeEnum._('maritimeDisruption');
const IntelligenceEventTypeEnum _$intelligenceEventTypeEnum_aviationAnomaly =
    const IntelligenceEventTypeEnum._('aviationAnomaly');
const IntelligenceEventTypeEnum
_$intelligenceEventTypeEnum_infrastructureDisruption =
    const IntelligenceEventTypeEnum._('infrastructureDisruption');
const IntelligenceEventTypeEnum _$intelligenceEventTypeEnum_weatherImpact =
    const IntelligenceEventTypeEnum._('weatherImpact');
const IntelligenceEventTypeEnum _$intelligenceEventTypeEnum_seismic =
    const IntelligenceEventTypeEnum._('seismic');
const IntelligenceEventTypeEnum _$intelligenceEventTypeEnum_custom =
    const IntelligenceEventTypeEnum._('custom');
const IntelligenceEventTypeEnum
_$intelligenceEventTypeEnum_unknownDefaultOpenApi =
    const IntelligenceEventTypeEnum._('unknownDefaultOpenApi');

IntelligenceEventTypeEnum _$intelligenceEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'maritimeDisruption':
      return _$intelligenceEventTypeEnum_maritimeDisruption;
    case 'aviationAnomaly':
      return _$intelligenceEventTypeEnum_aviationAnomaly;
    case 'infrastructureDisruption':
      return _$intelligenceEventTypeEnum_infrastructureDisruption;
    case 'weatherImpact':
      return _$intelligenceEventTypeEnum_weatherImpact;
    case 'seismic':
      return _$intelligenceEventTypeEnum_seismic;
    case 'custom':
      return _$intelligenceEventTypeEnum_custom;
    case 'unknownDefaultOpenApi':
      return _$intelligenceEventTypeEnum_unknownDefaultOpenApi;
    default:
      return _$intelligenceEventTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IntelligenceEventTypeEnum> _$intelligenceEventTypeEnumValues =
    BuiltSet<IntelligenceEventTypeEnum>(const <IntelligenceEventTypeEnum>[
      _$intelligenceEventTypeEnum_maritimeDisruption,
      _$intelligenceEventTypeEnum_aviationAnomaly,
      _$intelligenceEventTypeEnum_infrastructureDisruption,
      _$intelligenceEventTypeEnum_weatherImpact,
      _$intelligenceEventTypeEnum_seismic,
      _$intelligenceEventTypeEnum_custom,
      _$intelligenceEventTypeEnum_unknownDefaultOpenApi,
    ]);

const IntelligenceEventStatusEnum _$intelligenceEventStatusEnum_emerging =
    const IntelligenceEventStatusEnum._('emerging');
const IntelligenceEventStatusEnum _$intelligenceEventStatusEnum_active =
    const IntelligenceEventStatusEnum._('active');
const IntelligenceEventStatusEnum _$intelligenceEventStatusEnum_resolved =
    const IntelligenceEventStatusEnum._('resolved');
const IntelligenceEventStatusEnum _$intelligenceEventStatusEnum_dismissed =
    const IntelligenceEventStatusEnum._('dismissed');
const IntelligenceEventStatusEnum
_$intelligenceEventStatusEnum_unknownDefaultOpenApi =
    const IntelligenceEventStatusEnum._('unknownDefaultOpenApi');

IntelligenceEventStatusEnum _$intelligenceEventStatusEnumValueOf(String name) {
  switch (name) {
    case 'emerging':
      return _$intelligenceEventStatusEnum_emerging;
    case 'active':
      return _$intelligenceEventStatusEnum_active;
    case 'resolved':
      return _$intelligenceEventStatusEnum_resolved;
    case 'dismissed':
      return _$intelligenceEventStatusEnum_dismissed;
    case 'unknownDefaultOpenApi':
      return _$intelligenceEventStatusEnum_unknownDefaultOpenApi;
    default:
      return _$intelligenceEventStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IntelligenceEventStatusEnum>
_$intelligenceEventStatusEnumValues =
    BuiltSet<IntelligenceEventStatusEnum>(const <IntelligenceEventStatusEnum>[
      _$intelligenceEventStatusEnum_emerging,
      _$intelligenceEventStatusEnum_active,
      _$intelligenceEventStatusEnum_resolved,
      _$intelligenceEventStatusEnum_dismissed,
      _$intelligenceEventStatusEnum_unknownDefaultOpenApi,
    ]);

const IntelligenceEventOriginEnum _$intelligenceEventOriginEnum_recipe =
    const IntelligenceEventOriginEnum._('recipe');
const IntelligenceEventOriginEnum _$intelligenceEventOriginEnum_analyst =
    const IntelligenceEventOriginEnum._('analyst');
const IntelligenceEventOriginEnum _$intelligenceEventOriginEnum_agent =
    const IntelligenceEventOriginEnum._('agent');
const IntelligenceEventOriginEnum _$intelligenceEventOriginEnum_operator_ =
    const IntelligenceEventOriginEnum._('operator_');
const IntelligenceEventOriginEnum
_$intelligenceEventOriginEnum_unknownDefaultOpenApi =
    const IntelligenceEventOriginEnum._('unknownDefaultOpenApi');

IntelligenceEventOriginEnum _$intelligenceEventOriginEnumValueOf(String name) {
  switch (name) {
    case 'recipe':
      return _$intelligenceEventOriginEnum_recipe;
    case 'analyst':
      return _$intelligenceEventOriginEnum_analyst;
    case 'agent':
      return _$intelligenceEventOriginEnum_agent;
    case 'operator_':
      return _$intelligenceEventOriginEnum_operator_;
    case 'unknownDefaultOpenApi':
      return _$intelligenceEventOriginEnum_unknownDefaultOpenApi;
    default:
      return _$intelligenceEventOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IntelligenceEventOriginEnum>
_$intelligenceEventOriginEnumValues =
    BuiltSet<IntelligenceEventOriginEnum>(const <IntelligenceEventOriginEnum>[
      _$intelligenceEventOriginEnum_recipe,
      _$intelligenceEventOriginEnum_analyst,
      _$intelligenceEventOriginEnum_agent,
      _$intelligenceEventOriginEnum_operator_,
      _$intelligenceEventOriginEnum_unknownDefaultOpenApi,
    ]);

Serializer<IntelligenceEventTypeEnum> _$intelligenceEventTypeEnumSerializer =
    _$IntelligenceEventTypeEnumSerializer();
Serializer<IntelligenceEventStatusEnum>
_$intelligenceEventStatusEnumSerializer =
    _$IntelligenceEventStatusEnumSerializer();
Serializer<IntelligenceEventOriginEnum>
_$intelligenceEventOriginEnumSerializer =
    _$IntelligenceEventOriginEnumSerializer();

class _$IntelligenceEventTypeEnumSerializer
    implements PrimitiveSerializer<IntelligenceEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'maritimeDisruption': 'maritime-disruption',
    'aviationAnomaly': 'aviation-anomaly',
    'infrastructureDisruption': 'infrastructure-disruption',
    'weatherImpact': 'weather-impact',
    'seismic': 'seismic',
    'custom': 'custom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'maritime-disruption': 'maritimeDisruption',
    'aviation-anomaly': 'aviationAnomaly',
    'infrastructure-disruption': 'infrastructureDisruption',
    'weather-impact': 'weatherImpact',
    'seismic': 'seismic',
    'custom': 'custom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IntelligenceEventTypeEnum];
  @override
  final String wireName = 'IntelligenceEventTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelligenceEventTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelligenceEventTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelligenceEventTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelligenceEventStatusEnumSerializer
    implements PrimitiveSerializer<IntelligenceEventStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'emerging': 'emerging',
    'active': 'active',
    'resolved': 'resolved',
    'dismissed': 'dismissed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'emerging': 'emerging',
    'active': 'active',
    'resolved': 'resolved',
    'dismissed': 'dismissed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IntelligenceEventStatusEnum];
  @override
  final String wireName = 'IntelligenceEventStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelligenceEventStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelligenceEventStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelligenceEventStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelligenceEventOriginEnumSerializer
    implements PrimitiveSerializer<IntelligenceEventOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'recipe': 'recipe',
    'analyst': 'analyst',
    'agent': 'agent',
    'operator_': 'operator',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'recipe': 'recipe',
    'analyst': 'analyst',
    'agent': 'agent',
    'operator': 'operator_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IntelligenceEventOriginEnum];
  @override
  final String wireName = 'IntelligenceEventOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelligenceEventOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelligenceEventOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelligenceEventOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelligenceEvent extends IntelligenceEvent {
  @override
  final String id;
  @override
  final IntelligenceEventTypeEnum type;
  @override
  final String title;
  @override
  final IntelligenceEventStatusEnum status;
  @override
  final Severity severity;
  @override
  final bool? severityOverridden;
  @override
  final bool? private;
  @override
  final IntelligenceEventOriginEnum origin;
  @override
  final String? recipeId;
  @override
  final int? recipeVersion;
  @override
  final DetectorRef detector;
  @override
  final String? mergedInto;
  @override
  final String? notes;
  @override
  final int version;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final IntelligenceEventEvidence evidence;
  @override
  final IntelligenceEventInference inference;
  @override
  final IntelligenceEventSpeculation speculation;
  @override
  final IntelligenceEventContext? context;
  @override
  final Exposure? exposure;
  @override
  final BuiltList<IntelEventLogEntry>? log;
  @override
  final String? manifestId;

  factory _$IntelligenceEvent([
    void Function(IntelligenceEventBuilder)? updates,
  ]) => (IntelligenceEventBuilder()..update(updates))._build();

  _$IntelligenceEvent._({
    required this.id,
    required this.type,
    required this.title,
    required this.status,
    required this.severity,
    this.severityOverridden,
    this.private,
    required this.origin,
    this.recipeId,
    this.recipeVersion,
    required this.detector,
    this.mergedInto,
    this.notes,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.evidence,
    required this.inference,
    required this.speculation,
    this.context,
    this.exposure,
    this.log,
    this.manifestId,
  }) : super._();
  @override
  IntelligenceEvent rebuild(void Function(IntelligenceEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelligenceEventBuilder toBuilder() =>
      IntelligenceEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelligenceEvent &&
        id == other.id &&
        type == other.type &&
        title == other.title &&
        status == other.status &&
        severity == other.severity &&
        severityOverridden == other.severityOverridden &&
        private == other.private &&
        origin == other.origin &&
        recipeId == other.recipeId &&
        recipeVersion == other.recipeVersion &&
        detector == other.detector &&
        mergedInto == other.mergedInto &&
        notes == other.notes &&
        version == other.version &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        evidence == other.evidence &&
        inference == other.inference &&
        speculation == other.speculation &&
        context == other.context &&
        exposure == other.exposure &&
        log == other.log &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, severityOverridden.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, recipeId.hashCode);
    _$hash = $jc(_$hash, recipeVersion.hashCode);
    _$hash = $jc(_$hash, detector.hashCode);
    _$hash = $jc(_$hash, mergedInto.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, evidence.hashCode);
    _$hash = $jc(_$hash, inference.hashCode);
    _$hash = $jc(_$hash, speculation.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, exposure.hashCode);
    _$hash = $jc(_$hash, log.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelligenceEvent')
          ..add('id', id)
          ..add('type', type)
          ..add('title', title)
          ..add('status', status)
          ..add('severity', severity)
          ..add('severityOverridden', severityOverridden)
          ..add('private', private)
          ..add('origin', origin)
          ..add('recipeId', recipeId)
          ..add('recipeVersion', recipeVersion)
          ..add('detector', detector)
          ..add('mergedInto', mergedInto)
          ..add('notes', notes)
          ..add('version', version)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('evidence', evidence)
          ..add('inference', inference)
          ..add('speculation', speculation)
          ..add('context', context)
          ..add('exposure', exposure)
          ..add('log', log)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class IntelligenceEventBuilder
    implements Builder<IntelligenceEvent, IntelligenceEventBuilder> {
  _$IntelligenceEvent? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  IntelligenceEventTypeEnum? _type;
  IntelligenceEventTypeEnum? get type => _$this._type;
  set type(IntelligenceEventTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  IntelligenceEventStatusEnum? _status;
  IntelligenceEventStatusEnum? get status => _$this._status;
  set status(IntelligenceEventStatusEnum? status) => _$this._status = status;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  bool? _severityOverridden;
  bool? get severityOverridden => _$this._severityOverridden;
  set severityOverridden(bool? severityOverridden) =>
      _$this._severityOverridden = severityOverridden;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  IntelligenceEventOriginEnum? _origin;
  IntelligenceEventOriginEnum? get origin => _$this._origin;
  set origin(IntelligenceEventOriginEnum? origin) => _$this._origin = origin;

  String? _recipeId;
  String? get recipeId => _$this._recipeId;
  set recipeId(String? recipeId) => _$this._recipeId = recipeId;

  int? _recipeVersion;
  int? get recipeVersion => _$this._recipeVersion;
  set recipeVersion(int? recipeVersion) =>
      _$this._recipeVersion = recipeVersion;

  DetectorRefBuilder? _detector;
  DetectorRefBuilder get detector => _$this._detector ??= DetectorRefBuilder();
  set detector(DetectorRefBuilder? detector) => _$this._detector = detector;

  String? _mergedInto;
  String? get mergedInto => _$this._mergedInto;
  set mergedInto(String? mergedInto) => _$this._mergedInto = mergedInto;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  IntelligenceEventEvidenceBuilder? _evidence;
  IntelligenceEventEvidenceBuilder get evidence =>
      _$this._evidence ??= IntelligenceEventEvidenceBuilder();
  set evidence(IntelligenceEventEvidenceBuilder? evidence) =>
      _$this._evidence = evidence;

  IntelligenceEventInferenceBuilder? _inference;
  IntelligenceEventInferenceBuilder get inference =>
      _$this._inference ??= IntelligenceEventInferenceBuilder();
  set inference(IntelligenceEventInferenceBuilder? inference) =>
      _$this._inference = inference;

  IntelligenceEventSpeculationBuilder? _speculation;
  IntelligenceEventSpeculationBuilder get speculation =>
      _$this._speculation ??= IntelligenceEventSpeculationBuilder();
  set speculation(IntelligenceEventSpeculationBuilder? speculation) =>
      _$this._speculation = speculation;

  IntelligenceEventContextBuilder? _context;
  IntelligenceEventContextBuilder get context =>
      _$this._context ??= IntelligenceEventContextBuilder();
  set context(IntelligenceEventContextBuilder? context) =>
      _$this._context = context;

  ExposureBuilder? _exposure;
  ExposureBuilder get exposure => _$this._exposure ??= ExposureBuilder();
  set exposure(ExposureBuilder? exposure) => _$this._exposure = exposure;

  ListBuilder<IntelEventLogEntry>? _log;
  ListBuilder<IntelEventLogEntry> get log =>
      _$this._log ??= ListBuilder<IntelEventLogEntry>();
  set log(ListBuilder<IntelEventLogEntry>? log) => _$this._log = log;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  IntelligenceEventBuilder() {
    IntelligenceEvent._defaults(this);
  }

  IntelligenceEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _title = $v.title;
      _status = $v.status;
      _severity = $v.severity;
      _severityOverridden = $v.severityOverridden;
      _private = $v.private;
      _origin = $v.origin;
      _recipeId = $v.recipeId;
      _recipeVersion = $v.recipeVersion;
      _detector = $v.detector.toBuilder();
      _mergedInto = $v.mergedInto;
      _notes = $v.notes;
      _version = $v.version;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _evidence = $v.evidence.toBuilder();
      _inference = $v.inference.toBuilder();
      _speculation = $v.speculation.toBuilder();
      _context = $v.context?.toBuilder();
      _exposure = $v.exposure?.toBuilder();
      _log = $v.log?.toBuilder();
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelligenceEvent other) {
    _$v = other as _$IntelligenceEvent;
  }

  @override
  void update(void Function(IntelligenceEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelligenceEvent build() => _build();

  _$IntelligenceEvent _build() {
    _$IntelligenceEvent _$result;
    try {
      _$result =
          _$v ??
          _$IntelligenceEvent._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'IntelligenceEvent',
              'id',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'IntelligenceEvent',
              'type',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'IntelligenceEvent',
              'title',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'IntelligenceEvent',
              'status',
            ),
            severity: BuiltValueNullFieldError.checkNotNull(
              severity,
              r'IntelligenceEvent',
              'severity',
            ),
            severityOverridden: severityOverridden,
            private: private,
            origin: BuiltValueNullFieldError.checkNotNull(
              origin,
              r'IntelligenceEvent',
              'origin',
            ),
            recipeId: recipeId,
            recipeVersion: recipeVersion,
            detector: detector.build(),
            mergedInto: mergedInto,
            notes: notes,
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'IntelligenceEvent',
              'version',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'IntelligenceEvent',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'IntelligenceEvent',
              'updatedAt',
            ),
            evidence: evidence.build(),
            inference: inference.build(),
            speculation: speculation.build(),
            context: _context?.build(),
            exposure: _exposure?.build(),
            log: _log?.build(),
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        detector.build();

        _$failedField = 'evidence';
        evidence.build();
        _$failedField = 'inference';
        inference.build();
        _$failedField = 'speculation';
        speculation.build();
        _$failedField = 'context';
        _context?.build();
        _$failedField = 'exposure';
        _exposure?.build();
        _$failedField = 'log';
        _log?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelligenceEvent',
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
