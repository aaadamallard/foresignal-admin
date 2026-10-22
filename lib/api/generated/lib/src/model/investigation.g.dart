// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvestigationStatusEnum _$investigationStatusEnum_open =
    const InvestigationStatusEnum._('open');
const InvestigationStatusEnum _$investigationStatusEnum_closed =
    const InvestigationStatusEnum._('closed');
const InvestigationStatusEnum _$investigationStatusEnum_active =
    const InvestigationStatusEnum._('active');
const InvestigationStatusEnum _$investigationStatusEnum_archived =
    const InvestigationStatusEnum._('archived');

InvestigationStatusEnum _$investigationStatusEnumValueOf(String name) {
  switch (name) {
    case 'open':
      return _$investigationStatusEnum_open;
    case 'closed':
      return _$investigationStatusEnum_closed;
    case 'active':
      return _$investigationStatusEnum_active;
    case 'archived':
      return _$investigationStatusEnum_archived;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvestigationStatusEnum> _$investigationStatusEnumValues =
    BuiltSet<InvestigationStatusEnum>(const <InvestigationStatusEnum>[
      _$investigationStatusEnum_open,
      _$investigationStatusEnum_closed,
      _$investigationStatusEnum_active,
      _$investigationStatusEnum_archived,
    ]);

Serializer<InvestigationStatusEnum> _$investigationStatusEnumSerializer =
    _$InvestigationStatusEnumSerializer();

class _$InvestigationStatusEnumSerializer
    implements PrimitiveSerializer<InvestigationStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'closed': 'closed',
    'active': 'active',
    'archived': 'archived',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'closed': 'closed',
    'active': 'active',
    'archived': 'archived',
  };

  @override
  final Iterable<Type> types = const <Type>[InvestigationStatusEnum];
  @override
  final String wireName = 'InvestigationStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    InvestigationStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InvestigationStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InvestigationStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Investigation extends Investigation {
  @override
  final String id;
  @override
  final String displayId;
  @override
  final String title;
  @override
  final InvestigationStatusEnum status;
  @override
  final String? summary;
  @override
  final BuiltList<String>? tags;
  @override
  final int? itemCount;
  @override
  final BuiltList<InvestigationItem>? items;
  @override
  final String createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final PrincipalSummary? owner;
  @override
  final Visibility? visibility;
  @override
  final String? tlp;
  @override
  final BuiltList<ObjectAclEntry>? members;
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

  factory _$Investigation([void Function(InvestigationBuilder)? updates]) =>
      (InvestigationBuilder()..update(updates))._build();

  _$Investigation._({
    required this.id,
    required this.displayId,
    required this.title,
    required this.status,
    this.summary,
    this.tags,
    this.itemCount,
    this.items,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
    this.owner,
    this.visibility,
    this.tlp,
    this.members,
    this.workspaceId,
    this.hypothesisSetIds,
    this.questionIds,
    this.chronicleIds,
    this.reportIds,
  }) : super._();
  @override
  Investigation rebuild(void Function(InvestigationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvestigationBuilder toBuilder() => InvestigationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Investigation &&
        id == other.id &&
        displayId == other.displayId &&
        title == other.title &&
        status == other.status &&
        summary == other.summary &&
        tags == other.tags &&
        itemCount == other.itemCount &&
        items == other.items &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        owner == other.owner &&
        visibility == other.visibility &&
        tlp == other.tlp &&
        members == other.members &&
        workspaceId == other.workspaceId &&
        hypothesisSetIds == other.hypothesisSetIds &&
        questionIds == other.questionIds &&
        chronicleIds == other.chronicleIds &&
        reportIds == other.reportIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, displayId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
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
    return (newBuiltValueToStringHelper(r'Investigation')
          ..add('id', id)
          ..add('displayId', displayId)
          ..add('title', title)
          ..add('status', status)
          ..add('summary', summary)
          ..add('tags', tags)
          ..add('itemCount', itemCount)
          ..add('items', items)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('owner', owner)
          ..add('visibility', visibility)
          ..add('tlp', tlp)
          ..add('members', members)
          ..add('workspaceId', workspaceId)
          ..add('hypothesisSetIds', hypothesisSetIds)
          ..add('questionIds', questionIds)
          ..add('chronicleIds', chronicleIds)
          ..add('reportIds', reportIds))
        .toString();
  }
}

class InvestigationBuilder
    implements Builder<Investigation, InvestigationBuilder> {
  _$Investigation? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _displayId;
  String? get displayId => _$this._displayId;
  set displayId(String? displayId) => _$this._displayId = displayId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  InvestigationStatusEnum? _status;
  InvestigationStatusEnum? get status => _$this._status;
  set status(InvestigationStatusEnum? status) => _$this._status = status;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  int? _itemCount;
  int? get itemCount => _$this._itemCount;
  set itemCount(int? itemCount) => _$this._itemCount = itemCount;

  ListBuilder<InvestigationItem>? _items;
  ListBuilder<InvestigationItem> get items =>
      _$this._items ??= ListBuilder<InvestigationItem>();
  set items(ListBuilder<InvestigationItem>? items) => _$this._items = items;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PrincipalSummaryBuilder? _owner;
  PrincipalSummaryBuilder get owner =>
      _$this._owner ??= PrincipalSummaryBuilder();
  set owner(PrincipalSummaryBuilder? owner) => _$this._owner = owner;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  ListBuilder<ObjectAclEntry>? _members;
  ListBuilder<ObjectAclEntry> get members =>
      _$this._members ??= ListBuilder<ObjectAclEntry>();
  set members(ListBuilder<ObjectAclEntry>? members) =>
      _$this._members = members;

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

  InvestigationBuilder() {
    Investigation._defaults(this);
  }

  InvestigationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _displayId = $v.displayId;
      _title = $v.title;
      _status = $v.status;
      _summary = $v.summary;
      _tags = $v.tags?.toBuilder();
      _itemCount = $v.itemCount;
      _items = $v.items?.toBuilder();
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _owner = $v.owner?.toBuilder();
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _members = $v.members?.toBuilder();
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
  void replace(Investigation other) {
    _$v = other as _$Investigation;
  }

  @override
  void update(void Function(InvestigationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Investigation build() => _build();

  _$Investigation _build() {
    _$Investigation _$result;
    try {
      _$result =
          _$v ??
          _$Investigation._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'Investigation',
              'id',
            ),
            displayId: BuiltValueNullFieldError.checkNotNull(
              displayId,
              r'Investigation',
              'displayId',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'Investigation',
              'title',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'Investigation',
              'status',
            ),
            summary: summary,
            tags: _tags?.build(),
            itemCount: itemCount,
            items: _items?.build(),
            createdBy: BuiltValueNullFieldError.checkNotNull(
              createdBy,
              r'Investigation',
              'createdBy',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Investigation',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'Investigation',
              'updatedAt',
            ),
            owner: _owner?.build(),
            visibility: visibility,
            tlp: tlp,
            members: _members?.build(),
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

        _$failedField = 'items';
        _items?.build();

        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'members';
        _members?.build();

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
          r'Investigation',
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
