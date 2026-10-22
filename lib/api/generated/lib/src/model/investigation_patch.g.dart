// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigation_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvestigationPatchStatusEnum _$investigationPatchStatusEnum_open =
    const InvestigationPatchStatusEnum._('open');
const InvestigationPatchStatusEnum _$investigationPatchStatusEnum_active =
    const InvestigationPatchStatusEnum._('active');
const InvestigationPatchStatusEnum _$investigationPatchStatusEnum_closed =
    const InvestigationPatchStatusEnum._('closed');
const InvestigationPatchStatusEnum _$investigationPatchStatusEnum_archived =
    const InvestigationPatchStatusEnum._('archived');

InvestigationPatchStatusEnum _$investigationPatchStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'open':
      return _$investigationPatchStatusEnum_open;
    case 'active':
      return _$investigationPatchStatusEnum_active;
    case 'closed':
      return _$investigationPatchStatusEnum_closed;
    case 'archived':
      return _$investigationPatchStatusEnum_archived;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvestigationPatchStatusEnum>
_$investigationPatchStatusEnumValues =
    BuiltSet<InvestigationPatchStatusEnum>(const <InvestigationPatchStatusEnum>[
      _$investigationPatchStatusEnum_open,
      _$investigationPatchStatusEnum_active,
      _$investigationPatchStatusEnum_closed,
      _$investigationPatchStatusEnum_archived,
    ]);

Serializer<InvestigationPatchStatusEnum>
_$investigationPatchStatusEnumSerializer =
    _$InvestigationPatchStatusEnumSerializer();

class _$InvestigationPatchStatusEnumSerializer
    implements PrimitiveSerializer<InvestigationPatchStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'active': 'active',
    'closed': 'closed',
    'archived': 'archived',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'active': 'active',
    'closed': 'closed',
    'archived': 'archived',
  };

  @override
  final Iterable<Type> types = const <Type>[InvestigationPatchStatusEnum];
  @override
  final String wireName = 'InvestigationPatchStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    InvestigationPatchStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InvestigationPatchStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InvestigationPatchStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$InvestigationPatch extends InvestigationPatch {
  @override
  final String? title;
  @override
  final InvestigationPatchStatusEnum? status;
  @override
  final String? summary;
  @override
  final BuiltList<String>? tags;
  @override
  final String? workspaceId;
  @override
  final BuiltList<String>? hypothesisSetIds;
  @override
  final BuiltList<String>? questionIds;
  @override
  final BuiltList<String>? chronicleIds;
  @override
  final BuiltList<String>? reportIds;

  factory _$InvestigationPatch([
    void Function(InvestigationPatchBuilder)? updates,
  ]) => (InvestigationPatchBuilder()..update(updates))._build();

  _$InvestigationPatch._({
    this.title,
    this.status,
    this.summary,
    this.tags,
    this.workspaceId,
    this.hypothesisSetIds,
    this.questionIds,
    this.chronicleIds,
    this.reportIds,
  }) : super._();
  @override
  InvestigationPatch rebuild(
    void Function(InvestigationPatchBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvestigationPatchBuilder toBuilder() =>
      InvestigationPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvestigationPatch &&
        title == other.title &&
        status == other.status &&
        summary == other.summary &&
        tags == other.tags &&
        workspaceId == other.workspaceId &&
        hypothesisSetIds == other.hypothesisSetIds &&
        questionIds == other.questionIds &&
        chronicleIds == other.chronicleIds &&
        reportIds == other.reportIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jc(_$hash, hypothesisSetIds.hashCode);
    _$hash = $jc(_$hash, questionIds.hashCode);
    _$hash = $jc(_$hash, chronicleIds.hashCode);
    _$hash = $jc(_$hash, reportIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvestigationPatch')
          ..add('title', title)
          ..add('status', status)
          ..add('summary', summary)
          ..add('tags', tags)
          ..add('workspaceId', workspaceId)
          ..add('hypothesisSetIds', hypothesisSetIds)
          ..add('questionIds', questionIds)
          ..add('chronicleIds', chronicleIds)
          ..add('reportIds', reportIds))
        .toString();
  }
}

class InvestigationPatchBuilder
    implements Builder<InvestigationPatch, InvestigationPatchBuilder> {
  _$InvestigationPatch? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  InvestigationPatchStatusEnum? _status;
  InvestigationPatchStatusEnum? get status => _$this._status;
  set status(InvestigationPatchStatusEnum? status) => _$this._status = status;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _workspaceId;
  String? get workspaceId => _$this._workspaceId;
  set workspaceId(String? workspaceId) => _$this._workspaceId = workspaceId;

  ListBuilder<String>? _hypothesisSetIds;
  ListBuilder<String> get hypothesisSetIds =>
      _$this._hypothesisSetIds ??= ListBuilder<String>();
  set hypothesisSetIds(ListBuilder<String>? hypothesisSetIds) =>
      _$this._hypothesisSetIds = hypothesisSetIds;

  ListBuilder<String>? _questionIds;
  ListBuilder<String> get questionIds =>
      _$this._questionIds ??= ListBuilder<String>();
  set questionIds(ListBuilder<String>? questionIds) =>
      _$this._questionIds = questionIds;

  ListBuilder<String>? _chronicleIds;
  ListBuilder<String> get chronicleIds =>
      _$this._chronicleIds ??= ListBuilder<String>();
  set chronicleIds(ListBuilder<String>? chronicleIds) =>
      _$this._chronicleIds = chronicleIds;

  ListBuilder<String>? _reportIds;
  ListBuilder<String> get reportIds =>
      _$this._reportIds ??= ListBuilder<String>();
  set reportIds(ListBuilder<String>? reportIds) =>
      _$this._reportIds = reportIds;

  InvestigationPatchBuilder() {
    InvestigationPatch._defaults(this);
  }

  InvestigationPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _status = $v.status;
      _summary = $v.summary;
      _tags = $v.tags?.toBuilder();
      _workspaceId = $v.workspaceId;
      _hypothesisSetIds = $v.hypothesisSetIds?.toBuilder();
      _questionIds = $v.questionIds?.toBuilder();
      _chronicleIds = $v.chronicleIds?.toBuilder();
      _reportIds = $v.reportIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvestigationPatch other) {
    _$v = other as _$InvestigationPatch;
  }

  @override
  void update(void Function(InvestigationPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvestigationPatch build() => _build();

  _$InvestigationPatch _build() {
    _$InvestigationPatch _$result;
    try {
      _$result =
          _$v ??
          _$InvestigationPatch._(
            title: title,
            status: status,
            summary: summary,
            tags: _tags?.build(),
            workspaceId: workspaceId,
            hypothesisSetIds: _hypothesisSetIds?.build(),
            questionIds: _questionIds?.build(),
            chronicleIds: _chronicleIds?.build(),
            reportIds: _reportIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'hypothesisSetIds';
        _hypothesisSetIds?.build();
        _$failedField = 'questionIds';
        _questionIds?.build();
        _$failedField = 'chronicleIds';
        _chronicleIds?.build();
        _$failedField = 'reportIds';
        _reportIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InvestigationPatch',
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
