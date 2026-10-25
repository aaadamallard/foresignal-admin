// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_ticket.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StreamTicketPurposeEnum _$streamTicketPurposeEnum_stream =
    const StreamTicketPurposeEnum._('stream');
const StreamTicketPurposeEnum _$streamTicketPurposeEnum_tiles =
    const StreamTicketPurposeEnum._('tiles');
const StreamTicketPurposeEnum _$streamTicketPurposeEnum_unknownDefaultOpenApi =
    const StreamTicketPurposeEnum._('unknownDefaultOpenApi');

StreamTicketPurposeEnum _$streamTicketPurposeEnumValueOf(String name) {
  switch (name) {
    case 'stream':
      return _$streamTicketPurposeEnum_stream;
    case 'tiles':
      return _$streamTicketPurposeEnum_tiles;
    case 'unknownDefaultOpenApi':
      return _$streamTicketPurposeEnum_unknownDefaultOpenApi;
    default:
      return _$streamTicketPurposeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<StreamTicketPurposeEnum> _$streamTicketPurposeEnumValues =
    BuiltSet<StreamTicketPurposeEnum>(const <StreamTicketPurposeEnum>[
      _$streamTicketPurposeEnum_stream,
      _$streamTicketPurposeEnum_tiles,
      _$streamTicketPurposeEnum_unknownDefaultOpenApi,
    ]);

Serializer<StreamTicketPurposeEnum> _$streamTicketPurposeEnumSerializer =
    _$StreamTicketPurposeEnumSerializer();

class _$StreamTicketPurposeEnumSerializer
    implements PrimitiveSerializer<StreamTicketPurposeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'stream': 'stream',
    'tiles': 'tiles',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'stream': 'stream',
    'tiles': 'tiles',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[StreamTicketPurposeEnum];
  @override
  final String wireName = 'StreamTicketPurposeEnum';

  @override
  Object serialize(
    Serializers serializers,
    StreamTicketPurposeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StreamTicketPurposeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StreamTicketPurposeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StreamTicket extends StreamTicket {
  @override
  final String ticket;
  @override
  final StreamTicketPurposeEnum purpose;
  @override
  final DateTime expiresAt;
  @override
  final BuiltList<String>? paths;

  factory _$StreamTicket([void Function(StreamTicketBuilder)? updates]) =>
      (StreamTicketBuilder()..update(updates))._build();

  _$StreamTicket._({
    required this.ticket,
    required this.purpose,
    required this.expiresAt,
    this.paths,
  }) : super._();
  @override
  StreamTicket rebuild(void Function(StreamTicketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreamTicketBuilder toBuilder() => StreamTicketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamTicket &&
        ticket == other.ticket &&
        purpose == other.purpose &&
        expiresAt == other.expiresAt &&
        paths == other.paths;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ticket.hashCode);
    _$hash = $jc(_$hash, purpose.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, paths.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StreamTicket')
          ..add('ticket', ticket)
          ..add('purpose', purpose)
          ..add('expiresAt', expiresAt)
          ..add('paths', paths))
        .toString();
  }
}

class StreamTicketBuilder
    implements Builder<StreamTicket, StreamTicketBuilder> {
  _$StreamTicket? _$v;

  String? _ticket;
  String? get ticket => _$this._ticket;
  set ticket(String? ticket) => _$this._ticket = ticket;

  StreamTicketPurposeEnum? _purpose;
  StreamTicketPurposeEnum? get purpose => _$this._purpose;
  set purpose(StreamTicketPurposeEnum? purpose) => _$this._purpose = purpose;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ListBuilder<String>? _paths;
  ListBuilder<String> get paths => _$this._paths ??= ListBuilder<String>();
  set paths(ListBuilder<String>? paths) => _$this._paths = paths;

  StreamTicketBuilder() {
    StreamTicket._defaults(this);
  }

  StreamTicketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ticket = $v.ticket;
      _purpose = $v.purpose;
      _expiresAt = $v.expiresAt;
      _paths = $v.paths?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamTicket other) {
    _$v = other as _$StreamTicket;
  }

  @override
  void update(void Function(StreamTicketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreamTicket build() => _build();

  _$StreamTicket _build() {
    _$StreamTicket _$result;
    try {
      _$result =
          _$v ??
          _$StreamTicket._(
            ticket: BuiltValueNullFieldError.checkNotNull(
              ticket,
              r'StreamTicket',
              'ticket',
            ),
            purpose: BuiltValueNullFieldError.checkNotNull(
              purpose,
              r'StreamTicket',
              'purpose',
            ),
            expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt,
              r'StreamTicket',
              'expiresAt',
            ),
            paths: _paths?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'paths';
        _paths?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StreamTicket',
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
