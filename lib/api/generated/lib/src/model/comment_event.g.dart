// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CommentEventReasonEnum _$commentEventReasonEnum_mention =
    const CommentEventReasonEnum._('mention');
const CommentEventReasonEnum _$commentEventReasonEnum_reply =
    const CommentEventReasonEnum._('reply');
const CommentEventReasonEnum _$commentEventReasonEnum_unknownDefaultOpenApi =
    const CommentEventReasonEnum._('unknownDefaultOpenApi');

CommentEventReasonEnum _$commentEventReasonEnumValueOf(String name) {
  switch (name) {
    case 'mention':
      return _$commentEventReasonEnum_mention;
    case 'reply':
      return _$commentEventReasonEnum_reply;
    case 'unknownDefaultOpenApi':
      return _$commentEventReasonEnum_unknownDefaultOpenApi;
    default:
      return _$commentEventReasonEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CommentEventReasonEnum> _$commentEventReasonEnumValues =
    BuiltSet<CommentEventReasonEnum>(const <CommentEventReasonEnum>[
      _$commentEventReasonEnum_mention,
      _$commentEventReasonEnum_reply,
      _$commentEventReasonEnum_unknownDefaultOpenApi,
    ]);

Serializer<CommentEventReasonEnum> _$commentEventReasonEnumSerializer =
    _$CommentEventReasonEnumSerializer();

class _$CommentEventReasonEnumSerializer
    implements PrimitiveSerializer<CommentEventReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mention': 'mention',
    'reply': 'reply',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mention': 'mention',
    'reply': 'reply',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CommentEventReasonEnum];
  @override
  final String wireName = 'CommentEventReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    CommentEventReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CommentEventReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CommentEventReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CommentEvent extends CommentEvent {
  @override
  final CommentEventReasonEnum reason;
  @override
  final String annotationId;
  @override
  final String? parentId;
  @override
  final String targetRef;
  @override
  final PrincipalSummary author;
  @override
  final String? excerpt;
  @override
  final DateTime at;

  factory _$CommentEvent([void Function(CommentEventBuilder)? updates]) =>
      (CommentEventBuilder()..update(updates))._build();

  _$CommentEvent._({
    required this.reason,
    required this.annotationId,
    this.parentId,
    required this.targetRef,
    required this.author,
    this.excerpt,
    required this.at,
  }) : super._();
  @override
  CommentEvent rebuild(void Function(CommentEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentEventBuilder toBuilder() => CommentEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentEvent &&
        reason == other.reason &&
        annotationId == other.annotationId &&
        parentId == other.parentId &&
        targetRef == other.targetRef &&
        author == other.author &&
        excerpt == other.excerpt &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, annotationId.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, targetRef.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, excerpt.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommentEvent')
          ..add('reason', reason)
          ..add('annotationId', annotationId)
          ..add('parentId', parentId)
          ..add('targetRef', targetRef)
          ..add('author', author)
          ..add('excerpt', excerpt)
          ..add('at', at))
        .toString();
  }
}

class CommentEventBuilder
    implements Builder<CommentEvent, CommentEventBuilder> {
  _$CommentEvent? _$v;

  CommentEventReasonEnum? _reason;
  CommentEventReasonEnum? get reason => _$this._reason;
  set reason(CommentEventReasonEnum? reason) => _$this._reason = reason;

  String? _annotationId;
  String? get annotationId => _$this._annotationId;
  set annotationId(String? annotationId) => _$this._annotationId = annotationId;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  String? _targetRef;
  String? get targetRef => _$this._targetRef;
  set targetRef(String? targetRef) => _$this._targetRef = targetRef;

  PrincipalSummaryBuilder? _author;
  PrincipalSummaryBuilder get author =>
      _$this._author ??= PrincipalSummaryBuilder();
  set author(PrincipalSummaryBuilder? author) => _$this._author = author;

  String? _excerpt;
  String? get excerpt => _$this._excerpt;
  set excerpt(String? excerpt) => _$this._excerpt = excerpt;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  CommentEventBuilder() {
    CommentEvent._defaults(this);
  }

  CommentEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _annotationId = $v.annotationId;
      _parentId = $v.parentId;
      _targetRef = $v.targetRef;
      _author = $v.author.toBuilder();
      _excerpt = $v.excerpt;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentEvent other) {
    _$v = other as _$CommentEvent;
  }

  @override
  void update(void Function(CommentEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommentEvent build() => _build();

  _$CommentEvent _build() {
    _$CommentEvent _$result;
    try {
      _$result =
          _$v ??
          _$CommentEvent._(
            reason: BuiltValueNullFieldError.checkNotNull(
              reason,
              r'CommentEvent',
              'reason',
            ),
            annotationId: BuiltValueNullFieldError.checkNotNull(
              annotationId,
              r'CommentEvent',
              'annotationId',
            ),
            parentId: parentId,
            targetRef: BuiltValueNullFieldError.checkNotNull(
              targetRef,
              r'CommentEvent',
              'targetRef',
            ),
            author: author.build(),
            excerpt: excerpt,
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'CommentEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CommentEvent',
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
