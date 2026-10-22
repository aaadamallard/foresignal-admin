// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_block_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnum_markdown =
    const ReportBlockBaseTypeEnum._('markdown');
const ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnum_bluf =
    const ReportBlockBaseTypeEnum._('bluf');
const ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnum_objects =
    const ReportBlockBaseTypeEnum._('objects');
const ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnum_map =
    const ReportBlockBaseTypeEnum._('map');
const ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnum_timeline =
    const ReportBlockBaseTypeEnum._('timeline');
const ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnum_hypotheses =
    const ReportBlockBaseTypeEnum._('hypotheses');
const ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnum_forecasts =
    const ReportBlockBaseTypeEnum._('forecasts');
const ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnum_evidence =
    const ReportBlockBaseTypeEnum._('evidence');
const ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnum_coverage =
    const ReportBlockBaseTypeEnum._('coverage');
const ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnum_attachments =
    const ReportBlockBaseTypeEnum._('attachments');
const ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnum_sources =
    const ReportBlockBaseTypeEnum._('sources');

ReportBlockBaseTypeEnum _$reportBlockBaseTypeEnumValueOf(String name) {
  switch (name) {
    case 'markdown':
      return _$reportBlockBaseTypeEnum_markdown;
    case 'bluf':
      return _$reportBlockBaseTypeEnum_bluf;
    case 'objects':
      return _$reportBlockBaseTypeEnum_objects;
    case 'map':
      return _$reportBlockBaseTypeEnum_map;
    case 'timeline':
      return _$reportBlockBaseTypeEnum_timeline;
    case 'hypotheses':
      return _$reportBlockBaseTypeEnum_hypotheses;
    case 'forecasts':
      return _$reportBlockBaseTypeEnum_forecasts;
    case 'evidence':
      return _$reportBlockBaseTypeEnum_evidence;
    case 'coverage':
      return _$reportBlockBaseTypeEnum_coverage;
    case 'attachments':
      return _$reportBlockBaseTypeEnum_attachments;
    case 'sources':
      return _$reportBlockBaseTypeEnum_sources;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReportBlockBaseTypeEnum> _$reportBlockBaseTypeEnumValues =
    BuiltSet<ReportBlockBaseTypeEnum>(const <ReportBlockBaseTypeEnum>[
  _$reportBlockBaseTypeEnum_markdown,
  _$reportBlockBaseTypeEnum_bluf,
  _$reportBlockBaseTypeEnum_objects,
  _$reportBlockBaseTypeEnum_map,
  _$reportBlockBaseTypeEnum_timeline,
  _$reportBlockBaseTypeEnum_hypotheses,
  _$reportBlockBaseTypeEnum_forecasts,
  _$reportBlockBaseTypeEnum_evidence,
  _$reportBlockBaseTypeEnum_coverage,
  _$reportBlockBaseTypeEnum_attachments,
  _$reportBlockBaseTypeEnum_sources,
]);

const ReportBlockBaseTextOriginEnum _$reportBlockBaseTextOriginEnum_author =
    const ReportBlockBaseTextOriginEnum._('author');
const ReportBlockBaseTextOriginEnum
    _$reportBlockBaseTextOriginEnum_deterministic =
    const ReportBlockBaseTextOriginEnum._('deterministic');
const ReportBlockBaseTextOriginEnum _$reportBlockBaseTextOriginEnum_llm =
    const ReportBlockBaseTextOriginEnum._('llm');

ReportBlockBaseTextOriginEnum _$reportBlockBaseTextOriginEnumValueOf(
    String name) {
  switch (name) {
    case 'author':
      return _$reportBlockBaseTextOriginEnum_author;
    case 'deterministic':
      return _$reportBlockBaseTextOriginEnum_deterministic;
    case 'llm':
      return _$reportBlockBaseTextOriginEnum_llm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReportBlockBaseTextOriginEnum>
    _$reportBlockBaseTextOriginEnumValues = BuiltSet<
        ReportBlockBaseTextOriginEnum>(const <ReportBlockBaseTextOriginEnum>[
  _$reportBlockBaseTextOriginEnum_author,
  _$reportBlockBaseTextOriginEnum_deterministic,
  _$reportBlockBaseTextOriginEnum_llm,
]);

Serializer<ReportBlockBaseTypeEnum> _$reportBlockBaseTypeEnumSerializer =
    _$ReportBlockBaseTypeEnumSerializer();
Serializer<ReportBlockBaseTextOriginEnum>
    _$reportBlockBaseTextOriginEnumSerializer =
    _$ReportBlockBaseTextOriginEnumSerializer();

class _$ReportBlockBaseTypeEnumSerializer
    implements PrimitiveSerializer<ReportBlockBaseTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'markdown': 'markdown',
    'bluf': 'bluf',
    'objects': 'objects',
    'map': 'map',
    'timeline': 'timeline',
    'hypotheses': 'hypotheses',
    'forecasts': 'forecasts',
    'evidence': 'evidence',
    'coverage': 'coverage',
    'attachments': 'attachments',
    'sources': 'sources',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'markdown': 'markdown',
    'bluf': 'bluf',
    'objects': 'objects',
    'map': 'map',
    'timeline': 'timeline',
    'hypotheses': 'hypotheses',
    'forecasts': 'forecasts',
    'evidence': 'evidence',
    'coverage': 'coverage',
    'attachments': 'attachments',
    'sources': 'sources',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportBlockBaseTypeEnum];
  @override
  final String wireName = 'ReportBlockBaseTypeEnum';

  @override
  Object serialize(Serializers serializers, ReportBlockBaseTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReportBlockBaseTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReportBlockBaseTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReportBlockBaseTextOriginEnumSerializer
    implements PrimitiveSerializer<ReportBlockBaseTextOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'author': 'author',
    'deterministic': 'deterministic',
    'llm': 'llm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'author': 'author',
    'deterministic': 'deterministic',
    'llm': 'llm',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportBlockBaseTextOriginEnum];
  @override
  final String wireName = 'ReportBlockBaseTextOriginEnum';

  @override
  Object serialize(
          Serializers serializers, ReportBlockBaseTextOriginEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReportBlockBaseTextOriginEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReportBlockBaseTextOriginEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReportBlockBase extends ReportBlockBase {
  @override
  final String? id;
  @override
  final ReportBlockBaseTypeEnum type;
  @override
  final String? title;
  @override
  final ReportBlockBaseTextOriginEnum? textOrigin;
  @override
  final DateTime? updatedAt;
  @override
  final PrincipalSummary? updatedBy;

  factory _$ReportBlockBase([void Function(ReportBlockBaseBuilder)? updates]) =>
      (ReportBlockBaseBuilder()..update(updates))._build();

  _$ReportBlockBase._(
      {this.id,
      required this.type,
      this.title,
      this.textOrigin,
      this.updatedAt,
      this.updatedBy})
      : super._();
  @override
  ReportBlockBase rebuild(void Function(ReportBlockBaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportBlockBaseBuilder toBuilder() => ReportBlockBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportBlockBase &&
        id == other.id &&
        type == other.type &&
        title == other.title &&
        textOrigin == other.textOrigin &&
        updatedAt == other.updatedAt &&
        updatedBy == other.updatedBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, textOrigin.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, updatedBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportBlockBase')
          ..add('id', id)
          ..add('type', type)
          ..add('title', title)
          ..add('textOrigin', textOrigin)
          ..add('updatedAt', updatedAt)
          ..add('updatedBy', updatedBy))
        .toString();
  }
}

class ReportBlockBaseBuilder
    implements Builder<ReportBlockBase, ReportBlockBaseBuilder> {
  _$ReportBlockBase? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ReportBlockBaseTypeEnum? _type;
  ReportBlockBaseTypeEnum? get type => _$this._type;
  set type(ReportBlockBaseTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ReportBlockBaseTextOriginEnum? _textOrigin;
  ReportBlockBaseTextOriginEnum? get textOrigin => _$this._textOrigin;
  set textOrigin(ReportBlockBaseTextOriginEnum? textOrigin) =>
      _$this._textOrigin = textOrigin;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PrincipalSummaryBuilder? _updatedBy;
  PrincipalSummaryBuilder get updatedBy =>
      _$this._updatedBy ??= PrincipalSummaryBuilder();
  set updatedBy(PrincipalSummaryBuilder? updatedBy) =>
      _$this._updatedBy = updatedBy;

  ReportBlockBaseBuilder() {
    ReportBlockBase._defaults(this);
  }

  ReportBlockBaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _title = $v.title;
      _textOrigin = $v.textOrigin;
      _updatedAt = $v.updatedAt;
      _updatedBy = $v.updatedBy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportBlockBase other) {
    _$v = other as _$ReportBlockBase;
  }

  @override
  void update(void Function(ReportBlockBaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportBlockBase build() => _build();

  _$ReportBlockBase _build() {
    _$ReportBlockBase _$result;
    try {
      _$result = _$v ??
          _$ReportBlockBase._(
            id: id,
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ReportBlockBase', 'type'),
            title: title,
            textOrigin: textOrigin,
            updatedAt: updatedAt,
            updatedBy: _updatedBy?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatedBy';
        _updatedBy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReportBlockBase', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
