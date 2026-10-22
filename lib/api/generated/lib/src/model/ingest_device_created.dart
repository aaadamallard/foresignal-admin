//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ingest_device_setup.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_device_created.g.dart';

/// A device key returned once with app setup data (039)
///
/// Properties:
/// * [id]
/// * [sourceId]
/// * [externalId]
/// * [name]
/// * [keyPrefix]
/// * [createdAt]
/// * [lastSeenAt]
/// * [revokedAt]
/// * [key] - `eid_…`; shown once
/// * [setup]
@BuiltValue()
abstract class IngestDeviceCreated
    implements Built<IngestDeviceCreated, IngestDeviceCreatedBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'keyPrefix')
  String get keyPrefix;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'lastSeenAt')
  DateTime? get lastSeenAt;

  @BuiltValueField(wireName: r'revokedAt')
  DateTime? get revokedAt;

  /// `eid_…`; shown once
  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'setup')
  IngestDeviceSetup get setup;

  IngestDeviceCreated._();

  factory IngestDeviceCreated([void updates(IngestDeviceCreatedBuilder b)]) =
      _$IngestDeviceCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestDeviceCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestDeviceCreated> get serializer =>
      _$IngestDeviceCreatedSerializer();
}

class _$IngestDeviceCreatedSerializer
    implements PrimitiveSerializer<IngestDeviceCreated> {
  @override
  final Iterable<Type> types = const [
    IngestDeviceCreated,
    _$IngestDeviceCreated,
  ];

  @override
  final String wireName = r'IngestDeviceCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestDeviceCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'keyPrefix';
    yield serializers.serialize(
      object.keyPrefix,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastSeenAt != null) {
      yield r'lastSeenAt';
      yield serializers.serialize(
        object.lastSeenAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.revokedAt != null) {
      yield r'revokedAt';
      yield serializers.serialize(
        object.revokedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'setup';
    yield serializers.serialize(
      object.setup,
      specifiedType: const FullType(IngestDeviceSetup),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestDeviceCreated object, {
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
    required IngestDeviceCreatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'keyPrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.keyPrefix = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'lastSeenAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastSeenAt = valueDes;
          break;
        case r'revokedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.revokedAt = valueDes;
          break;
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.key = valueDes;
          break;
        case r'setup':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IngestDeviceSetup),
                  )
                  as IngestDeviceSetup;
          result.setup.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestDeviceCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestDeviceCreatedBuilder();
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
