// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecursorPatchStatusEnum _$precursorPatchStatusEnum_retired =
    const PrecursorPatchStatusEnum._('retired');
const PrecursorPatchStatusEnum _$precursorPatchStatusEnum_validated =
    const PrecursorPatchStatusEnum._('validated');
const PrecursorPatchStatusEnum
_$precursorPatchStatusEnum_unknownDefaultOpenApi =
    const PrecursorPatchStatusEnum._('unknownDefaultOpenApi');

PrecursorPatchStatusEnum _$precursorPatchStatusEnumValueOf(String name) {
  switch (name) {
    case 'retired':
      return _$precursorPatchStatusEnum_retired;
    case 'validated':
      return _$precursorPatchStatusEnum_validated;
    case 'unknownDefaultOpenApi':
      return _$precursorPatchStatusEnum_unknownDefaultOpenApi;
    default:
      return _$precursorPatchStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorPatchStatusEnum> _$precursorPatchStatusEnumValues =
    BuiltSet<PrecursorPatchStatusEnum>(const <PrecursorPatchStatusEnum>[
      _$precursorPatchStatusEnum_retired,
      _$precursorPatchStatusEnum_validated,
      _$precursorPatchStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<PrecursorPatchStatusEnum> _$precursorPatchStatusEnumSerializer =
    _$PrecursorPatchStatusEnumSerializer();

class _$PrecursorPatchStatusEnumSerializer
    implements PrimitiveSerializer<PrecursorPatchStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'retired': 'retired',
    'validated': 'validated',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'retired': 'retired',
    'validated': 'validated',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorPatchStatusEnum];
  @override
  final String wireName = 'PrecursorPatchStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorPatchStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorPatchStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorPatchStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorPatch extends PrecursorPatch {
  @override
  final PrecursorPatchStatusEnum status;
  @override
  final String reason;

  factory _$PrecursorPatch([void Function(PrecursorPatchBuilder)? updates]) =>
      (PrecursorPatchBuilder()..update(updates))._build();

  _$PrecursorPatch._({required this.status, required this.reason}) : super._();
  @override
  PrecursorPatch rebuild(void Function(PrecursorPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorPatchBuilder toBuilder() => PrecursorPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorPatch &&
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
    return (newBuiltValueToStringHelper(r'PrecursorPatch')
          ..add('status', status)
          ..add('reason', reason))
        .toString();
  }
}

class PrecursorPatchBuilder
    implements Builder<PrecursorPatch, PrecursorPatchBuilder> {
  _$PrecursorPatch? _$v;

  PrecursorPatchStatusEnum? _status;
  PrecursorPatchStatusEnum? get status => _$this._status;
  set status(PrecursorPatchStatusEnum? status) => _$this._status = status;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  PrecursorPatchBuilder() {
    PrecursorPatch._defaults(this);
  }

  PrecursorPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorPatch other) {
    _$v = other as _$PrecursorPatch;
  }

  @override
  void update(void Function(PrecursorPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorPatch build() => _build();

  _$PrecursorPatch _build() {
    final _$result =
        _$v ??
        _$PrecursorPatch._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'PrecursorPatch',
            'status',
          ),
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'PrecursorPatch',
            'reason',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
