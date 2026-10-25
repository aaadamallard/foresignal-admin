// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_draft_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportDraftRequestTemplateEnum
_$reportDraftRequestTemplateEnum_situationBrief =
    const ReportDraftRequestTemplateEnum._('situationBrief');
const ReportDraftRequestTemplateEnum
_$reportDraftRequestTemplateEnum_investigationSummary =
    const ReportDraftRequestTemplateEnum._('investigationSummary');
const ReportDraftRequestTemplateEnum
_$reportDraftRequestTemplateEnum_chronicleRecap =
    const ReportDraftRequestTemplateEnum._('chronicleRecap');
const ReportDraftRequestTemplateEnum
_$reportDraftRequestTemplateEnum_weeklyAssessment =
    const ReportDraftRequestTemplateEnum._('weeklyAssessment');
const ReportDraftRequestTemplateEnum _$reportDraftRequestTemplateEnum_custom =
    const ReportDraftRequestTemplateEnum._('custom');
const ReportDraftRequestTemplateEnum
_$reportDraftRequestTemplateEnum_unknownDefaultOpenApi =
    const ReportDraftRequestTemplateEnum._('unknownDefaultOpenApi');

ReportDraftRequestTemplateEnum _$reportDraftRequestTemplateEnumValueOf(
  String name,
) {
  switch (name) {
    case 'situationBrief':
      return _$reportDraftRequestTemplateEnum_situationBrief;
    case 'investigationSummary':
      return _$reportDraftRequestTemplateEnum_investigationSummary;
    case 'chronicleRecap':
      return _$reportDraftRequestTemplateEnum_chronicleRecap;
    case 'weeklyAssessment':
      return _$reportDraftRequestTemplateEnum_weeklyAssessment;
    case 'custom':
      return _$reportDraftRequestTemplateEnum_custom;
    case 'unknownDefaultOpenApi':
      return _$reportDraftRequestTemplateEnum_unknownDefaultOpenApi;
    default:
      return _$reportDraftRequestTemplateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ReportDraftRequestTemplateEnum>
_$reportDraftRequestTemplateEnumValues =
    BuiltSet<ReportDraftRequestTemplateEnum>(
      const <ReportDraftRequestTemplateEnum>[
        _$reportDraftRequestTemplateEnum_situationBrief,
        _$reportDraftRequestTemplateEnum_investigationSummary,
        _$reportDraftRequestTemplateEnum_chronicleRecap,
        _$reportDraftRequestTemplateEnum_weeklyAssessment,
        _$reportDraftRequestTemplateEnum_custom,
        _$reportDraftRequestTemplateEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ReportDraftRequestTemplateEnum>
_$reportDraftRequestTemplateEnumSerializer =
    _$ReportDraftRequestTemplateEnumSerializer();

class _$ReportDraftRequestTemplateEnumSerializer
    implements PrimitiveSerializer<ReportDraftRequestTemplateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'situationBrief': 'situation-brief',
    'investigationSummary': 'investigation-summary',
    'chronicleRecap': 'chronicle-recap',
    'weeklyAssessment': 'weekly-assessment',
    'custom': 'custom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'situation-brief': 'situationBrief',
    'investigation-summary': 'investigationSummary',
    'chronicle-recap': 'chronicleRecap',
    'weekly-assessment': 'weeklyAssessment',
    'custom': 'custom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportDraftRequestTemplateEnum];
  @override
  final String wireName = 'ReportDraftRequestTemplateEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReportDraftRequestTemplateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReportDraftRequestTemplateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReportDraftRequestTemplateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReportDraftRequest extends ReportDraftRequest {
  @override
  final ReportSource source_;
  @override
  final ReportDraftRequestTemplateEnum? template;
  @override
  final String? title;
  @override
  final TimeRange? timeWindow;
  @override
  final Geometry? area;
  @override
  final bool? narrative;
  @override
  final String? assessmentId;

  factory _$ReportDraftRequest([
    void Function(ReportDraftRequestBuilder)? updates,
  ]) => (ReportDraftRequestBuilder()..update(updates))._build();

  _$ReportDraftRequest._({
    required this.source_,
    this.template,
    this.title,
    this.timeWindow,
    this.area,
    this.narrative,
    this.assessmentId,
  }) : super._();
  @override
  ReportDraftRequest rebuild(
    void Function(ReportDraftRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportDraftRequestBuilder toBuilder() =>
      ReportDraftRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportDraftRequest &&
        source_ == other.source_ &&
        template == other.template &&
        title == other.title &&
        timeWindow == other.timeWindow &&
        area == other.area &&
        narrative == other.narrative &&
        assessmentId == other.assessmentId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, template.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, timeWindow.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, narrative.hashCode);
    _$hash = $jc(_$hash, assessmentId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportDraftRequest')
          ..add('source_', source_)
          ..add('template', template)
          ..add('title', title)
          ..add('timeWindow', timeWindow)
          ..add('area', area)
          ..add('narrative', narrative)
          ..add('assessmentId', assessmentId))
        .toString();
  }
}

class ReportDraftRequestBuilder
    implements Builder<ReportDraftRequest, ReportDraftRequestBuilder> {
  _$ReportDraftRequest? _$v;

  ReportSourceBuilder? _source_;
  ReportSourceBuilder get source_ => _$this._source_ ??= ReportSourceBuilder();
  set source_(ReportSourceBuilder? source_) => _$this._source_ = source_;

  ReportDraftRequestTemplateEnum? _template;
  ReportDraftRequestTemplateEnum? get template => _$this._template;
  set template(ReportDraftRequestTemplateEnum? template) =>
      _$this._template = template;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  TimeRangeBuilder? _timeWindow;
  TimeRangeBuilder get timeWindow => _$this._timeWindow ??= TimeRangeBuilder();
  set timeWindow(TimeRangeBuilder? timeWindow) =>
      _$this._timeWindow = timeWindow;

  GeometryBuilder? _area;
  GeometryBuilder get area => _$this._area ??= GeometryBuilder();
  set area(GeometryBuilder? area) => _$this._area = area;

  bool? _narrative;
  bool? get narrative => _$this._narrative;
  set narrative(bool? narrative) => _$this._narrative = narrative;

  String? _assessmentId;
  String? get assessmentId => _$this._assessmentId;
  set assessmentId(String? assessmentId) => _$this._assessmentId = assessmentId;

  ReportDraftRequestBuilder() {
    ReportDraftRequest._defaults(this);
  }

  ReportDraftRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_.toBuilder();
      _template = $v.template;
      _title = $v.title;
      _timeWindow = $v.timeWindow?.toBuilder();
      _area = $v.area?.toBuilder();
      _narrative = $v.narrative;
      _assessmentId = $v.assessmentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportDraftRequest other) {
    _$v = other as _$ReportDraftRequest;
  }

  @override
  void update(void Function(ReportDraftRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportDraftRequest build() => _build();

  _$ReportDraftRequest _build() {
    _$ReportDraftRequest _$result;
    try {
      _$result =
          _$v ??
          _$ReportDraftRequest._(
            source_: source_.build(),
            template: template,
            title: title,
            timeWindow: _timeWindow?.build(),
            area: _area?.build(),
            narrative: narrative,
            assessmentId: assessmentId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'source_';
        source_.build();

        _$failedField = 'timeWindow';
        _timeWindow?.build();
        _$failedField = 'area';
        _area?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportDraftRequest',
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
