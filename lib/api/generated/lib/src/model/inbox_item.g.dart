// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InboxItemCategoryEnum _$inboxItemCategoryEnum_mention =
    const InboxItemCategoryEnum._('mention');
const InboxItemCategoryEnum _$inboxItemCategoryEnum_share =
    const InboxItemCategoryEnum._('share');
const InboxItemCategoryEnum _$inboxItemCategoryEnum_report =
    const InboxItemCategoryEnum._('report');
const InboxItemCategoryEnum _$inboxItemCategoryEnum_chronicle =
    const InboxItemCategoryEnum._('chronicle');
const InboxItemCategoryEnum _$inboxItemCategoryEnum_assessment =
    const InboxItemCategoryEnum._('assessment');
const InboxItemCategoryEnum _$inboxItemCategoryEnum_commentReply =
    const InboxItemCategoryEnum._('commentReply');
const InboxItemCategoryEnum _$inboxItemCategoryEnum_accessRequest =
    const InboxItemCategoryEnum._('accessRequest');
const InboxItemCategoryEnum _$inboxItemCategoryEnum_savedSearch =
    const InboxItemCategoryEnum._('savedSearch');
const InboxItemCategoryEnum _$inboxItemCategoryEnum_system =
    const InboxItemCategoryEnum._('system');
const InboxItemCategoryEnum _$inboxItemCategoryEnum_unknownDefaultOpenApi =
    const InboxItemCategoryEnum._('unknownDefaultOpenApi');

InboxItemCategoryEnum _$inboxItemCategoryEnumValueOf(String name) {
  switch (name) {
    case 'mention':
      return _$inboxItemCategoryEnum_mention;
    case 'share':
      return _$inboxItemCategoryEnum_share;
    case 'report':
      return _$inboxItemCategoryEnum_report;
    case 'chronicle':
      return _$inboxItemCategoryEnum_chronicle;
    case 'assessment':
      return _$inboxItemCategoryEnum_assessment;
    case 'commentReply':
      return _$inboxItemCategoryEnum_commentReply;
    case 'accessRequest':
      return _$inboxItemCategoryEnum_accessRequest;
    case 'savedSearch':
      return _$inboxItemCategoryEnum_savedSearch;
    case 'system':
      return _$inboxItemCategoryEnum_system;
    case 'unknownDefaultOpenApi':
      return _$inboxItemCategoryEnum_unknownDefaultOpenApi;
    default:
      return _$inboxItemCategoryEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<InboxItemCategoryEnum> _$inboxItemCategoryEnumValues =
    BuiltSet<InboxItemCategoryEnum>(const <InboxItemCategoryEnum>[
      _$inboxItemCategoryEnum_mention,
      _$inboxItemCategoryEnum_share,
      _$inboxItemCategoryEnum_report,
      _$inboxItemCategoryEnum_chronicle,
      _$inboxItemCategoryEnum_assessment,
      _$inboxItemCategoryEnum_commentReply,
      _$inboxItemCategoryEnum_accessRequest,
      _$inboxItemCategoryEnum_savedSearch,
      _$inboxItemCategoryEnum_system,
      _$inboxItemCategoryEnum_unknownDefaultOpenApi,
    ]);

Serializer<InboxItemCategoryEnum> _$inboxItemCategoryEnumSerializer =
    _$InboxItemCategoryEnumSerializer();

class _$InboxItemCategoryEnumSerializer
    implements PrimitiveSerializer<InboxItemCategoryEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mention': 'mention',
    'share': 'share',
    'report': 'report',
    'chronicle': 'chronicle',
    'assessment': 'assessment',
    'commentReply': 'comment-reply',
    'accessRequest': 'access-request',
    'savedSearch': 'saved-search',
    'system': 'system',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mention': 'mention',
    'share': 'share',
    'report': 'report',
    'chronicle': 'chronicle',
    'assessment': 'assessment',
    'comment-reply': 'commentReply',
    'access-request': 'accessRequest',
    'saved-search': 'savedSearch',
    'system': 'system',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[InboxItemCategoryEnum];
  @override
  final String wireName = 'InboxItemCategoryEnum';

  @override
  Object serialize(
    Serializers serializers,
    InboxItemCategoryEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InboxItemCategoryEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InboxItemCategoryEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$InboxItem extends InboxItem {
  @override
  final int id;
  @override
  final String event;
  @override
  final InboxItemCategoryEnum category;
  @override
  final Severity? severity;
  @override
  final String title;
  @override
  final String? body;
  @override
  final String? ref;
  @override
  final ObjectEnvelope? envelope;
  @override
  final PrincipalSummary? actor;
  @override
  final String? tlp;
  @override
  final DateTime createdAt;
  @override
  final bool read;

  factory _$InboxItem([void Function(InboxItemBuilder)? updates]) =>
      (InboxItemBuilder()..update(updates))._build();

  _$InboxItem._({
    required this.id,
    required this.event,
    required this.category,
    this.severity,
    required this.title,
    this.body,
    this.ref,
    this.envelope,
    this.actor,
    this.tlp,
    required this.createdAt,
    required this.read,
  }) : super._();
  @override
  InboxItem rebuild(void Function(InboxItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InboxItemBuilder toBuilder() => InboxItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InboxItem &&
        id == other.id &&
        event == other.event &&
        category == other.category &&
        severity == other.severity &&
        title == other.title &&
        body == other.body &&
        ref == other.ref &&
        envelope == other.envelope &&
        actor == other.actor &&
        tlp == other.tlp &&
        createdAt == other.createdAt &&
        read == other.read;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, envelope.hashCode);
    _$hash = $jc(_$hash, actor.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, read.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InboxItem')
          ..add('id', id)
          ..add('event', event)
          ..add('category', category)
          ..add('severity', severity)
          ..add('title', title)
          ..add('body', body)
          ..add('ref', ref)
          ..add('envelope', envelope)
          ..add('actor', actor)
          ..add('tlp', tlp)
          ..add('createdAt', createdAt)
          ..add('read', read))
        .toString();
  }
}

class InboxItemBuilder implements Builder<InboxItem, InboxItemBuilder> {
  _$InboxItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  InboxItemCategoryEnum? _category;
  InboxItemCategoryEnum? get category => _$this._category;
  set category(InboxItemCategoryEnum? category) => _$this._category = category;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ObjectEnvelopeBuilder? _envelope;
  ObjectEnvelopeBuilder get envelope =>
      _$this._envelope ??= ObjectEnvelopeBuilder();
  set envelope(ObjectEnvelopeBuilder? envelope) => _$this._envelope = envelope;

  PrincipalSummaryBuilder? _actor;
  PrincipalSummaryBuilder get actor =>
      _$this._actor ??= PrincipalSummaryBuilder();
  set actor(PrincipalSummaryBuilder? actor) => _$this._actor = actor;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  bool? _read;
  bool? get read => _$this._read;
  set read(bool? read) => _$this._read = read;

  InboxItemBuilder() {
    InboxItem._defaults(this);
  }

  InboxItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _event = $v.event;
      _category = $v.category;
      _severity = $v.severity;
      _title = $v.title;
      _body = $v.body;
      _ref = $v.ref;
      _envelope = $v.envelope?.toBuilder();
      _actor = $v.actor?.toBuilder();
      _tlp = $v.tlp;
      _createdAt = $v.createdAt;
      _read = $v.read;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InboxItem other) {
    _$v = other as _$InboxItem;
  }

  @override
  void update(void Function(InboxItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InboxItem build() => _build();

  _$InboxItem _build() {
    _$InboxItem _$result;
    try {
      _$result =
          _$v ??
          _$InboxItem._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'InboxItem', 'id'),
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'InboxItem',
              'event',
            ),
            category: BuiltValueNullFieldError.checkNotNull(
              category,
              r'InboxItem',
              'category',
            ),
            severity: severity,
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'InboxItem',
              'title',
            ),
            body: body,
            ref: ref,
            envelope: _envelope?.build(),
            actor: _actor?.build(),
            tlp: tlp,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'InboxItem',
              'createdAt',
            ),
            read: BuiltValueNullFieldError.checkNotNull(
              read,
              r'InboxItem',
              'read',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'envelope';
        _envelope?.build();
        _$failedField = 'actor';
        _actor?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InboxItem',
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
