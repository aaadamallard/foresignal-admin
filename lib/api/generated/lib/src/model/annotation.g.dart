// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnnotationKindEnum _$annotationKindEnum_note = const AnnotationKindEnum._(
  'note',
);
const AnnotationKindEnum _$annotationKindEnum_verdict =
    const AnnotationKindEnum._('verdict');

AnnotationKindEnum _$annotationKindEnumValueOf(String name) {
  switch (name) {
    case 'note':
      return _$annotationKindEnum_note;
    case 'verdict':
      return _$annotationKindEnum_verdict;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnnotationKindEnum> _$annotationKindEnumValues =
    BuiltSet<AnnotationKindEnum>(const <AnnotationKindEnum>[
      _$annotationKindEnum_note,
      _$annotationKindEnum_verdict,
    ]);

const AnnotationVerdictEnum _$annotationVerdictEnum_confirmed =
    const AnnotationVerdictEnum._('confirmed');
const AnnotationVerdictEnum _$annotationVerdictEnum_rejected =
    const AnnotationVerdictEnum._('rejected');
const AnnotationVerdictEnum _$annotationVerdictEnum_needsReview =
    const AnnotationVerdictEnum._('needsReview');
const AnnotationVerdictEnum _$annotationVerdictEnum_duplicateOf =
    const AnnotationVerdictEnum._('duplicateOf');

AnnotationVerdictEnum _$annotationVerdictEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$annotationVerdictEnum_confirmed;
    case 'rejected':
      return _$annotationVerdictEnum_rejected;
    case 'needsReview':
      return _$annotationVerdictEnum_needsReview;
    case 'duplicateOf':
      return _$annotationVerdictEnum_duplicateOf;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnnotationVerdictEnum> _$annotationVerdictEnumValues =
    BuiltSet<AnnotationVerdictEnum>(const <AnnotationVerdictEnum>[
      _$annotationVerdictEnum_confirmed,
      _$annotationVerdictEnum_rejected,
      _$annotationVerdictEnum_needsReview,
      _$annotationVerdictEnum_duplicateOf,
    ]);

Serializer<AnnotationKindEnum> _$annotationKindEnumSerializer =
    _$AnnotationKindEnumSerializer();
Serializer<AnnotationVerdictEnum> _$annotationVerdictEnumSerializer =
    _$AnnotationVerdictEnumSerializer();

class _$AnnotationKindEnumSerializer
    implements PrimitiveSerializer<AnnotationKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'note': 'note',
    'verdict': 'verdict',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'note': 'note',
    'verdict': 'verdict',
  };

  @override
  final Iterable<Type> types = const <Type>[AnnotationKindEnum];
  @override
  final String wireName = 'AnnotationKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnnotationKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnnotationKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnnotationKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnnotationVerdictEnumSerializer
    implements PrimitiveSerializer<AnnotationVerdictEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'confirmed': 'confirmed',
    'rejected': 'rejected',
    'needsReview': 'needs-review',
    'duplicateOf': 'duplicate-of',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'confirmed': 'confirmed',
    'rejected': 'rejected',
    'needs-review': 'needsReview',
    'duplicate-of': 'duplicateOf',
  };

  @override
  final Iterable<Type> types = const <Type>[AnnotationVerdictEnum];
  @override
  final String wireName = 'AnnotationVerdictEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnnotationVerdictEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnnotationVerdictEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnnotationVerdictEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Annotation extends Annotation {
  @override
  final String id;
  @override
  final String? ref;
  @override
  final String targetRef;
  @override
  final AnnotationKindEnum kind;
  @override
  final AnnotationVerdictEnum? verdict;
  @override
  final String? duplicateOfRef;
  @override
  final String? body;
  @override
  final BuiltList<String>? tags;
  @override
  final String author;
  @override
  final bool private;
  @override
  final bool? statusApplied;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? deletedAt;
  @override
  final String? parentId;
  @override
  final BuiltList<String>? mentions;
  @override
  final BuiltList<String>? droppedMentions;
  @override
  final bool? resolved;
  @override
  final DateTime? editedAt;
  @override
  final String? tlp;
  @override
  final Visibility? visibility;

  factory _$Annotation([void Function(AnnotationBuilder)? updates]) =>
      (AnnotationBuilder()..update(updates))._build();

  _$Annotation._({
    required this.id,
    this.ref,
    required this.targetRef,
    required this.kind,
    this.verdict,
    this.duplicateOfRef,
    this.body,
    this.tags,
    required this.author,
    required this.private,
    this.statusApplied,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    this.parentId,
    this.mentions,
    this.droppedMentions,
    this.resolved,
    this.editedAt,
    this.tlp,
    this.visibility,
  }) : super._();
  @override
  Annotation rebuild(void Function(AnnotationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnotationBuilder toBuilder() => AnnotationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Annotation &&
        id == other.id &&
        ref == other.ref &&
        targetRef == other.targetRef &&
        kind == other.kind &&
        verdict == other.verdict &&
        duplicateOfRef == other.duplicateOfRef &&
        body == other.body &&
        tags == other.tags &&
        author == other.author &&
        private == other.private &&
        statusApplied == other.statusApplied &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt &&
        parentId == other.parentId &&
        mentions == other.mentions &&
        droppedMentions == other.droppedMentions &&
        resolved == other.resolved &&
        editedAt == other.editedAt &&
        tlp == other.tlp &&
        visibility == other.visibility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, targetRef.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jc(_$hash, duplicateOfRef.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, statusApplied.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, deletedAt.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, mentions.hashCode);
    _$hash = $jc(_$hash, droppedMentions.hashCode);
    _$hash = $jc(_$hash, resolved.hashCode);
    _$hash = $jc(_$hash, editedAt.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Annotation')
          ..add('id', id)
          ..add('ref', ref)
          ..add('targetRef', targetRef)
          ..add('kind', kind)
          ..add('verdict', verdict)
          ..add('duplicateOfRef', duplicateOfRef)
          ..add('body', body)
          ..add('tags', tags)
          ..add('author', author)
          ..add('private', private)
          ..add('statusApplied', statusApplied)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('deletedAt', deletedAt)
          ..add('parentId', parentId)
          ..add('mentions', mentions)
          ..add('droppedMentions', droppedMentions)
          ..add('resolved', resolved)
          ..add('editedAt', editedAt)
          ..add('tlp', tlp)
          ..add('visibility', visibility))
        .toString();
  }
}

class AnnotationBuilder implements Builder<Annotation, AnnotationBuilder> {
  _$Annotation? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _targetRef;
  String? get targetRef => _$this._targetRef;
  set targetRef(String? targetRef) => _$this._targetRef = targetRef;

  AnnotationKindEnum? _kind;
  AnnotationKindEnum? get kind => _$this._kind;
  set kind(AnnotationKindEnum? kind) => _$this._kind = kind;

  AnnotationVerdictEnum? _verdict;
  AnnotationVerdictEnum? get verdict => _$this._verdict;
  set verdict(AnnotationVerdictEnum? verdict) => _$this._verdict = verdict;

  String? _duplicateOfRef;
  String? get duplicateOfRef => _$this._duplicateOfRef;
  set duplicateOfRef(String? duplicateOfRef) =>
      _$this._duplicateOfRef = duplicateOfRef;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  bool? _statusApplied;
  bool? get statusApplied => _$this._statusApplied;
  set statusApplied(bool? statusApplied) =>
      _$this._statusApplied = statusApplied;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _deletedAt;
  DateTime? get deletedAt => _$this._deletedAt;
  set deletedAt(DateTime? deletedAt) => _$this._deletedAt = deletedAt;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  ListBuilder<String>? _mentions;
  ListBuilder<String> get mentions =>
      _$this._mentions ??= ListBuilder<String>();
  set mentions(ListBuilder<String>? mentions) => _$this._mentions = mentions;

  ListBuilder<String>? _droppedMentions;
  ListBuilder<String> get droppedMentions =>
      _$this._droppedMentions ??= ListBuilder<String>();
  set droppedMentions(ListBuilder<String>? droppedMentions) =>
      _$this._droppedMentions = droppedMentions;

  bool? _resolved;
  bool? get resolved => _$this._resolved;
  set resolved(bool? resolved) => _$this._resolved = resolved;

  DateTime? _editedAt;
  DateTime? get editedAt => _$this._editedAt;
  set editedAt(DateTime? editedAt) => _$this._editedAt = editedAt;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  AnnotationBuilder() {
    Annotation._defaults(this);
  }

  AnnotationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _targetRef = $v.targetRef;
      _kind = $v.kind;
      _verdict = $v.verdict;
      _duplicateOfRef = $v.duplicateOfRef;
      _body = $v.body;
      _tags = $v.tags?.toBuilder();
      _author = $v.author;
      _private = $v.private;
      _statusApplied = $v.statusApplied;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _deletedAt = $v.deletedAt;
      _parentId = $v.parentId;
      _mentions = $v.mentions?.toBuilder();
      _droppedMentions = $v.droppedMentions?.toBuilder();
      _resolved = $v.resolved;
      _editedAt = $v.editedAt;
      _tlp = $v.tlp;
      _visibility = $v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Annotation other) {
    _$v = other as _$Annotation;
  }

  @override
  void update(void Function(AnnotationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Annotation build() => _build();

  _$Annotation _build() {
    _$Annotation _$result;
    try {
      _$result =
          _$v ??
          _$Annotation._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Annotation', 'id'),
            ref: ref,
            targetRef: BuiltValueNullFieldError.checkNotNull(
              targetRef,
              r'Annotation',
              'targetRef',
            ),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'Annotation',
              'kind',
            ),
            verdict: verdict,
            duplicateOfRef: duplicateOfRef,
            body: body,
            tags: _tags?.build(),
            author: BuiltValueNullFieldError.checkNotNull(
              author,
              r'Annotation',
              'author',
            ),
            private: BuiltValueNullFieldError.checkNotNull(
              private,
              r'Annotation',
              'private',
            ),
            statusApplied: statusApplied,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Annotation',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'Annotation',
              'updatedAt',
            ),
            deletedAt: deletedAt,
            parentId: parentId,
            mentions: _mentions?.build(),
            droppedMentions: _droppedMentions?.build(),
            resolved: resolved,
            editedAt: editedAt,
            tlp: tlp,
            visibility: visibility,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'mentions';
        _mentions?.build();
        _$failedField = 'droppedMentions';
        _droppedMentions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Annotation',
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
