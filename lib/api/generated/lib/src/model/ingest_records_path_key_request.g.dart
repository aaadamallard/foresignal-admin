// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_records_path_key_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IngestRecordsPathKeyRequestTypeEnum
    _$ingestRecordsPathKeyRequestTypeEnum_location =
    const IngestRecordsPathKeyRequestTypeEnum._('location');
const IngestRecordsPathKeyRequestTypeEnum
    _$ingestRecordsPathKeyRequestTypeEnum_transition =
    const IngestRecordsPathKeyRequestTypeEnum._('transition');
const IngestRecordsPathKeyRequestTypeEnum
    _$ingestRecordsPathKeyRequestTypeEnum_waypoint =
    const IngestRecordsPathKeyRequestTypeEnum._('waypoint');
const IngestRecordsPathKeyRequestTypeEnum
    _$ingestRecordsPathKeyRequestTypeEnum_lwt =
    const IngestRecordsPathKeyRequestTypeEnum._('lwt');
const IngestRecordsPathKeyRequestTypeEnum
    _$ingestRecordsPathKeyRequestTypeEnum_card =
    const IngestRecordsPathKeyRequestTypeEnum._('card');
const IngestRecordsPathKeyRequestTypeEnum
    _$ingestRecordsPathKeyRequestTypeEnum_status =
    const IngestRecordsPathKeyRequestTypeEnum._('status');
const IngestRecordsPathKeyRequestTypeEnum
    _$ingestRecordsPathKeyRequestTypeEnum_encrypted =
    const IngestRecordsPathKeyRequestTypeEnum._('encrypted');

IngestRecordsPathKeyRequestTypeEnum
    _$ingestRecordsPathKeyRequestTypeEnumValueOf(String name) {
  switch (name) {
    case 'location':
      return _$ingestRecordsPathKeyRequestTypeEnum_location;
    case 'transition':
      return _$ingestRecordsPathKeyRequestTypeEnum_transition;
    case 'waypoint':
      return _$ingestRecordsPathKeyRequestTypeEnum_waypoint;
    case 'lwt':
      return _$ingestRecordsPathKeyRequestTypeEnum_lwt;
    case 'card':
      return _$ingestRecordsPathKeyRequestTypeEnum_card;
    case 'status':
      return _$ingestRecordsPathKeyRequestTypeEnum_status;
    case 'encrypted':
      return _$ingestRecordsPathKeyRequestTypeEnum_encrypted;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IngestRecordsPathKeyRequestTypeEnum>
    _$ingestRecordsPathKeyRequestTypeEnumValues = BuiltSet<
        IngestRecordsPathKeyRequestTypeEnum>(const <IngestRecordsPathKeyRequestTypeEnum>[
  _$ingestRecordsPathKeyRequestTypeEnum_location,
  _$ingestRecordsPathKeyRequestTypeEnum_transition,
  _$ingestRecordsPathKeyRequestTypeEnum_waypoint,
  _$ingestRecordsPathKeyRequestTypeEnum_lwt,
  _$ingestRecordsPathKeyRequestTypeEnum_card,
  _$ingestRecordsPathKeyRequestTypeEnum_status,
  _$ingestRecordsPathKeyRequestTypeEnum_encrypted,
]);

Serializer<IngestRecordsPathKeyRequestTypeEnum>
    _$ingestRecordsPathKeyRequestTypeEnumSerializer =
    _$IngestRecordsPathKeyRequestTypeEnumSerializer();

class _$IngestRecordsPathKeyRequestTypeEnumSerializer
    implements PrimitiveSerializer<IngestRecordsPathKeyRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'location': 'location',
    'transition': 'transition',
    'waypoint': 'waypoint',
    'lwt': 'lwt',
    'card': 'card',
    'status': 'status',
    'encrypted': 'encrypted',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'location': 'location',
    'transition': 'transition',
    'waypoint': 'waypoint',
    'lwt': 'lwt',
    'card': 'card',
    'status': 'status',
    'encrypted': 'encrypted',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IngestRecordsPathKeyRequestTypeEnum
  ];
  @override
  final String wireName = 'IngestRecordsPathKeyRequestTypeEnum';

  @override
  Object serialize(
          Serializers serializers, IngestRecordsPathKeyRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IngestRecordsPathKeyRequestTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IngestRecordsPathKeyRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IngestRecordsPathKeyRequest extends IngestRecordsPathKeyRequest {
  @override
  final AnyOf anyOf;

  factory _$IngestRecordsPathKeyRequest(
          [void Function(IngestRecordsPathKeyRequestBuilder)? updates]) =>
      (IngestRecordsPathKeyRequestBuilder()..update(updates))._build();

  _$IngestRecordsPathKeyRequest._({required this.anyOf}) : super._();
  @override
  IngestRecordsPathKeyRequest rebuild(
          void Function(IngestRecordsPathKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestRecordsPathKeyRequestBuilder toBuilder() =>
      IngestRecordsPathKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestRecordsPathKeyRequest && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'IngestRecordsPathKeyRequest')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class IngestRecordsPathKeyRequestBuilder
    implements
        Builder<IngestRecordsPathKeyRequest,
            IngestRecordsPathKeyRequestBuilder> {
  _$IngestRecordsPathKeyRequest? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  IngestRecordsPathKeyRequestBuilder() {
    IngestRecordsPathKeyRequest._defaults(this);
  }

  IngestRecordsPathKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestRecordsPathKeyRequest other) {
    _$v = other as _$IngestRecordsPathKeyRequest;
  }

  @override
  void update(void Function(IngestRecordsPathKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestRecordsPathKeyRequest build() => _build();

  _$IngestRecordsPathKeyRequest _build() {
    final _$result = _$v ??
        _$IngestRecordsPathKeyRequest._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'IngestRecordsPathKeyRequest', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
