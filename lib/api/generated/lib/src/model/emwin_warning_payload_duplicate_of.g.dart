// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emwin_warning_payload_duplicate_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EmwinWarningPayloadDuplicateOfSource_Enum
_$emwinWarningPayloadDuplicateOfSourceEnum_nwsAlerts =
    const EmwinWarningPayloadDuplicateOfSource_Enum._('nwsAlerts');
const EmwinWarningPayloadDuplicateOfSource_Enum
_$emwinWarningPayloadDuplicateOfSourceEnum_unknownDefaultOpenApi =
    const EmwinWarningPayloadDuplicateOfSource_Enum._('unknownDefaultOpenApi');

EmwinWarningPayloadDuplicateOfSource_Enum
_$emwinWarningPayloadDuplicateOfSourceEnumValueOf(String name) {
  switch (name) {
    case 'nwsAlerts':
      return _$emwinWarningPayloadDuplicateOfSourceEnum_nwsAlerts;
    case 'unknownDefaultOpenApi':
      return _$emwinWarningPayloadDuplicateOfSourceEnum_unknownDefaultOpenApi;
    default:
      return _$emwinWarningPayloadDuplicateOfSourceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EmwinWarningPayloadDuplicateOfSource_Enum>
_$emwinWarningPayloadDuplicateOfSourceEnumValues =
    BuiltSet<EmwinWarningPayloadDuplicateOfSource_Enum>(
      const <EmwinWarningPayloadDuplicateOfSource_Enum>[
        _$emwinWarningPayloadDuplicateOfSourceEnum_nwsAlerts,
        _$emwinWarningPayloadDuplicateOfSourceEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<EmwinWarningPayloadDuplicateOfSource_Enum>
_$emwinWarningPayloadDuplicateOfSourceEnumSerializer =
    _$EmwinWarningPayloadDuplicateOfSource_EnumSerializer();

class _$EmwinWarningPayloadDuplicateOfSource_EnumSerializer
    implements PrimitiveSerializer<EmwinWarningPayloadDuplicateOfSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'nwsAlerts': 'nws-alerts',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'nws-alerts': 'nwsAlerts',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    EmwinWarningPayloadDuplicateOfSource_Enum,
  ];
  @override
  final String wireName = 'EmwinWarningPayloadDuplicateOfSource_Enum';

  @override
  Object serialize(
    Serializers serializers,
    EmwinWarningPayloadDuplicateOfSource_Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EmwinWarningPayloadDuplicateOfSource_Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EmwinWarningPayloadDuplicateOfSource_Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EmwinWarningPayloadDuplicateOf extends EmwinWarningPayloadDuplicateOf {
  @override
  final EmwinWarningPayloadDuplicateOfSource_Enum source_;
  @override
  final String externalId;

  factory _$EmwinWarningPayloadDuplicateOf([
    void Function(EmwinWarningPayloadDuplicateOfBuilder)? updates,
  ]) => (EmwinWarningPayloadDuplicateOfBuilder()..update(updates))._build();

  _$EmwinWarningPayloadDuplicateOf._({
    required this.source_,
    required this.externalId,
  }) : super._();
  @override
  EmwinWarningPayloadDuplicateOf rebuild(
    void Function(EmwinWarningPayloadDuplicateOfBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EmwinWarningPayloadDuplicateOfBuilder toBuilder() =>
      EmwinWarningPayloadDuplicateOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmwinWarningPayloadDuplicateOf &&
        source_ == other.source_ &&
        externalId == other.externalId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmwinWarningPayloadDuplicateOf')
          ..add('source_', source_)
          ..add('externalId', externalId))
        .toString();
  }
}

class EmwinWarningPayloadDuplicateOfBuilder
    implements
        Builder<
          EmwinWarningPayloadDuplicateOf,
          EmwinWarningPayloadDuplicateOfBuilder
        > {
  _$EmwinWarningPayloadDuplicateOf? _$v;

  EmwinWarningPayloadDuplicateOfSource_Enum? _source_;
  EmwinWarningPayloadDuplicateOfSource_Enum? get source_ => _$this._source_;
  set source_(EmwinWarningPayloadDuplicateOfSource_Enum? source_) =>
      _$this._source_ = source_;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  EmwinWarningPayloadDuplicateOfBuilder() {
    EmwinWarningPayloadDuplicateOf._defaults(this);
  }

  EmwinWarningPayloadDuplicateOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_;
      _externalId = $v.externalId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmwinWarningPayloadDuplicateOf other) {
    _$v = other as _$EmwinWarningPayloadDuplicateOf;
  }

  @override
  void update(void Function(EmwinWarningPayloadDuplicateOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmwinWarningPayloadDuplicateOf build() => _build();

  _$EmwinWarningPayloadDuplicateOf _build() {
    final _$result =
        _$v ??
        _$EmwinWarningPayloadDuplicateOf._(
          source_: BuiltValueNullFieldError.checkNotNull(
            source_,
            r'EmwinWarningPayloadDuplicateOf',
            'source_',
          ),
          externalId: BuiltValueNullFieldError.checkNotNull(
            externalId,
            r'EmwinWarningPayloadDuplicateOf',
            'externalId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
