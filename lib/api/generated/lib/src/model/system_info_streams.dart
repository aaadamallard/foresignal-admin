//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_streams.g.dart';

/// SystemInfoStreams
///
/// Properties:
/// * [clients] - Open SSE clients
/// * [maxClients]
/// * [changeSubscribers]
/// * [alertSubscribers]
/// * [eventSubscribers]
@BuiltValue()
abstract class SystemInfoStreams
    implements Built<SystemInfoStreams, SystemInfoStreamsBuilder> {
  /// Open SSE clients
  @BuiltValueField(wireName: r'clients')
  int? get clients;

  @BuiltValueField(wireName: r'maxClients')
  int? get maxClients;

  @BuiltValueField(wireName: r'changeSubscribers')
  int? get changeSubscribers;

  @BuiltValueField(wireName: r'alertSubscribers')
  int? get alertSubscribers;

  @BuiltValueField(wireName: r'eventSubscribers')
  int? get eventSubscribers;

  SystemInfoStreams._();

  factory SystemInfoStreams([void updates(SystemInfoStreamsBuilder b)]) =
      _$SystemInfoStreams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoStreamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoStreams> get serializer =>
      _$SystemInfoStreamsSerializer();
}

class _$SystemInfoStreamsSerializer
    implements PrimitiveSerializer<SystemInfoStreams> {
  @override
  final Iterable<Type> types = const [SystemInfoStreams, _$SystemInfoStreams];

  @override
  final String wireName = r'SystemInfoStreams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoStreams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.clients != null) {
      yield r'clients';
      yield serializers.serialize(
        object.clients,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxClients != null) {
      yield r'maxClients';
      yield serializers.serialize(
        object.maxClients,
        specifiedType: const FullType(int),
      );
    }
    if (object.changeSubscribers != null) {
      yield r'changeSubscribers';
      yield serializers.serialize(
        object.changeSubscribers,
        specifiedType: const FullType(int),
      );
    }
    if (object.alertSubscribers != null) {
      yield r'alertSubscribers';
      yield serializers.serialize(
        object.alertSubscribers,
        specifiedType: const FullType(int),
      );
    }
    if (object.eventSubscribers != null) {
      yield r'eventSubscribers';
      yield serializers.serialize(
        object.eventSubscribers,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoStreams object, {
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
    required SystemInfoStreamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'clients':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.clients = valueDes;
          break;
        case r'maxClients':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxClients = valueDes;
          break;
        case r'changeSubscribers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.changeSubscribers = valueDes;
          break;
        case r'alertSubscribers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.alertSubscribers = valueDes;
          break;
        case r'eventSubscribers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.eventSubscribers = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoStreams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoStreamsBuilder();
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
