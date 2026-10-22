// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_assign_result_skipped_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TagAssignResultSkippedInnerReasonEnum
    _$tagAssignResultSkippedInnerReasonEnum_notVisible =
    const TagAssignResultSkippedInnerReasonEnum._('notVisible');
const TagAssignResultSkippedInnerReasonEnum
    _$tagAssignResultSkippedInnerReasonEnum_invalidRef =
    const TagAssignResultSkippedInnerReasonEnum._('invalidRef');

TagAssignResultSkippedInnerReasonEnum
    _$tagAssignResultSkippedInnerReasonEnumValueOf(String name) {
  switch (name) {
    case 'notVisible':
      return _$tagAssignResultSkippedInnerReasonEnum_notVisible;
    case 'invalidRef':
      return _$tagAssignResultSkippedInnerReasonEnum_invalidRef;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TagAssignResultSkippedInnerReasonEnum>
    _$tagAssignResultSkippedInnerReasonEnumValues = BuiltSet<
        TagAssignResultSkippedInnerReasonEnum>(const <TagAssignResultSkippedInnerReasonEnum>[
  _$tagAssignResultSkippedInnerReasonEnum_notVisible,
  _$tagAssignResultSkippedInnerReasonEnum_invalidRef,
]);

Serializer<TagAssignResultSkippedInnerReasonEnum>
    _$tagAssignResultSkippedInnerReasonEnumSerializer =
    _$TagAssignResultSkippedInnerReasonEnumSerializer();

class _$TagAssignResultSkippedInnerReasonEnumSerializer
    implements PrimitiveSerializer<TagAssignResultSkippedInnerReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'notVisible': 'not-visible',
    'invalidRef': 'invalid-ref',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'not-visible': 'notVisible',
    'invalid-ref': 'invalidRef',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TagAssignResultSkippedInnerReasonEnum
  ];
  @override
  final String wireName = 'TagAssignResultSkippedInnerReasonEnum';

  @override
  Object serialize(
          Serializers serializers, TagAssignResultSkippedInnerReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TagAssignResultSkippedInnerReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TagAssignResultSkippedInnerReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TagAssignResultSkippedInner extends TagAssignResultSkippedInner {
  @override
  final String ref;
  @override
  final TagAssignResultSkippedInnerReasonEnum reason;

  factory _$TagAssignResultSkippedInner(
          [void Function(TagAssignResultSkippedInnerBuilder)? updates]) =>
      (TagAssignResultSkippedInnerBuilder()..update(updates))._build();

  _$TagAssignResultSkippedInner._({required this.ref, required this.reason})
      : super._();
  @override
  TagAssignResultSkippedInner rebuild(
          void Function(TagAssignResultSkippedInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagAssignResultSkippedInnerBuilder toBuilder() =>
      TagAssignResultSkippedInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagAssignResultSkippedInner &&
        ref == other.ref &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagAssignResultSkippedInner')
          ..add('ref', ref)
          ..add('reason', reason))
        .toString();
  }
}

class TagAssignResultSkippedInnerBuilder
    implements
        Builder<TagAssignResultSkippedInner,
            TagAssignResultSkippedInnerBuilder> {
  _$TagAssignResultSkippedInner? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  TagAssignResultSkippedInnerReasonEnum? _reason;
  TagAssignResultSkippedInnerReasonEnum? get reason => _$this._reason;
  set reason(TagAssignResultSkippedInnerReasonEnum? reason) =>
      _$this._reason = reason;

  TagAssignResultSkippedInnerBuilder() {
    TagAssignResultSkippedInner._defaults(this);
  }

  TagAssignResultSkippedInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagAssignResultSkippedInner other) {
    _$v = other as _$TagAssignResultSkippedInner;
  }

  @override
  void update(void Function(TagAssignResultSkippedInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagAssignResultSkippedInner build() => _build();

  _$TagAssignResultSkippedInner _build() {
    final _$result = _$v ??
        _$TagAssignResultSkippedInner._(
          ref: BuiltValueNullFieldError.checkNotNull(
              ref, r'TagAssignResultSkippedInner', 'ref'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'TagAssignResultSkippedInner', 'reason'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
