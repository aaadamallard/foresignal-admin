// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pol_subject_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PolSubjectInputSubjectTypeEnum _$polSubjectInputSubjectTypeEnum_record =
    const PolSubjectInputSubjectTypeEnum._('record');
const PolSubjectInputSubjectTypeEnum _$polSubjectInputSubjectTypeEnum_entity =
    const PolSubjectInputSubjectTypeEnum._('entity');
const PolSubjectInputSubjectTypeEnum
_$polSubjectInputSubjectTypeEnum_watchlist =
    const PolSubjectInputSubjectTypeEnum._('watchlist');
const PolSubjectInputSubjectTypeEnum
_$polSubjectInputSubjectTypeEnum_unknownDefaultOpenApi =
    const PolSubjectInputSubjectTypeEnum._('unknownDefaultOpenApi');

PolSubjectInputSubjectTypeEnum _$polSubjectInputSubjectTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'record':
      return _$polSubjectInputSubjectTypeEnum_record;
    case 'entity':
      return _$polSubjectInputSubjectTypeEnum_entity;
    case 'watchlist':
      return _$polSubjectInputSubjectTypeEnum_watchlist;
    case 'unknownDefaultOpenApi':
      return _$polSubjectInputSubjectTypeEnum_unknownDefaultOpenApi;
    default:
      return _$polSubjectInputSubjectTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PolSubjectInputSubjectTypeEnum>
_$polSubjectInputSubjectTypeEnumValues =
    BuiltSet<PolSubjectInputSubjectTypeEnum>(
      const <PolSubjectInputSubjectTypeEnum>[
        _$polSubjectInputSubjectTypeEnum_record,
        _$polSubjectInputSubjectTypeEnum_entity,
        _$polSubjectInputSubjectTypeEnum_watchlist,
        _$polSubjectInputSubjectTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<PolSubjectInputSubjectTypeEnum>
_$polSubjectInputSubjectTypeEnumSerializer =
    _$PolSubjectInputSubjectTypeEnumSerializer();

class _$PolSubjectInputSubjectTypeEnumSerializer
    implements PrimitiveSerializer<PolSubjectInputSubjectTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'entity': 'entity',
    'watchlist': 'watchlist',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'entity': 'entity',
    'watchlist': 'watchlist',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PolSubjectInputSubjectTypeEnum];
  @override
  final String wireName = 'PolSubjectInputSubjectTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PolSubjectInputSubjectTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PolSubjectInputSubjectTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PolSubjectInputSubjectTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PolSubjectInput extends PolSubjectInput {
  @override
  final PolSubjectInputSubjectTypeEnum subjectType;
  @override
  final String ref;
  @override
  final bool? enabled;
  @override
  final PolSubjectInputParams? params;

  factory _$PolSubjectInput([void Function(PolSubjectInputBuilder)? updates]) =>
      (PolSubjectInputBuilder()..update(updates))._build();

  _$PolSubjectInput._({
    required this.subjectType,
    required this.ref,
    this.enabled,
    this.params,
  }) : super._();
  @override
  PolSubjectInput rebuild(void Function(PolSubjectInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolSubjectInputBuilder toBuilder() => PolSubjectInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolSubjectInput &&
        subjectType == other.subjectType &&
        ref == other.ref &&
        enabled == other.enabled &&
        params == other.params;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subjectType.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PolSubjectInput')
          ..add('subjectType', subjectType)
          ..add('ref', ref)
          ..add('enabled', enabled)
          ..add('params', params))
        .toString();
  }
}

class PolSubjectInputBuilder
    implements Builder<PolSubjectInput, PolSubjectInputBuilder> {
  _$PolSubjectInput? _$v;

  PolSubjectInputSubjectTypeEnum? _subjectType;
  PolSubjectInputSubjectTypeEnum? get subjectType => _$this._subjectType;
  set subjectType(PolSubjectInputSubjectTypeEnum? subjectType) =>
      _$this._subjectType = subjectType;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  PolSubjectInputParamsBuilder? _params;
  PolSubjectInputParamsBuilder get params =>
      _$this._params ??= PolSubjectInputParamsBuilder();
  set params(PolSubjectInputParamsBuilder? params) => _$this._params = params;

  PolSubjectInputBuilder() {
    PolSubjectInput._defaults(this);
  }

  PolSubjectInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subjectType = $v.subjectType;
      _ref = $v.ref;
      _enabled = $v.enabled;
      _params = $v.params?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolSubjectInput other) {
    _$v = other as _$PolSubjectInput;
  }

  @override
  void update(void Function(PolSubjectInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolSubjectInput build() => _build();

  _$PolSubjectInput _build() {
    _$PolSubjectInput _$result;
    try {
      _$result =
          _$v ??
          _$PolSubjectInput._(
            subjectType: BuiltValueNullFieldError.checkNotNull(
              subjectType,
              r'PolSubjectInput',
              'subjectType',
            ),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'PolSubjectInput',
              'ref',
            ),
            enabled: enabled,
            params: _params?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PolSubjectInput',
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
