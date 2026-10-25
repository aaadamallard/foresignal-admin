//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stream_ticket.g.dart';

/// A short-lived ticket inheriting the caller's token, scope and restrictions (023)
///
/// Properties:
/// * [ticket] - `fst_` + 24 random bytes (base64url)
/// * [purpose]
/// * [expiresAt] - Stream: deadline for the first connection (60 s after minting; afterwards reconnects work up to 5 min after the last disconnect and 24 h in total). Tiles: end of the ticket's lifetime.
/// * [paths]
@BuiltValue()
abstract class StreamTicket
    implements Built<StreamTicket, StreamTicketBuilder> {
  /// `fst_` + 24 random bytes (base64url)
  @BuiltValueField(wireName: r'ticket')
  String get ticket;

  @BuiltValueField(wireName: r'purpose')
  StreamTicketPurposeEnum get purpose;
  // enum purposeEnum {  stream,  tiles,  };

  /// Stream: deadline for the first connection (60 s after minting; afterwards reconnects work up to 5 min after the last disconnect and 24 h in total). Tiles: end of the ticket's lifetime.
  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'paths')
  BuiltList<String>? get paths;

  StreamTicket._();

  factory StreamTicket([void updates(StreamTicketBuilder b)]) = _$StreamTicket;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StreamTicketBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StreamTicket> get serializer => _$StreamTicketSerializer();
}

class _$StreamTicketSerializer implements PrimitiveSerializer<StreamTicket> {
  @override
  final Iterable<Type> types = const [StreamTicket, _$StreamTicket];

  @override
  final String wireName = r'StreamTicket';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StreamTicket object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ticket';
    yield serializers.serialize(
      object.ticket,
      specifiedType: const FullType(String),
    );
    yield r'purpose';
    yield serializers.serialize(
      object.purpose,
      specifiedType: const FullType(StreamTicketPurposeEnum),
    );
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.paths != null) {
      yield r'paths';
      yield serializers.serialize(
        object.paths,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StreamTicket object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StreamTicketBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ticket':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ticket = valueDes;
          break;
        case r'purpose':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StreamTicketPurposeEnum),
                  )
                  as StreamTicketPurposeEnum;
          result.purpose = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'paths':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.paths.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StreamTicket deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamTicketBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class StreamTicketPurposeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'stream')
  static const StreamTicketPurposeEnum stream =
      _$streamTicketPurposeEnum_stream;
  @BuiltValueEnumConst(wireName: r'tiles')
  static const StreamTicketPurposeEnum tiles = _$streamTicketPurposeEnum_tiles;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamTicketPurposeEnum unknownDefaultOpenApi =
      _$streamTicketPurposeEnum_unknownDefaultOpenApi;

  static Serializer<StreamTicketPurposeEnum> get serializer =>
      _$streamTicketPurposeEnumSerializer;

  const StreamTicketPurposeEnum._(String name) : super(name);

  static BuiltSet<StreamTicketPurposeEnum> get values =>
      _$streamTicketPurposeEnumValues;
  static StreamTicketPurposeEnum valueOf(String name) =>
      _$streamTicketPurposeEnumValueOf(name);
}
