// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigation_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvestigationInputStatusEnum _$investigationInputStatusEnum_open =
    const InvestigationInputStatusEnum._('open');
const InvestigationInputStatusEnum _$investigationInputStatusEnum_active =
    const InvestigationInputStatusEnum._('active');
const InvestigationInputStatusEnum _$investigationInputStatusEnum_closed =
    const InvestigationInputStatusEnum._('closed');
const InvestigationInputStatusEnum _$investigationInputStatusEnum_archived =
    const InvestigationInputStatusEnum._('archived');

InvestigationInputStatusEnum _$investigationInputStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'open':
      return _$investigationInputStatusEnum_open;
    case 'active':
      return _$investigationInputStatusEnum_active;
    case 'closed':
      return _$investigationInputStatusEnum_closed;
    case 'archived':
      return _$investigationInputStatusEnum_archived;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvestigationInputStatusEnum>
_$investigationInputStatusEnumValues =
    BuiltSet<InvestigationInputStatusEnum>(const <InvestigationInputStatusEnum>[
      _$investigationInputStatusEnum_open,
      _$investigationInputStatusEnum_active,
      _$investigationInputStatusEnum_closed,
      _$investigationInputStatusEnum_archived,
    ]);

Serializer<InvestigationInputStatusEnum>
_$investigationInputStatusEnumSerializer =
    _$InvestigationInputStatusEnumSerializer();

class _$InvestigationInputStatusEnumSerializer
    implements PrimitiveSerializer<InvestigationInputStatusEnum> {
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
  final Iterable<Type> types = const <Type>[InvestigationInputStatusEnum];
  @override
  final String wireName = 'InvestigationInputStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    InvestigationInputStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InvestigationInputStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InvestigationInputStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$InvestigationInput extends InvestigationInput {
  @override
  final String title;
  @override
  final String? summary;
  @override
  final BuiltList<String>? tags;
  @override
  final InvestigationInputStatusEnum? status;
  @override
  final Visibility? visibility;
  @override
  final String? tlp;
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

  factory _$InvestigationInput([
    void Function(InvestigationInputBuilder)? updates,
  ]) => (InvestigationInputBuilder()..update(updates))._build();

  _$InvestigationInput._({
    required this.title,
    this.summary,
    this.tags,
    this.status,
    this.visibility,
    this.tlp,
    this.workspaceId,
    this.hypothesisSetIds,
    this.questionIds,
    this.chronicleIds,
    this.reportIds,
  }) : super._();
  @override
  InvestigationInput rebuild(
    void Function(InvestigationInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvestigationInputBuilder toBuilder() =>
      InvestigationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvestigationInput &&
        title == other.title &&
        summary == other.summary &&
        tags == other.tags &&
        status == other.status &&
        visibility == other.visibility &&
        tlp == other.tlp &&
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
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
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
    return (newBuiltValueToStringHelper(r'InvestigationInput')
          ..add('title', title)
          ..add('summary', summary)
          ..add('tags', tags)
          ..add('status', status)
          ..add('visibility', visibility)
          ..add('tlp', tlp)
          ..add('workspaceId', workspaceId)
          ..add('hypothesisSetIds', hypothesisSetIds)
          ..add('questionIds', questionIds)
          ..add('chronicleIds', chronicleIds)
          ..add('reportIds', reportIds))
        .toString();
  }
}

class InvestigationInputBuilder
    implements Builder<InvestigationInput, InvestigationInputBuilder> {
  _$InvestigationInput? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  InvestigationInputStatusEnum? _status;
  InvestigationInputStatusEnum? get status => _$this._status;
  set status(InvestigationInputStatusEnum? status) => _$this._status = status;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

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

  InvestigationInputBuilder() {
    InvestigationInput._defaults(this);
  }

  InvestigationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _summary = $v.summary;
      _tags = $v.tags?.toBuilder();
      _status = $v.status;
      _visibility = $v.visibility;
      _tlp = $v.tlp;
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
  void replace(InvestigationInput other) {
    _$v = other as _$InvestigationInput;
  }

  @override
  void update(void Function(InvestigationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvestigationInput build() => _build();

  _$InvestigationInput _build() {
    _$InvestigationInput _$result;
    try {
      _$result =
          _$v ??
          _$InvestigationInput._(
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'InvestigationInput',
              'title',
            ),
            summary: summary,
            tags: _tags?.build(),
            status: status,
            visibility: visibility,
            tlp: tlp,
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
          r'InvestigationInput',
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
