// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_ticket_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StreamTicketRequestPurposeEnum _$streamTicketRequestPurposeEnum_stream =
    const StreamTicketRequestPurposeEnum._('stream');
const StreamTicketRequestPurposeEnum _$streamTicketRequestPurposeEnum_tiles =
    const StreamTicketRequestPurposeEnum._('tiles');

StreamTicketRequestPurposeEnum _$streamTicketRequestPurposeEnumValueOf(
    String name) {
  switch (name) {
    case 'stream':
      return _$streamTicketRequestPurposeEnum_stream;
    case 'tiles':
      return _$streamTicketRequestPurposeEnum_tiles;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StreamTicketRequestPurposeEnum>
    _$streamTicketRequestPurposeEnumValues = BuiltSet<
        StreamTicketRequestPurposeEnum>(const <StreamTicketRequestPurposeEnum>[
  _$streamTicketRequestPurposeEnum_stream,
  _$streamTicketRequestPurposeEnum_tiles,
]);

Serializer<StreamTicketRequestPurposeEnum>
    _$streamTicketRequestPurposeEnumSerializer =
    _$StreamTicketRequestPurposeEnumSerializer();

class _$StreamTicketRequestPurposeEnumSerializer
    implements PrimitiveSerializer<StreamTicketRequestPurposeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'stream': 'stream',
    'tiles': 'tiles',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'stream': 'stream',
    'tiles': 'tiles',
  };

  @override
  final Iterable<Type> types = const <Type>[StreamTicketRequestPurposeEnum];
  @override
  final String wireName = 'StreamTicketRequestPurposeEnum';

  @override
  Object serialize(
          Serializers serializers, StreamTicketRequestPurposeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StreamTicketRequestPurposeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StreamTicketRequestPurposeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StreamTicketRequest extends StreamTicketRequest {
  @override
  final StreamTicketRequestPurposeEnum purpose;
  @override
  final BuiltList<String>? paths;
  @override
  final String? ttl;

  factory _$StreamTicketRequest(
          [void Function(StreamTicketRequestBuilder)? updates]) =>
      (StreamTicketRequestBuilder()..update(updates))._build();

  _$StreamTicketRequest._({required this.purpose, this.paths, this.ttl})
      : super._();
  @override
  StreamTicketRequest rebuild(
          void Function(StreamTicketRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreamTicketRequestBuilder toBuilder() =>
      StreamTicketRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamTicketRequest &&
        purpose == other.purpose &&
        paths == other.paths &&
        ttl == other.ttl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, purpose.hashCode);
    _$hash = $jc(_$hash, paths.hashCode);
    _$hash = $jc(_$hash, ttl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StreamTicketRequest')
          ..add('purpose', purpose)
          ..add('paths', paths)
          ..add('ttl', ttl))
        .toString();
  }
}

class StreamTicketRequestBuilder
    implements Builder<StreamTicketRequest, StreamTicketRequestBuilder> {
  _$StreamTicketRequest? _$v;

  StreamTicketRequestPurposeEnum? _purpose;
  StreamTicketRequestPurposeEnum? get purpose => _$this._purpose;
  set purpose(StreamTicketRequestPurposeEnum? purpose) =>
      _$this._purpose = purpose;

  ListBuilder<String>? _paths;
  ListBuilder<String> get paths => _$this._paths ??= ListBuilder<String>();
  set paths(ListBuilder<String>? paths) => _$this._paths = paths;

  String? _ttl;
  String? get ttl => _$this._ttl;
  set ttl(String? ttl) => _$this._ttl = ttl;

  StreamTicketRequestBuilder() {
    StreamTicketRequest._defaults(this);
  }

  StreamTicketRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _purpose = $v.purpose;
      _paths = $v.paths?.toBuilder();
      _ttl = $v.ttl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamTicketRequest other) {
    _$v = other as _$StreamTicketRequest;
  }

  @override
  void update(void Function(StreamTicketRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreamTicketRequest build() => _build();

  _$StreamTicketRequest _build() {
    _$StreamTicketRequest _$result;
    try {
      _$result = _$v ??
          _$StreamTicketRequest._(
            purpose: BuiltValueNullFieldError.checkNotNull(
                purpose, r'StreamTicketRequest', 'purpose'),
            paths: _paths?.build(),
            ttl: ttl,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'paths';
        _paths?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StreamTicketRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
