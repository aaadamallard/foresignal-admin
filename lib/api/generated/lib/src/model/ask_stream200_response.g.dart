// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_stream200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AskStream200ResponseModeEnum _$askStream200ResponseModeEnum_tools =
    const AskStream200ResponseModeEnum._('tools');
const AskStream200ResponseModeEnum _$askStream200ResponseModeEnum_retrieval =
    const AskStream200ResponseModeEnum._('retrieval');

AskStream200ResponseModeEnum _$askStream200ResponseModeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'tools':
      return _$askStream200ResponseModeEnum_tools;
    case 'retrieval':
      return _$askStream200ResponseModeEnum_retrieval;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AskStream200ResponseModeEnum>
_$askStream200ResponseModeEnumValues = BuiltSet<AskStream200ResponseModeEnum>(
  const <AskStream200ResponseModeEnum>[
    _$askStream200ResponseModeEnum_tools,
    _$askStream200ResponseModeEnum_retrieval,
  ],
);

const AskStream200ResponseStopReasonEnum
_$askStream200ResponseStopReasonEnum_end =
    const AskStream200ResponseStopReasonEnum._('end');
const AskStream200ResponseStopReasonEnum
_$askStream200ResponseStopReasonEnum_maxTokens =
    const AskStream200ResponseStopReasonEnum._('maxTokens');
const AskStream200ResponseStopReasonEnum
_$askStream200ResponseStopReasonEnum_refusal =
    const AskStream200ResponseStopReasonEnum._('refusal');
const AskStream200ResponseStopReasonEnum
_$askStream200ResponseStopReasonEnum_error =
    const AskStream200ResponseStopReasonEnum._('error');

AskStream200ResponseStopReasonEnum _$askStream200ResponseStopReasonEnumValueOf(
  String name,
) {
  switch (name) {
    case 'end':
      return _$askStream200ResponseStopReasonEnum_end;
    case 'maxTokens':
      return _$askStream200ResponseStopReasonEnum_maxTokens;
    case 'refusal':
      return _$askStream200ResponseStopReasonEnum_refusal;
    case 'error':
      return _$askStream200ResponseStopReasonEnum_error;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AskStream200ResponseStopReasonEnum>
_$askStream200ResponseStopReasonEnumValues =
    BuiltSet<AskStream200ResponseStopReasonEnum>(
      const <AskStream200ResponseStopReasonEnum>[
        _$askStream200ResponseStopReasonEnum_end,
        _$askStream200ResponseStopReasonEnum_maxTokens,
        _$askStream200ResponseStopReasonEnum_refusal,
        _$askStream200ResponseStopReasonEnum_error,
      ],
    );

const AskStream200ResponseRequiredScopeEnum
_$askStream200ResponseRequiredScopeEnum_read =
    const AskStream200ResponseRequiredScopeEnum._('read');
const AskStream200ResponseRequiredScopeEnum
_$askStream200ResponseRequiredScopeEnum_agent =
    const AskStream200ResponseRequiredScopeEnum._('agent');
const AskStream200ResponseRequiredScopeEnum
_$askStream200ResponseRequiredScopeEnum_admin =
    const AskStream200ResponseRequiredScopeEnum._('admin');

AskStream200ResponseRequiredScopeEnum
_$askStream200ResponseRequiredScopeEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$askStream200ResponseRequiredScopeEnum_read;
    case 'agent':
      return _$askStream200ResponseRequiredScopeEnum_agent;
    case 'admin':
      return _$askStream200ResponseRequiredScopeEnum_admin;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AskStream200ResponseRequiredScopeEnum>
_$askStream200ResponseRequiredScopeEnumValues =
    BuiltSet<AskStream200ResponseRequiredScopeEnum>(
      const <AskStream200ResponseRequiredScopeEnum>[
        _$askStream200ResponseRequiredScopeEnum_read,
        _$askStream200ResponseRequiredScopeEnum_agent,
        _$askStream200ResponseRequiredScopeEnum_admin,
      ],
    );

const AskStream200ResponseClass_Enum _$askStream200ResponseClassEnum_read =
    const AskStream200ResponseClass_Enum._('read');
const AskStream200ResponseClass_Enum _$askStream200ResponseClassEnum_tiles =
    const AskStream200ResponseClass_Enum._('tiles');
const AskStream200ResponseClass_Enum _$askStream200ResponseClassEnum_stream =
    const AskStream200ResponseClass_Enum._('stream');
const AskStream200ResponseClass_Enum _$askStream200ResponseClassEnum_expensive =
    const AskStream200ResponseClass_Enum._('expensive');
const AskStream200ResponseClass_Enum _$askStream200ResponseClassEnum_write =
    const AskStream200ResponseClass_Enum._('write');
const AskStream200ResponseClass_Enum _$askStream200ResponseClassEnum_anonymous =
    const AskStream200ResponseClass_Enum._('anonymous');
const AskStream200ResponseClass_Enum _$askStream200ResponseClassEnum_metrics =
    const AskStream200ResponseClass_Enum._('metrics');

AskStream200ResponseClass_Enum _$askStream200ResponseClassEnumValueOf(
  String name,
) {
  switch (name) {
    case 'read':
      return _$askStream200ResponseClassEnum_read;
    case 'tiles':
      return _$askStream200ResponseClassEnum_tiles;
    case 'stream':
      return _$askStream200ResponseClassEnum_stream;
    case 'expensive':
      return _$askStream200ResponseClassEnum_expensive;
    case 'write':
      return _$askStream200ResponseClassEnum_write;
    case 'anonymous':
      return _$askStream200ResponseClassEnum_anonymous;
    case 'metrics':
      return _$askStream200ResponseClassEnum_metrics;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AskStream200ResponseClass_Enum>
_$askStream200ResponseClassEnumValues =
    BuiltSet<AskStream200ResponseClass_Enum>(
      const <AskStream200ResponseClass_Enum>[
        _$askStream200ResponseClassEnum_read,
        _$askStream200ResponseClassEnum_tiles,
        _$askStream200ResponseClassEnum_stream,
        _$askStream200ResponseClassEnum_expensive,
        _$askStream200ResponseClassEnum_write,
        _$askStream200ResponseClassEnum_anonymous,
        _$askStream200ResponseClassEnum_metrics,
      ],
    );

Serializer<AskStream200ResponseModeEnum>
_$askStream200ResponseModeEnumSerializer =
    _$AskStream200ResponseModeEnumSerializer();
Serializer<AskStream200ResponseStopReasonEnum>
_$askStream200ResponseStopReasonEnumSerializer =
    _$AskStream200ResponseStopReasonEnumSerializer();
Serializer<AskStream200ResponseRequiredScopeEnum>
_$askStream200ResponseRequiredScopeEnumSerializer =
    _$AskStream200ResponseRequiredScopeEnumSerializer();
Serializer<AskStream200ResponseClass_Enum>
_$askStream200ResponseClassEnumSerializer =
    _$AskStream200ResponseClass_EnumSerializer();

class _$AskStream200ResponseModeEnumSerializer
    implements PrimitiveSerializer<AskStream200ResponseModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tools': 'tools',
    'retrieval': 'retrieval',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'tools': 'tools',
    'retrieval': 'retrieval',
  };

  @override
  final Iterable<Type> types = const <Type>[AskStream200ResponseModeEnum];
  @override
  final String wireName = 'AskStream200ResponseModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AskStream200ResponseModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AskStream200ResponseModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AskStream200ResponseModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AskStream200ResponseStopReasonEnumSerializer
    implements PrimitiveSerializer<AskStream200ResponseStopReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'end': 'end',
    'maxTokens': 'max_tokens',
    'refusal': 'refusal',
    'error': 'error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'end': 'end',
    'max_tokens': 'maxTokens',
    'refusal': 'refusal',
    'error': 'error',
  };

  @override
  final Iterable<Type> types = const <Type>[AskStream200ResponseStopReasonEnum];
  @override
  final String wireName = 'AskStream200ResponseStopReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    AskStream200ResponseStopReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AskStream200ResponseStopReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AskStream200ResponseStopReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AskStream200ResponseRequiredScopeEnumSerializer
    implements PrimitiveSerializer<AskStream200ResponseRequiredScopeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'agent': 'agent',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AskStream200ResponseRequiredScopeEnum,
  ];
  @override
  final String wireName = 'AskStream200ResponseRequiredScopeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AskStream200ResponseRequiredScopeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AskStream200ResponseRequiredScopeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AskStream200ResponseRequiredScopeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AskStream200ResponseClass_EnumSerializer
    implements PrimitiveSerializer<AskStream200ResponseClass_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'tiles': 'tiles',
    'stream': 'stream',
    'expensive': 'expensive',
    'write': 'write',
    'anonymous': 'anonymous',
    'metrics': 'metrics',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'tiles': 'tiles',
    'stream': 'stream',
    'expensive': 'expensive',
    'write': 'write',
    'anonymous': 'anonymous',
    'metrics': 'metrics',
  };

  @override
  final Iterable<Type> types = const <Type>[AskStream200ResponseClass_Enum];
  @override
  final String wireName = 'AskStream200ResponseClass_Enum';

  @override
  Object serialize(
    Serializers serializers,
    AskStream200ResponseClass_Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AskStream200ResponseClass_Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AskStream200ResponseClass_Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AskStream200Response extends AskStream200Response {
  @override
  final AnyOf anyOf;

  factory _$AskStream200Response([
    void Function(AskStream200ResponseBuilder)? updates,
  ]) => (AskStream200ResponseBuilder()..update(updates))._build();

  _$AskStream200Response._({required this.anyOf}) : super._();
  @override
  AskStream200Response rebuild(
    void Function(AskStream200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AskStream200ResponseBuilder toBuilder() =>
      AskStream200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskStream200Response && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AskStream200Response',
    )..add('anyOf', anyOf)).toString();
  }
}

class AskStream200ResponseBuilder
    implements Builder<AskStream200Response, AskStream200ResponseBuilder> {
  _$AskStream200Response? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  AskStream200ResponseBuilder() {
    AskStream200Response._defaults(this);
  }

  AskStream200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskStream200Response other) {
    _$v = other as _$AskStream200Response;
  }

  @override
  void update(void Function(AskStream200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskStream200Response build() => _build();

  _$AskStream200Response _build() {
    final _$result =
        _$v ??
        _$AskStream200Response._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
            anyOf,
            r'AskStream200Response',
            'anyOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
