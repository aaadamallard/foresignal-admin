// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotation_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnnotationInputKindEnum _$annotationInputKindEnum_note =
    const AnnotationInputKindEnum._('note');
const AnnotationInputKindEnum _$annotationInputKindEnum_verdict =
    const AnnotationInputKindEnum._('verdict');

AnnotationInputKindEnum _$annotationInputKindEnumValueOf(String name) {
  switch (name) {
    case 'note':
      return _$annotationInputKindEnum_note;
    case 'verdict':
      return _$annotationInputKindEnum_verdict;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnnotationInputKindEnum> _$annotationInputKindEnumValues =
    BuiltSet<AnnotationInputKindEnum>(const <AnnotationInputKindEnum>[
      _$annotationInputKindEnum_note,
      _$annotationInputKindEnum_verdict,
    ]);

const AnnotationInputVerdictEnum _$annotationInputVerdictEnum_confirmed =
    const AnnotationInputVerdictEnum._('confirmed');
const AnnotationInputVerdictEnum _$annotationInputVerdictEnum_rejected =
    const AnnotationInputVerdictEnum._('rejected');
const AnnotationInputVerdictEnum _$annotationInputVerdictEnum_needsReview =
    const AnnotationInputVerdictEnum._('needsReview');
const AnnotationInputVerdictEnum _$annotationInputVerdictEnum_duplicateOf =
    const AnnotationInputVerdictEnum._('duplicateOf');

AnnotationInputVerdictEnum _$annotationInputVerdictEnumValueOf(String name) {
  switch (name) {
    case 'confirmed':
      return _$annotationInputVerdictEnum_confirmed;
    case 'rejected':
      return _$annotationInputVerdictEnum_rejected;
    case 'needsReview':
      return _$annotationInputVerdictEnum_needsReview;
    case 'duplicateOf':
      return _$annotationInputVerdictEnum_duplicateOf;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnnotationInputVerdictEnum> _$annotationInputVerdictEnumValues =
    BuiltSet<AnnotationInputVerdictEnum>(const <AnnotationInputVerdictEnum>[
      _$annotationInputVerdictEnum_confirmed,
      _$annotationInputVerdictEnum_rejected,
      _$annotationInputVerdictEnum_needsReview,
      _$annotationInputVerdictEnum_duplicateOf,
    ]);

Serializer<AnnotationInputKindEnum> _$annotationInputKindEnumSerializer =
    _$AnnotationInputKindEnumSerializer();
Serializer<AnnotationInputVerdictEnum> _$annotationInputVerdictEnumSerializer =
    _$AnnotationInputVerdictEnumSerializer();

class _$AnnotationInputKindEnumSerializer
    implements PrimitiveSerializer<AnnotationInputKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'note': 'note',
    'verdict': 'verdict',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'note': 'note',
    'verdict': 'verdict',
  };

  @override
  final Iterable<Type> types = const <Type>[AnnotationInputKindEnum];
  @override
  final String wireName = 'AnnotationInputKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnnotationInputKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnnotationInputKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnnotationInputKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnnotationInputVerdictEnumSerializer
    implements PrimitiveSerializer<AnnotationInputVerdictEnum> {
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
  final Iterable<Type> types = const <Type>[AnnotationInputVerdictEnum];
  @override
  final String wireName = 'AnnotationInputVerdictEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnnotationInputVerdictEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnnotationInputVerdictEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnnotationInputVerdictEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnnotationInput extends AnnotationInput {
  @override
  final AnnotationInputKindEnum kind;
  @override
  final AnnotationInputVerdictEnum? verdict;
  @override
  final String? duplicateOfRef;
  @override
  final String? body;
  @override
  final BuiltList<String>? tags;
  @override
  final bool? private;
  @override
  final bool? applyStatus;

  factory _$AnnotationInput([void Function(AnnotationInputBuilder)? updates]) =>
      (AnnotationInputBuilder()..update(updates))._build();

  _$AnnotationInput._({
    required this.kind,
    this.verdict,
    this.duplicateOfRef,
    this.body,
    this.tags,
    this.private,
    this.applyStatus,
  }) : super._();
  @override
  AnnotationInput rebuild(void Function(AnnotationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnotationInputBuilder toBuilder() => AnnotationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnotationInput &&
        kind == other.kind &&
        verdict == other.verdict &&
        duplicateOfRef == other.duplicateOfRef &&
        body == other.body &&
        tags == other.tags &&
        private == other.private &&
        applyStatus == other.applyStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jc(_$hash, duplicateOfRef.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, applyStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnotationInput')
          ..add('kind', kind)
          ..add('verdict', verdict)
          ..add('duplicateOfRef', duplicateOfRef)
          ..add('body', body)
          ..add('tags', tags)
          ..add('private', private)
          ..add('applyStatus', applyStatus))
        .toString();
  }
}

class AnnotationInputBuilder
    implements Builder<AnnotationInput, AnnotationInputBuilder> {
  _$AnnotationInput? _$v;

  AnnotationInputKindEnum? _kind;
  AnnotationInputKindEnum? get kind => _$this._kind;
  set kind(AnnotationInputKindEnum? kind) => _$this._kind = kind;

  AnnotationInputVerdictEnum? _verdict;
  AnnotationInputVerdictEnum? get verdict => _$this._verdict;
  set verdict(AnnotationInputVerdictEnum? verdict) => _$this._verdict = verdict;

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

  bool? _applyStatus;
  bool? get applyStatus => _$this._applyStatus;
  set applyStatus(bool? applyStatus) => _$this._applyStatus = applyStatus;

  AnnotationInputBuilder() {
    AnnotationInput._defaults(this);
  }

  AnnotationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _verdict = $v.verdict;
      _duplicateOfRef = $v.duplicateOfRef;
      _body = $v.body;
      _tags = $v.tags?.toBuilder();
      _private = $v.private;
      _applyStatus = $v.applyStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnotationInput other) {
    _$v = other as _$AnnotationInput;
  }

  @override
  void update(void Function(AnnotationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnotationInput build() => _build();

  _$AnnotationInput _build() {
    _$AnnotationInput _$result;
    try {
      _$result =
          _$v ??
          _$AnnotationInput._(
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'AnnotationInput',
              'kind',
            ),
            verdict: verdict,
            duplicateOfRef: duplicateOfRef,
            body: body,
            tags: _tags?.build(),
            private: private,
            applyStatus: applyStatus,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnnotationInput',
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
