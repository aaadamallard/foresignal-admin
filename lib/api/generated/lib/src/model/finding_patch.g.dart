// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finding_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FindingPatchStatusEnum _$findingPatchStatusEnum_dismissed =
    const FindingPatchStatusEnum._('dismissed');

FindingPatchStatusEnum _$findingPatchStatusEnumValueOf(String name) {
  switch (name) {
    case 'dismissed':
      return _$findingPatchStatusEnum_dismissed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FindingPatchStatusEnum> _$findingPatchStatusEnumValues =
    BuiltSet<FindingPatchStatusEnum>(const <FindingPatchStatusEnum>[
  _$findingPatchStatusEnum_dismissed,
]);

Serializer<FindingPatchStatusEnum> _$findingPatchStatusEnumSerializer =
    _$FindingPatchStatusEnumSerializer();

class _$FindingPatchStatusEnumSerializer
    implements PrimitiveSerializer<FindingPatchStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'dismissed': 'dismissed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'dismissed': 'dismissed',
  };

  @override
  final Iterable<Type> types = const <Type>[FindingPatchStatusEnum];
  @override
  final String wireName = 'FindingPatchStatusEnum';

  @override
  Object serialize(Serializers serializers, FindingPatchStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FindingPatchStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FindingPatchStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FindingPatch extends FindingPatch {
  @override
  final FindingPatchStatusEnum status;
  @override
  final String reason;

  factory _$FindingPatch([void Function(FindingPatchBuilder)? updates]) =>
      (FindingPatchBuilder()..update(updates))._build();

  _$FindingPatch._({required this.status, required this.reason}) : super._();
  @override
  FindingPatch rebuild(void Function(FindingPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FindingPatchBuilder toBuilder() => FindingPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FindingPatch &&
        status == other.status &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FindingPatch')
          ..add('status', status)
          ..add('reason', reason))
        .toString();
  }
}

class FindingPatchBuilder
    implements Builder<FindingPatch, FindingPatchBuilder> {
  _$FindingPatch? _$v;

  FindingPatchStatusEnum? _status;
  FindingPatchStatusEnum? get status => _$this._status;
  set status(FindingPatchStatusEnum? status) => _$this._status = status;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  FindingPatchBuilder() {
    FindingPatch._defaults(this);
  }

  FindingPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FindingPatch other) {
    _$v = other as _$FindingPatch;
  }

  @override
  void update(void Function(FindingPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FindingPatch build() => _build();

  _$FindingPatch _build() {
    final _$result = _$v ??
        _$FindingPatch._(
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'FindingPatch', 'status'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'FindingPatch', 'reason'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
