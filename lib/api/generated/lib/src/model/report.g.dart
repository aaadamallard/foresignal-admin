// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportStatusEnum _$reportStatusEnum_draft =
    const ReportStatusEnum._('draft');
const ReportStatusEnum _$reportStatusEnum_review =
    const ReportStatusEnum._('review');
const ReportStatusEnum _$reportStatusEnum_published =
    const ReportStatusEnum._('published');
const ReportStatusEnum _$reportStatusEnum_retracted =
    const ReportStatusEnum._('retracted');

ReportStatusEnum _$reportStatusEnumValueOf(String name) {
  switch (name) {
    case 'draft':
      return _$reportStatusEnum_draft;
    case 'review':
      return _$reportStatusEnum_review;
    case 'published':
      return _$reportStatusEnum_published;
    case 'retracted':
      return _$reportStatusEnum_retracted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReportStatusEnum> _$reportStatusEnumValues =
    BuiltSet<ReportStatusEnum>(const <ReportStatusEnum>[
  _$reportStatusEnum_draft,
  _$reportStatusEnum_review,
  _$reportStatusEnum_published,
  _$reportStatusEnum_retracted,
]);

const ReportTemplateEnum _$reportTemplateEnum_situationBrief =
    const ReportTemplateEnum._('situationBrief');
const ReportTemplateEnum _$reportTemplateEnum_investigationSummary =
    const ReportTemplateEnum._('investigationSummary');
const ReportTemplateEnum _$reportTemplateEnum_chronicleRecap =
    const ReportTemplateEnum._('chronicleRecap');
const ReportTemplateEnum _$reportTemplateEnum_weeklyAssessment =
    const ReportTemplateEnum._('weeklyAssessment');
const ReportTemplateEnum _$reportTemplateEnum_custom =
    const ReportTemplateEnum._('custom');

ReportTemplateEnum _$reportTemplateEnumValueOf(String name) {
  switch (name) {
    case 'situationBrief':
      return _$reportTemplateEnum_situationBrief;
    case 'investigationSummary':
      return _$reportTemplateEnum_investigationSummary;
    case 'chronicleRecap':
      return _$reportTemplateEnum_chronicleRecap;
    case 'weeklyAssessment':
      return _$reportTemplateEnum_weeklyAssessment;
    case 'custom':
      return _$reportTemplateEnum_custom;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReportTemplateEnum> _$reportTemplateEnumValues =
    BuiltSet<ReportTemplateEnum>(const <ReportTemplateEnum>[
  _$reportTemplateEnum_situationBrief,
  _$reportTemplateEnum_investigationSummary,
  _$reportTemplateEnum_chronicleRecap,
  _$reportTemplateEnum_weeklyAssessment,
  _$reportTemplateEnum_custom,
]);

Serializer<ReportStatusEnum> _$reportStatusEnumSerializer =
    _$ReportStatusEnumSerializer();
Serializer<ReportTemplateEnum> _$reportTemplateEnumSerializer =
    _$ReportTemplateEnumSerializer();

class _$ReportStatusEnumSerializer
    implements PrimitiveSerializer<ReportStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'draft': 'draft',
    'review': 'review',
    'published': 'published',
    'retracted': 'retracted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'draft': 'draft',
    'review': 'review',
    'published': 'published',
    'retracted': 'retracted',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportStatusEnum];
  @override
  final String wireName = 'ReportStatusEnum';

  @override
  Object serialize(Serializers serializers, ReportStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReportStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReportStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReportTemplateEnumSerializer
    implements PrimitiveSerializer<ReportTemplateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'situationBrief': 'situation-brief',
    'investigationSummary': 'investigation-summary',
    'chronicleRecap': 'chronicle-recap',
    'weeklyAssessment': 'weekly-assessment',
    'custom': 'custom',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'situation-brief': 'situationBrief',
    'investigation-summary': 'investigationSummary',
    'chronicle-recap': 'chronicleRecap',
    'weekly-assessment': 'weeklyAssessment',
    'custom': 'custom',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportTemplateEnum];
  @override
  final String wireName = 'ReportTemplateEnum';

  @override
  Object serialize(Serializers serializers, ReportTemplateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReportTemplateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReportTemplateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Report extends Report {
  @override
  final String id;
  @override
  final String ref;
  @override
  final String displayId;
  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final ReportStatusEnum status;
  @override
  final PrincipalSummary owner;
  @override
  final BuiltList<PrincipalSummary> authors;
  @override
  final String tlp;
  @override
  final Visibility visibility;
  @override
  final ReportSource source_;
  @override
  final ReportTemplateEnum? template;
  @override
  final TimeRange? timeWindow;
  @override
  final Geometry? area;
  @override
  final BuiltList<JsonObject?> blocks;
  @override
  final bool? machineGenerated;
  @override
  final int version;
  @override
  final int? publishedRevision;
  @override
  final DateTime? publishedAt;
  @override
  final String? manifestId;
  @override
  final BuiltList<ProvenanceChainEntry>? provenanceChain;
  @override
  final BuiltList<String>? tags;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Report([void Function(ReportBuilder)? updates]) =>
      (ReportBuilder()..update(updates))._build();

  _$Report._(
      {required this.id,
      required this.ref,
      required this.displayId,
      required this.title,
      this.subtitle,
      required this.status,
      required this.owner,
      required this.authors,
      required this.tlp,
      required this.visibility,
      required this.source_,
      this.template,
      this.timeWindow,
      this.area,
      required this.blocks,
      this.machineGenerated,
      required this.version,
      this.publishedRevision,
      this.publishedAt,
      this.manifestId,
      this.provenanceChain,
      this.tags,
      required this.createdAt,
      this.updatedAt})
      : super._();
  @override
  Report rebuild(void Function(ReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportBuilder toBuilder() => ReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Report &&
        id == other.id &&
        ref == other.ref &&
        displayId == other.displayId &&
        title == other.title &&
        subtitle == other.subtitle &&
        status == other.status &&
        owner == other.owner &&
        authors == other.authors &&
        tlp == other.tlp &&
        visibility == other.visibility &&
        source_ == other.source_ &&
        template == other.template &&
        timeWindow == other.timeWindow &&
        area == other.area &&
        blocks == other.blocks &&
        machineGenerated == other.machineGenerated &&
        version == other.version &&
        publishedRevision == other.publishedRevision &&
        publishedAt == other.publishedAt &&
        manifestId == other.manifestId &&
        provenanceChain == other.provenanceChain &&
        tags == other.tags &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, displayId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, template.hashCode);
    _$hash = $jc(_$hash, timeWindow.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, blocks.hashCode);
    _$hash = $jc(_$hash, machineGenerated.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, publishedRevision.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, provenanceChain.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Report')
          ..add('id', id)
          ..add('ref', ref)
          ..add('displayId', displayId)
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('status', status)
          ..add('owner', owner)
          ..add('authors', authors)
          ..add('tlp', tlp)
          ..add('visibility', visibility)
          ..add('source_', source_)
          ..add('template', template)
          ..add('timeWindow', timeWindow)
          ..add('area', area)
          ..add('blocks', blocks)
          ..add('machineGenerated', machineGenerated)
          ..add('version', version)
          ..add('publishedRevision', publishedRevision)
          ..add('publishedAt', publishedAt)
          ..add('manifestId', manifestId)
          ..add('provenanceChain', provenanceChain)
          ..add('tags', tags)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ReportBuilder implements Builder<Report, ReportBuilder> {
  _$Report? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _displayId;
  String? get displayId => _$this._displayId;
  set displayId(String? displayId) => _$this._displayId = displayId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  ReportStatusEnum? _status;
  ReportStatusEnum? get status => _$this._status;
  set status(ReportStatusEnum? status) => _$this._status = status;

  PrincipalSummaryBuilder? _owner;
  PrincipalSummaryBuilder get owner =>
      _$this._owner ??= PrincipalSummaryBuilder();
  set owner(PrincipalSummaryBuilder? owner) => _$this._owner = owner;

  ListBuilder<PrincipalSummary>? _authors;
  ListBuilder<PrincipalSummary> get authors =>
      _$this._authors ??= ListBuilder<PrincipalSummary>();
  set authors(ListBuilder<PrincipalSummary>? authors) =>
      _$this._authors = authors;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  ReportSourceBuilder? _source_;
  ReportSourceBuilder get source_ => _$this._source_ ??= ReportSourceBuilder();
  set source_(ReportSourceBuilder? source_) => _$this._source_ = source_;

  ReportTemplateEnum? _template;
  ReportTemplateEnum? get template => _$this._template;
  set template(ReportTemplateEnum? template) => _$this._template = template;

  TimeRangeBuilder? _timeWindow;
  TimeRangeBuilder get timeWindow => _$this._timeWindow ??= TimeRangeBuilder();
  set timeWindow(TimeRangeBuilder? timeWindow) =>
      _$this._timeWindow = timeWindow;

  GeometryBuilder? _area;
  GeometryBuilder get area => _$this._area ??= GeometryBuilder();
  set area(GeometryBuilder? area) => _$this._area = area;

  ListBuilder<JsonObject?>? _blocks;
  ListBuilder<JsonObject?> get blocks =>
      _$this._blocks ??= ListBuilder<JsonObject?>();
  set blocks(ListBuilder<JsonObject?>? blocks) => _$this._blocks = blocks;

  bool? _machineGenerated;
  bool? get machineGenerated => _$this._machineGenerated;
  set machineGenerated(bool? machineGenerated) =>
      _$this._machineGenerated = machineGenerated;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  int? _publishedRevision;
  int? get publishedRevision => _$this._publishedRevision;
  set publishedRevision(int? publishedRevision) =>
      _$this._publishedRevision = publishedRevision;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ListBuilder<ProvenanceChainEntry>? _provenanceChain;
  ListBuilder<ProvenanceChainEntry> get provenanceChain =>
      _$this._provenanceChain ??= ListBuilder<ProvenanceChainEntry>();
  set provenanceChain(ListBuilder<ProvenanceChainEntry>? provenanceChain) =>
      _$this._provenanceChain = provenanceChain;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ReportBuilder() {
    Report._defaults(this);
  }

  ReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _displayId = $v.displayId;
      _title = $v.title;
      _subtitle = $v.subtitle;
      _status = $v.status;
      _owner = $v.owner.toBuilder();
      _authors = $v.authors.toBuilder();
      _tlp = $v.tlp;
      _visibility = $v.visibility;
      _source_ = $v.source_.toBuilder();
      _template = $v.template;
      _timeWindow = $v.timeWindow?.toBuilder();
      _area = $v.area?.toBuilder();
      _blocks = $v.blocks.toBuilder();
      _machineGenerated = $v.machineGenerated;
      _version = $v.version;
      _publishedRevision = $v.publishedRevision;
      _publishedAt = $v.publishedAt;
      _manifestId = $v.manifestId;
      _provenanceChain = $v.provenanceChain?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Report other) {
    _$v = other as _$Report;
  }

  @override
  void update(void Function(ReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Report build() => _build();

  _$Report _build() {
    _$Report _$result;
    try {
      _$result = _$v ??
          _$Report._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Report', 'id'),
            ref: BuiltValueNullFieldError.checkNotNull(ref, r'Report', 'ref'),
            displayId: BuiltValueNullFieldError.checkNotNull(
                displayId, r'Report', 'displayId'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Report', 'title'),
            subtitle: subtitle,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'Report', 'status'),
            owner: owner.build(),
            authors: authors.build(),
            tlp: BuiltValueNullFieldError.checkNotNull(tlp, r'Report', 'tlp'),
            visibility: BuiltValueNullFieldError.checkNotNull(
                visibility, r'Report', 'visibility'),
            source_: source_.build(),
            template: template,
            timeWindow: _timeWindow?.build(),
            area: _area?.build(),
            blocks: blocks.build(),
            machineGenerated: machineGenerated,
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'Report', 'version'),
            publishedRevision: publishedRevision,
            publishedAt: publishedAt,
            manifestId: manifestId,
            provenanceChain: _provenanceChain?.build(),
            tags: _tags?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Report', 'createdAt'),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();
        _$failedField = 'authors';
        authors.build();

        _$failedField = 'source_';
        source_.build();

        _$failedField = 'timeWindow';
        _timeWindow?.build();
        _$failedField = 'area';
        _area?.build();
        _$failedField = 'blocks';
        blocks.build();

        _$failedField = 'provenanceChain';
        _provenanceChain?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Report', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
