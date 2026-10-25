// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_format_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IngestFormatInfoMethodsEnum _$ingestFormatInfoMethodsEnum_GET =
    const IngestFormatInfoMethodsEnum._('GET');
const IngestFormatInfoMethodsEnum _$ingestFormatInfoMethodsEnum_POST =
    const IngestFormatInfoMethodsEnum._('POST');
const IngestFormatInfoMethodsEnum _$ingestFormatInfoMethodsEnum_PUT =
    const IngestFormatInfoMethodsEnum._('PUT');
const IngestFormatInfoMethodsEnum
_$ingestFormatInfoMethodsEnum_unknownDefaultOpenApi =
    const IngestFormatInfoMethodsEnum._('unknownDefaultOpenApi');

IngestFormatInfoMethodsEnum _$ingestFormatInfoMethodsEnumValueOf(String name) {
  switch (name) {
    case 'GET':
      return _$ingestFormatInfoMethodsEnum_GET;
    case 'POST':
      return _$ingestFormatInfoMethodsEnum_POST;
    case 'PUT':
      return _$ingestFormatInfoMethodsEnum_PUT;
    case 'unknownDefaultOpenApi':
      return _$ingestFormatInfoMethodsEnum_unknownDefaultOpenApi;
    default:
      return _$ingestFormatInfoMethodsEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IngestFormatInfoMethodsEnum>
_$ingestFormatInfoMethodsEnumValues =
    BuiltSet<IngestFormatInfoMethodsEnum>(const <IngestFormatInfoMethodsEnum>[
      _$ingestFormatInfoMethodsEnum_GET,
      _$ingestFormatInfoMethodsEnum_POST,
      _$ingestFormatInfoMethodsEnum_PUT,
      _$ingestFormatInfoMethodsEnum_unknownDefaultOpenApi,
    ]);

const IngestFormatInfoVerifiersEnum _$ingestFormatInfoVerifiersEnum_none =
    const IngestFormatInfoVerifiersEnum._('none');
const IngestFormatInfoVerifiersEnum _$ingestFormatInfoVerifiersEnum_hmacSha256 =
    const IngestFormatInfoVerifiersEnum._('hmacSha256');
const IngestFormatInfoVerifiersEnum
_$ingestFormatInfoVerifiersEnum_standardWebhooks =
    const IngestFormatInfoVerifiersEnum._('standardWebhooks');
const IngestFormatInfoVerifiersEnum _$ingestFormatInfoVerifiersEnum_foresignal =
    const IngestFormatInfoVerifiersEnum._('foresignal');
const IngestFormatInfoVerifiersEnum
_$ingestFormatInfoVerifiersEnum_unknownDefaultOpenApi =
    const IngestFormatInfoVerifiersEnum._('unknownDefaultOpenApi');

IngestFormatInfoVerifiersEnum _$ingestFormatInfoVerifiersEnumValueOf(
  String name,
) {
  switch (name) {
    case 'none':
      return _$ingestFormatInfoVerifiersEnum_none;
    case 'hmacSha256':
      return _$ingestFormatInfoVerifiersEnum_hmacSha256;
    case 'standardWebhooks':
      return _$ingestFormatInfoVerifiersEnum_standardWebhooks;
    case 'foresignal':
      return _$ingestFormatInfoVerifiersEnum_foresignal;
    case 'unknownDefaultOpenApi':
      return _$ingestFormatInfoVerifiersEnum_unknownDefaultOpenApi;
    default:
      return _$ingestFormatInfoVerifiersEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IngestFormatInfoVerifiersEnum>
_$ingestFormatInfoVerifiersEnumValues = BuiltSet<IngestFormatInfoVerifiersEnum>(
  const <IngestFormatInfoVerifiersEnum>[
    _$ingestFormatInfoVerifiersEnum_none,
    _$ingestFormatInfoVerifiersEnum_hmacSha256,
    _$ingestFormatInfoVerifiersEnum_standardWebhooks,
    _$ingestFormatInfoVerifiersEnum_foresignal,
    _$ingestFormatInfoVerifiersEnum_unknownDefaultOpenApi,
  ],
);

Serializer<IngestFormatInfoMethodsEnum>
_$ingestFormatInfoMethodsEnumSerializer =
    _$IngestFormatInfoMethodsEnumSerializer();
Serializer<IngestFormatInfoVerifiersEnum>
_$ingestFormatInfoVerifiersEnumSerializer =
    _$IngestFormatInfoVerifiersEnumSerializer();

class _$IngestFormatInfoMethodsEnumSerializer
    implements PrimitiveSerializer<IngestFormatInfoMethodsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GET': 'GET',
    'POST': 'POST',
    'PUT': 'PUT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GET': 'GET',
    'POST': 'POST',
    'PUT': 'PUT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IngestFormatInfoMethodsEnum];
  @override
  final String wireName = 'IngestFormatInfoMethodsEnum';

  @override
  Object serialize(
    Serializers serializers,
    IngestFormatInfoMethodsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IngestFormatInfoMethodsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IngestFormatInfoMethodsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IngestFormatInfoVerifiersEnumSerializer
    implements PrimitiveSerializer<IngestFormatInfoVerifiersEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'hmacSha256': 'hmac-sha256',
    'standardWebhooks': 'standard-webhooks',
    'foresignal': 'foresignal',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'hmac-sha256': 'hmacSha256',
    'standard-webhooks': 'standardWebhooks',
    'foresignal': 'foresignal',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IngestFormatInfoVerifiersEnum];
  @override
  final String wireName = 'IngestFormatInfoVerifiersEnum';

  @override
  Object serialize(
    Serializers serializers,
    IngestFormatInfoVerifiersEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IngestFormatInfoVerifiersEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IngestFormatInfoVerifiersEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IngestFormatInfo extends IngestFormatInfo {
  @override
  final String id;
  @override
  final String? description;
  @override
  final BuiltList<String> mediaTypes;
  @override
  final BuiltList<IngestFormatInfoMethodsEnum>? methods;
  @override
  final BuiltList<IngestFormatOption>? options;
  @override
  final BuiltList<IngestFormatInfoVerifiersEnum>? verifiers;
  @override
  final bool? reserved;

  factory _$IngestFormatInfo([
    void Function(IngestFormatInfoBuilder)? updates,
  ]) => (IngestFormatInfoBuilder()..update(updates))._build();

  _$IngestFormatInfo._({
    required this.id,
    this.description,
    required this.mediaTypes,
    this.methods,
    this.options,
    this.verifiers,
    this.reserved,
  }) : super._();
  @override
  IngestFormatInfo rebuild(void Function(IngestFormatInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestFormatInfoBuilder toBuilder() =>
      IngestFormatInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestFormatInfo &&
        id == other.id &&
        description == other.description &&
        mediaTypes == other.mediaTypes &&
        methods == other.methods &&
        options == other.options &&
        verifiers == other.verifiers &&
        reserved == other.reserved;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, mediaTypes.hashCode);
    _$hash = $jc(_$hash, methods.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, verifiers.hashCode);
    _$hash = $jc(_$hash, reserved.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestFormatInfo')
          ..add('id', id)
          ..add('description', description)
          ..add('mediaTypes', mediaTypes)
          ..add('methods', methods)
          ..add('options', options)
          ..add('verifiers', verifiers)
          ..add('reserved', reserved))
        .toString();
  }
}

class IngestFormatInfoBuilder
    implements Builder<IngestFormatInfo, IngestFormatInfoBuilder> {
  _$IngestFormatInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _mediaTypes;
  ListBuilder<String> get mediaTypes =>
      _$this._mediaTypes ??= ListBuilder<String>();
  set mediaTypes(ListBuilder<String>? mediaTypes) =>
      _$this._mediaTypes = mediaTypes;

  ListBuilder<IngestFormatInfoMethodsEnum>? _methods;
  ListBuilder<IngestFormatInfoMethodsEnum> get methods =>
      _$this._methods ??= ListBuilder<IngestFormatInfoMethodsEnum>();
  set methods(ListBuilder<IngestFormatInfoMethodsEnum>? methods) =>
      _$this._methods = methods;

  ListBuilder<IngestFormatOption>? _options;
  ListBuilder<IngestFormatOption> get options =>
      _$this._options ??= ListBuilder<IngestFormatOption>();
  set options(ListBuilder<IngestFormatOption>? options) =>
      _$this._options = options;

  ListBuilder<IngestFormatInfoVerifiersEnum>? _verifiers;
  ListBuilder<IngestFormatInfoVerifiersEnum> get verifiers =>
      _$this._verifiers ??= ListBuilder<IngestFormatInfoVerifiersEnum>();
  set verifiers(ListBuilder<IngestFormatInfoVerifiersEnum>? verifiers) =>
      _$this._verifiers = verifiers;

  bool? _reserved;
  bool? get reserved => _$this._reserved;
  set reserved(bool? reserved) => _$this._reserved = reserved;

  IngestFormatInfoBuilder() {
    IngestFormatInfo._defaults(this);
  }

  IngestFormatInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _mediaTypes = $v.mediaTypes.toBuilder();
      _methods = $v.methods?.toBuilder();
      _options = $v.options?.toBuilder();
      _verifiers = $v.verifiers?.toBuilder();
      _reserved = $v.reserved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestFormatInfo other) {
    _$v = other as _$IngestFormatInfo;
  }

  @override
  void update(void Function(IngestFormatInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestFormatInfo build() => _build();

  _$IngestFormatInfo _build() {
    _$IngestFormatInfo _$result;
    try {
      _$result =
          _$v ??
          _$IngestFormatInfo._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'IngestFormatInfo',
              'id',
            ),
            description: description,
            mediaTypes: mediaTypes.build(),
            methods: _methods?.build(),
            options: _options?.build(),
            verifiers: _verifiers?.build(),
            reserved: reserved,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaTypes';
        mediaTypes.build();
        _$failedField = 'methods';
        _methods?.build();
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'verifiers';
        _verifiers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IngestFormatInfo',
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
