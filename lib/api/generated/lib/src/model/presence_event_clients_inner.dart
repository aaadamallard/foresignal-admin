//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'presence_event_clients_inner.g.dart';

/// Connected client
///
/// Properties:
/// * [clientId]
/// * [clientKind]
/// * [principal]
/// * [connectedAt]
@BuiltValue()
abstract class PresenceEventClientsInner
    implements
        Built<PresenceEventClientsInner, PresenceEventClientsInnerBuilder> {
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  @BuiltValueField(wireName: r'clientKind')
  PresenceEventClientsInnerClientKindEnum get clientKind;
  // enum clientKindEnum {  globe,  map,  analyst,  satellite,  rf,  mobile,  agent,  other,  };

  @BuiltValueField(wireName: r'principal')
  String? get principal;

  @BuiltValueField(wireName: r'connectedAt')
  DateTime get connectedAt;

  PresenceEventClientsInner._();

  factory PresenceEventClientsInner([
    void updates(PresenceEventClientsInnerBuilder b),
  ]) = _$PresenceEventClientsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PresenceEventClientsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PresenceEventClientsInner> get serializer =>
      _$PresenceEventClientsInnerSerializer();
}

class _$PresenceEventClientsInnerSerializer
    implements PrimitiveSerializer<PresenceEventClientsInner> {
  @override
  final Iterable<Type> types = const [
    PresenceEventClientsInner,
    _$PresenceEventClientsInner,
  ];

  @override
  final String wireName = r'PresenceEventClientsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PresenceEventClientsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    yield r'clientKind';
    yield serializers.serialize(
      object.clientKind,
      specifiedType: const FullType(PresenceEventClientsInnerClientKindEnum),
    );
    if (object.principal != null) {
      yield r'principal';
      yield serializers.serialize(
        object.principal,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'connectedAt';
    yield serializers.serialize(
      object.connectedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PresenceEventClientsInner object, {
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
    required PresenceEventClientsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'clientId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.clientId = valueDes;
          break;
        case r'clientKind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      PresenceEventClientsInnerClientKindEnum,
                    ),
                  )
                  as PresenceEventClientsInnerClientKindEnum;
          result.clientKind = valueDes;
          break;
        case r'principal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.principal = valueDes;
          break;
        case r'connectedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.connectedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PresenceEventClientsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PresenceEventClientsInnerBuilder();
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

class PresenceEventClientsInnerClientKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'globe')
  static const PresenceEventClientsInnerClientKindEnum globe =
      _$presenceEventClientsInnerClientKindEnum_globe;
  @BuiltValueEnumConst(wireName: r'map')
  static const PresenceEventClientsInnerClientKindEnum map =
      _$presenceEventClientsInnerClientKindEnum_map;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const PresenceEventClientsInnerClientKindEnum analyst =
      _$presenceEventClientsInnerClientKindEnum_analyst;
  @BuiltValueEnumConst(wireName: r'satellite')
  static const PresenceEventClientsInnerClientKindEnum satellite =
      _$presenceEventClientsInnerClientKindEnum_satellite;
  @BuiltValueEnumConst(wireName: r'rf')
  static const PresenceEventClientsInnerClientKindEnum rf =
      _$presenceEventClientsInnerClientKindEnum_rf;
  @BuiltValueEnumConst(wireName: r'mobile')
  static const PresenceEventClientsInnerClientKindEnum mobile =
      _$presenceEventClientsInnerClientKindEnum_mobile;
  @BuiltValueEnumConst(wireName: r'agent')
  static const PresenceEventClientsInnerClientKindEnum agent =
      _$presenceEventClientsInnerClientKindEnum_agent;
  @BuiltValueEnumConst(wireName: r'other')
  static const PresenceEventClientsInnerClientKindEnum other =
      _$presenceEventClientsInnerClientKindEnum_other;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PresenceEventClientsInnerClientKindEnum unknownDefaultOpenApi =
      _$presenceEventClientsInnerClientKindEnum_unknownDefaultOpenApi;

  static Serializer<PresenceEventClientsInnerClientKindEnum> get serializer =>
      _$presenceEventClientsInnerClientKindEnumSerializer;

  const PresenceEventClientsInnerClientKindEnum._(String name) : super(name);

  static BuiltSet<PresenceEventClientsInnerClientKindEnum> get values =>
      _$presenceEventClientsInnerClientKindEnumValues;
  static PresenceEventClientsInnerClientKindEnum valueOf(String name) =>
      _$presenceEventClientsInnerClientKindEnumValueOf(name);
}
