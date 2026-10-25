//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stream_ticket_request.g.dart';

/// Request for a stream or tile ticket (023)
///
/// Properties:
/// * [purpose]
/// * [paths] - Optional narrower set of paths (within the purpose's paths) the ticket may be used on
/// * [ttl] - Tile tickets only: lifetime, default 10m, max 1h (ISO-8601 or shorthand)
@BuiltValue()
abstract class StreamTicketRequest
    implements Built<StreamTicketRequest, StreamTicketRequestBuilder> {
  @BuiltValueField(wireName: r'purpose')
  StreamTicketRequestPurposeEnum get purpose;
  // enum purposeEnum {  stream,  tiles,  };

  /// Optional narrower set of paths (within the purpose's paths) the ticket may be used on
  @BuiltValueField(wireName: r'paths')
  BuiltList<String>? get paths;

  /// Tile tickets only: lifetime, default 10m, max 1h (ISO-8601 or shorthand)
  @BuiltValueField(wireName: r'ttl')
  String? get ttl;

  StreamTicketRequest._();

  factory StreamTicketRequest([void updates(StreamTicketRequestBuilder b)]) =
      _$StreamTicketRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StreamTicketRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StreamTicketRequest> get serializer =>
      _$StreamTicketRequestSerializer();
}

class _$StreamTicketRequestSerializer
    implements PrimitiveSerializer<StreamTicketRequest> {
  @override
  final Iterable<Type> types = const [
    StreamTicketRequest,
    _$StreamTicketRequest,
  ];

  @override
  final String wireName = r'StreamTicketRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StreamTicketRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'purpose';
    yield serializers.serialize(
      object.purpose,
      specifiedType: const FullType(StreamTicketRequestPurposeEnum),
    );
    if (object.paths != null) {
      yield r'paths';
      yield serializers.serialize(
        object.paths,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.ttl != null) {
      yield r'ttl';
      yield serializers.serialize(
        object.ttl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StreamTicketRequest object, {
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
    required StreamTicketRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'purpose':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      StreamTicketRequestPurposeEnum,
                    ),
                  )
                  as StreamTicketRequestPurposeEnum;
          result.purpose = valueDes;
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
        case r'ttl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ttl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StreamTicketRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamTicketRequestBuilder();
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

class StreamTicketRequestPurposeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'stream')
  static const StreamTicketRequestPurposeEnum stream =
      _$streamTicketRequestPurposeEnum_stream;
  @BuiltValueEnumConst(wireName: r'tiles')
  static const StreamTicketRequestPurposeEnum tiles =
      _$streamTicketRequestPurposeEnum_tiles;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StreamTicketRequestPurposeEnum unknownDefaultOpenApi =
      _$streamTicketRequestPurposeEnum_unknownDefaultOpenApi;

  static Serializer<StreamTicketRequestPurposeEnum> get serializer =>
      _$streamTicketRequestPurposeEnumSerializer;

  const StreamTicketRequestPurposeEnum._(String name) : super(name);

  static BuiltSet<StreamTicketRequestPurposeEnum> get values =>
      _$streamTicketRequestPurposeEnumValues;
  static StreamTicketRequestPurposeEnum valueOf(String name) =>
      _$streamTicketRequestPurposeEnumValueOf(name);
}
