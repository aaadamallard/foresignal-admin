// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotation_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnnotationPatchVerdictEnum _$annotationPatchVerdictEnum_confirmed =
    const AnnotationPatchVerdictEnum._('confirmed');
const AnnotationPatchVerdictEnum _$annotationPatchVerdictEnum_rejected =
    const AnnotationPatchVerdictEnum._('rejected');
const AnnotationPatchVerdictEnum _$annotationPatchVerdictEnum_needsReview =
    const AnnotationPatchVerdictEnum._('needsReview');
const AnnotationPatchVerdictEnum _$annotationPatchVerdictEnum_duplicateOf =
    const AnnotationPatchVerdictEnum._('duplicateOf');

AnnotationPatchVerdictEnum _$annotationPatchVerdictEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$annotationPatchVerdictEnum_confirmed;
    case 'rejected':
      return _$annotationPatchVerdictEnum_rejected;
    case 'needsReview':
      return _$annotationPatchVerdictEnum_needsReview;
    case 'duplicateOf':
      return _$annotationPatchVerdictEnum_duplicateOf;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnnotationPatchVerdictEnum> _$annotationPatchVerdictEnumValues =
    BuiltSet<AnnotationPatchVerdictEnum>(const <AnnotationPatchVerdictEnum>[
  _$annotationPatchVerdictEnum_confirmed,
  _$annotationPatchVerdictEnum_rejected,
  _$annotationPatchVerdictEnum_needsReview,
  _$annotationPatchVerdictEnum_duplicateOf,
]);

Serializer<AnnotationPatchVerdictEnum> _$annotationPatchVerdictEnumSerializer =
    _$AnnotationPatchVerdictEnumSerializer();

class _$AnnotationPatchVerdictEnumSerializer
    implements PrimitiveSerializer<AnnotationPatchVerdictEnum> {
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
  final Iterable<Type> types = const <Type>[AnnotationPatchVerdictEnum];
  @override
  final String wireName = 'AnnotationPatchVerdictEnum';

  @override
  Object serialize(Serializers serializers, AnnotationPatchVerdictEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnnotationPatchVerdictEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnnotationPatchVerdictEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnnotationPatch extends AnnotationPatch {
  @override
  final AnnotationPatchVerdictEnum? verdict;
  @override
  final String? duplicateOfRef;
  @override
  final String? body;
  @override
  final BuiltList<String>? tags;
  @override
  final bool? private;

  factory _$AnnotationPatch([void Function(AnnotationPatchBuilder)? updates]) =>
      (AnnotationPatchBuilder()..update(updates))._build();

  _$AnnotationPatch._(
      {this.verdict, this.duplicateOfRef, this.body, this.tags, this.private})
      : super._();
  @override
  AnnotationPatch rebuild(void Function(AnnotationPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnotationPatchBuilder toBuilder() => AnnotationPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnotationPatch &&
        verdict == other.verdict &&
        duplicateOfRef == other.duplicateOfRef &&
        body == other.body &&
        tags == other.tags &&
        private == other.private;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jc(_$hash, duplicateOfRef.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnotationPatch')
          ..add('verdict', verdict)
          ..add('duplicateOfRef', duplicateOfRef)
          ..add('body', body)
          ..add('tags', tags)
          ..add('private', private))
        .toString();
  }
}

class AnnotationPatchBuilder
    implements Builder<AnnotationPatch, AnnotationPatchBuilder> {
  _$AnnotationPatch? _$v;

  AnnotationPatchVerdictEnum? _verdict;
  AnnotationPatchVerdictEnum? get verdict => _$this._verdict;
  set verdict(AnnotationPatchVerdictEnum? verdict) => _$this._verdict = verdict;

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

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  AnnotationPatchBuilder() {
    AnnotationPatch._defaults(this);
  }

  AnnotationPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verdict = $v.verdict;
      _duplicateOfRef = $v.duplicateOfRef;
      _body = $v.body;
      _tags = $v.tags?.toBuilder();
      _private = $v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnotationPatch other) {
    _$v = other as _$AnnotationPatch;
  }

  @override
  void update(void Function(AnnotationPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnotationPatch build() => _build();

  _$AnnotationPatch _build() {
    _$AnnotationPatch _$result;
    try {
      _$result = _$v ??
          _$AnnotationPatch._(
            verdict: verdict,
            duplicateOfRef: duplicateOfRef,
            body: body,
            tags: _tags?.build(),
            private: private,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnnotationPatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
