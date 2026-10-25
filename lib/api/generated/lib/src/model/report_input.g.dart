// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportInputTemplateEnum _$reportInputTemplateEnum_situationBrief =
    const ReportInputTemplateEnum._('situationBrief');
const ReportInputTemplateEnum _$reportInputTemplateEnum_investigationSummary =
    const ReportInputTemplateEnum._('investigationSummary');
const ReportInputTemplateEnum _$reportInputTemplateEnum_chronicleRecap =
    const ReportInputTemplateEnum._('chronicleRecap');
const ReportInputTemplateEnum _$reportInputTemplateEnum_weeklyAssessment =
    const ReportInputTemplateEnum._('weeklyAssessment');
const ReportInputTemplateEnum _$reportInputTemplateEnum_custom =
    const ReportInputTemplateEnum._('custom');
const ReportInputTemplateEnum _$reportInputTemplateEnum_unknownDefaultOpenApi =
    const ReportInputTemplateEnum._('unknownDefaultOpenApi');

ReportInputTemplateEnum _$reportInputTemplateEnumValueOf(String name) {
  switch (name) {
    case 'situationBrief':
      return _$reportInputTemplateEnum_situationBrief;
    case 'investigationSummary':
      return _$reportInputTemplateEnum_investigationSummary;
    case 'chronicleRecap':
      return _$reportInputTemplateEnum_chronicleRecap;
    case 'weeklyAssessment':
      return _$reportInputTemplateEnum_weeklyAssessment;
    case 'custom':
      return _$reportInputTemplateEnum_custom;
    case 'unknownDefaultOpenApi':
      return _$reportInputTemplateEnum_unknownDefaultOpenApi;
    default:
      return _$reportInputTemplateEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ReportInputTemplateEnum> _$reportInputTemplateEnumValues =
    BuiltSet<ReportInputTemplateEnum>(const <ReportInputTemplateEnum>[
      _$reportInputTemplateEnum_situationBrief,
      _$reportInputTemplateEnum_investigationSummary,
      _$reportInputTemplateEnum_chronicleRecap,
      _$reportInputTemplateEnum_weeklyAssessment,
      _$reportInputTemplateEnum_custom,
      _$reportInputTemplateEnum_unknownDefaultOpenApi,
    ]);

Serializer<ReportInputTemplateEnum> _$reportInputTemplateEnumSerializer =
    _$ReportInputTemplateEnumSerializer();

class _$ReportInputTemplateEnumSerializer
    implements PrimitiveSerializer<ReportInputTemplateEnum> {
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
  final Iterable<Type> types = const <Type>[ReportInputTemplateEnum];
  @override
  final String wireName = 'ReportInputTemplateEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReportInputTemplateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReportInputTemplateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReportInputTemplateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReportInput extends ReportInput {
  @override
  final String title;
  @override
  final String? subtitle;
  @override
  final BuiltList<String>? authors;
  @override
  final String? tlp;
  @override
  final Visibility? visibility;
  @override
  final ReportSource? source_;
  @override
  final ReportInputTemplateEnum? template;
  @override
  final TimeRange? timeWindow;
  @override
  final Geometry? area;
  @override
  final BuiltList<JsonObject?>? blocks;

  factory _$ReportInput([void Function(ReportInputBuilder)? updates]) =>
      (ReportInputBuilder()..update(updates))._build();

  _$ReportInput._({
    required this.title,
    this.subtitle,
    this.authors,
    this.tlp,
    this.visibility,
    this.source_,
    this.template,
    this.timeWindow,
    this.area,
    this.blocks,
  }) : super._();
  @override
  ReportInput rebuild(void Function(ReportInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportInputBuilder toBuilder() => ReportInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportInput &&
        title == other.title &&
        subtitle == other.subtitle &&
        authors == other.authors &&
        tlp == other.tlp &&
        visibility == other.visibility &&
        source_ == other.source_ &&
        template == other.template &&
        timeWindow == other.timeWindow &&
        area == other.area &&
        blocks == other.blocks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, template.hashCode);
    _$hash = $jc(_$hash, timeWindow.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, blocks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportInput')
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('authors', authors)
          ..add('tlp', tlp)
          ..add('visibility', visibility)
          ..add('source_', source_)
          ..add('template', template)
          ..add('timeWindow', timeWindow)
          ..add('area', area)
          ..add('blocks', blocks))
        .toString();
  }
}

class ReportInputBuilder implements Builder<ReportInput, ReportInputBuilder> {
  _$ReportInput? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  ListBuilder<String>? _authors;
  ListBuilder<String> get authors => _$this._authors ??= ListBuilder<String>();
  set authors(ListBuilder<String>? authors) => _$this._authors = authors;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  ReportSourceBuilder? _source_;
  ReportSourceBuilder get source_ => _$this._source_ ??= ReportSourceBuilder();
  set source_(ReportSourceBuilder? source_) => _$this._source_ = source_;

  ReportInputTemplateEnum? _template;
  ReportInputTemplateEnum? get template => _$this._template;
  set template(ReportInputTemplateEnum? template) =>
      _$this._template = template;

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

  ReportInputBuilder() {
    ReportInput._defaults(this);
  }

  ReportInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _subtitle = $v.subtitle;
      _authors = $v.authors?.toBuilder();
      _tlp = $v.tlp;
      _visibility = $v.visibility;
      _source_ = $v.source_?.toBuilder();
      _template = $v.template;
      _timeWindow = $v.timeWindow?.toBuilder();
      _area = $v.area?.toBuilder();
      _blocks = $v.blocks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportInput other) {
    _$v = other as _$ReportInput;
  }

  @override
  void update(void Function(ReportInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportInput build() => _build();

  _$ReportInput _build() {
    _$ReportInput _$result;
    try {
      _$result =
          _$v ??
          _$ReportInput._(
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'ReportInput',
              'title',
            ),
            subtitle: subtitle,
            authors: _authors?.build(),
            tlp: tlp,
            visibility: visibility,
            source_: _source_?.build(),
            template: template,
            timeWindow: _timeWindow?.build(),
            area: _area?.build(),
            blocks: _blocks?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authors';
        _authors?.build();

        _$failedField = 'source_';
        _source_?.build();

        _$failedField = 'timeWindow';
        _timeWindow?.build();
        _$failedField = 'area';
        _area?.build();
        _$failedField = 'blocks';
        _blocks?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportInput',
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
