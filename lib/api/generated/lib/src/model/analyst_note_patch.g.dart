// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_note_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalystNotePatchStatusEnum _$analystNotePatchStatusEnum_new_ =
    const AnalystNotePatchStatusEnum._('new_');
const AnalystNotePatchStatusEnum _$analystNotePatchStatusEnum_read =
    const AnalystNotePatchStatusEnum._('read');
const AnalystNotePatchStatusEnum _$analystNotePatchStatusEnum_dismissed =
    const AnalystNotePatchStatusEnum._('dismissed');
const AnalystNotePatchStatusEnum
_$analystNotePatchStatusEnum_unknownDefaultOpenApi =
    const AnalystNotePatchStatusEnum._('unknownDefaultOpenApi');

AnalystNotePatchStatusEnum _$analystNotePatchStatusEnumValueOf(String name) {
  switch (name) {
    case 'new_':
      return _$analystNotePatchStatusEnum_new_;
    case 'read':
      return _$analystNotePatchStatusEnum_read;
    case 'dismissed':
      return _$analystNotePatchStatusEnum_dismissed;
    case 'unknownDefaultOpenApi':
      return _$analystNotePatchStatusEnum_unknownDefaultOpenApi;
    default:
      return _$analystNotePatchStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalystNotePatchStatusEnum> _$analystNotePatchStatusEnumValues =
    BuiltSet<AnalystNotePatchStatusEnum>(const <AnalystNotePatchStatusEnum>[
      _$analystNotePatchStatusEnum_new_,
      _$analystNotePatchStatusEnum_read,
      _$analystNotePatchStatusEnum_dismissed,
      _$analystNotePatchStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<AnalystNotePatchStatusEnum> _$analystNotePatchStatusEnumSerializer =
    _$AnalystNotePatchStatusEnumSerializer();

class _$AnalystNotePatchStatusEnumSerializer
    implements PrimitiveSerializer<AnalystNotePatchStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'new_': 'new',
    'read': 'read',
    'dismissed': 'dismissed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'new': 'new_',
    'read': 'read',
    'dismissed': 'dismissed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalystNotePatchStatusEnum];
  @override
  final String wireName = 'AnalystNotePatchStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalystNotePatchStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalystNotePatchStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalystNotePatchStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalystNotePatch extends AnalystNotePatch {
  @override
  final AnalystNotePatchStatusEnum status;

  factory _$AnalystNotePatch([
    void Function(AnalystNotePatchBuilder)? updates,
  ]) => (AnalystNotePatchBuilder()..update(updates))._build();

  _$AnalystNotePatch._({required this.status}) : super._();
  @override
  AnalystNotePatch rebuild(void Function(AnalystNotePatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystNotePatchBuilder toBuilder() =>
      AnalystNotePatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystNotePatch && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AnalystNotePatch',
    )..add('status', status)).toString();
  }
}

class AnalystNotePatchBuilder
    implements Builder<AnalystNotePatch, AnalystNotePatchBuilder> {
  _$AnalystNotePatch? _$v;

  AnalystNotePatchStatusEnum? _status;
  AnalystNotePatchStatusEnum? get status => _$this._status;
  set status(AnalystNotePatchStatusEnum? status) => _$this._status = status;

  AnalystNotePatchBuilder() {
    AnalystNotePatch._defaults(this);
  }

  AnalystNotePatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystNotePatch other) {
    _$v = other as _$AnalystNotePatch;
  }

  @override
  void update(void Function(AnalystNotePatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystNotePatch build() => _build();

  _$AnalystNotePatch _build() {
    final _$result =
        _$v ??
        _$AnalystNotePatch._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'AnalystNotePatch',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
