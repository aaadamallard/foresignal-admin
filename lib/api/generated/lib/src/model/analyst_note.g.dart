// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_note.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalystNotePriorityEnum _$analystNotePriorityEnum_low =
    const AnalystNotePriorityEnum._('low');
const AnalystNotePriorityEnum _$analystNotePriorityEnum_normal =
    const AnalystNotePriorityEnum._('normal');
const AnalystNotePriorityEnum _$analystNotePriorityEnum_high =
    const AnalystNotePriorityEnum._('high');

AnalystNotePriorityEnum _$analystNotePriorityEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$analystNotePriorityEnum_low;
    case 'normal':
      return _$analystNotePriorityEnum_normal;
    case 'high':
      return _$analystNotePriorityEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalystNotePriorityEnum> _$analystNotePriorityEnumValues =
    BuiltSet<AnalystNotePriorityEnum>(const <AnalystNotePriorityEnum>[
  _$analystNotePriorityEnum_low,
  _$analystNotePriorityEnum_normal,
  _$analystNotePriorityEnum_high,
]);

const AnalystNoteStatusEnum _$analystNoteStatusEnum_new_ =
    const AnalystNoteStatusEnum._('new_');
const AnalystNoteStatusEnum _$analystNoteStatusEnum_read =
    const AnalystNoteStatusEnum._('read');
const AnalystNoteStatusEnum _$analystNoteStatusEnum_dismissed =
    const AnalystNoteStatusEnum._('dismissed');

AnalystNoteStatusEnum _$analystNoteStatusEnumValueOf(String name) {
  switch (name) {
    case 'new_':
      return _$analystNoteStatusEnum_new_;
    case 'read':
      return _$analystNoteStatusEnum_read;
    case 'dismissed':
      return _$analystNoteStatusEnum_dismissed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalystNoteStatusEnum> _$analystNoteStatusEnumValues =
    BuiltSet<AnalystNoteStatusEnum>(const <AnalystNoteStatusEnum>[
  _$analystNoteStatusEnum_new_,
  _$analystNoteStatusEnum_read,
  _$analystNoteStatusEnum_dismissed,
]);

Serializer<AnalystNotePriorityEnum> _$analystNotePriorityEnumSerializer =
    _$AnalystNotePriorityEnumSerializer();
Serializer<AnalystNoteStatusEnum> _$analystNoteStatusEnumSerializer =
    _$AnalystNoteStatusEnumSerializer();

class _$AnalystNotePriorityEnumSerializer
    implements PrimitiveSerializer<AnalystNotePriorityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'normal': 'normal',
    'high': 'high',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'normal': 'normal',
    'high': 'high',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalystNotePriorityEnum];
  @override
  final String wireName = 'AnalystNotePriorityEnum';

  @override
  Object serialize(Serializers serializers, AnalystNotePriorityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalystNotePriorityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalystNotePriorityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalystNoteStatusEnumSerializer
    implements PrimitiveSerializer<AnalystNoteStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'new_': 'new',
    'read': 'read',
    'dismissed': 'dismissed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'new': 'new_',
    'read': 'read',
    'dismissed': 'dismissed',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalystNoteStatusEnum];
  @override
  final String wireName = 'AnalystNoteStatusEnum';

  @override
  Object serialize(Serializers serializers, AnalystNoteStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalystNoteStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalystNoteStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalystNote extends AnalystNote {
  @override
  final String id;
  @override
  final String profileId;
  @override
  final String runId;
  @override
  final String title;
  @override
  final String body;
  @override
  final AnalystNotePriorityEnum priority;
  @override
  final BuiltList<AnalystClaim> claims;
  @override
  final BuiltList<String>? citations;
  @override
  final bool? private;
  @override
  final AnalystNoteStatusEnum status;
  @override
  final String? model;
  @override
  final String? footer;
  @override
  final DateTime createdAt;

  factory _$AnalystNote([void Function(AnalystNoteBuilder)? updates]) =>
      (AnalystNoteBuilder()..update(updates))._build();

  _$AnalystNote._(
      {required this.id,
      required this.profileId,
      required this.runId,
      required this.title,
      required this.body,
      required this.priority,
      required this.claims,
      this.citations,
      this.private,
      required this.status,
      this.model,
      this.footer,
      required this.createdAt})
      : super._();
  @override
  AnalystNote rebuild(void Function(AnalystNoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystNoteBuilder toBuilder() => AnalystNoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystNote &&
        id == other.id &&
        profileId == other.profileId &&
        runId == other.runId &&
        title == other.title &&
        body == other.body &&
        priority == other.priority &&
        claims == other.claims &&
        citations == other.citations &&
        private == other.private &&
        status == other.status &&
        model == other.model &&
        footer == other.footer &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, profileId.hashCode);
    _$hash = $jc(_$hash, runId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, claims.hashCode);
    _$hash = $jc(_$hash, citations.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, footer.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystNote')
          ..add('id', id)
          ..add('profileId', profileId)
          ..add('runId', runId)
          ..add('title', title)
          ..add('body', body)
          ..add('priority', priority)
          ..add('claims', claims)
          ..add('citations', citations)
          ..add('private', private)
          ..add('status', status)
          ..add('model', model)
          ..add('footer', footer)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class AnalystNoteBuilder implements Builder<AnalystNote, AnalystNoteBuilder> {
  _$AnalystNote? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _profileId;
  String? get profileId => _$this._profileId;
  set profileId(String? profileId) => _$this._profileId = profileId;

  String? _runId;
  String? get runId => _$this._runId;
  set runId(String? runId) => _$this._runId = runId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  AnalystNotePriorityEnum? _priority;
  AnalystNotePriorityEnum? get priority => _$this._priority;
  set priority(AnalystNotePriorityEnum? priority) =>
      _$this._priority = priority;

  ListBuilder<AnalystClaim>? _claims;
  ListBuilder<AnalystClaim> get claims =>
      _$this._claims ??= ListBuilder<AnalystClaim>();
  set claims(ListBuilder<AnalystClaim>? claims) => _$this._claims = claims;

  ListBuilder<String>? _citations;
  ListBuilder<String> get citations =>
      _$this._citations ??= ListBuilder<String>();
  set citations(ListBuilder<String>? citations) =>
      _$this._citations = citations;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  AnalystNoteStatusEnum? _status;
  AnalystNoteStatusEnum? get status => _$this._status;
  set status(AnalystNoteStatusEnum? status) => _$this._status = status;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _footer;
  String? get footer => _$this._footer;
  set footer(String? footer) => _$this._footer = footer;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  AnalystNoteBuilder() {
    AnalystNote._defaults(this);
  }

  AnalystNoteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _profileId = $v.profileId;
      _runId = $v.runId;
      _title = $v.title;
      _body = $v.body;
      _priority = $v.priority;
      _claims = $v.claims.toBuilder();
      _citations = $v.citations?.toBuilder();
      _private = $v.private;
      _status = $v.status;
      _model = $v.model;
      _footer = $v.footer;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystNote other) {
    _$v = other as _$AnalystNote;
  }

  @override
  void update(void Function(AnalystNoteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystNote build() => _build();

  _$AnalystNote _build() {
    _$AnalystNote _$result;
    try {
      _$result = _$v ??
          _$AnalystNote._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'AnalystNote', 'id'),
            profileId: BuiltValueNullFieldError.checkNotNull(
                profileId, r'AnalystNote', 'profileId'),
            runId: BuiltValueNullFieldError.checkNotNull(
                runId, r'AnalystNote', 'runId'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'AnalystNote', 'title'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'AnalystNote', 'body'),
            priority: BuiltValueNullFieldError.checkNotNull(
                priority, r'AnalystNote', 'priority'),
            claims: claims.build(),
            citations: _citations?.build(),
            private: private,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'AnalystNote', 'status'),
            model: model,
            footer: footer,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'AnalystNote', 'createdAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'claims';
        claims.build();
        _$failedField = 'citations';
        _citations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnalystNote', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
