//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/egress_health.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'egress_route.g.dart';

/// An egress route: a proxy, VPN profile or bound interface the collector can present as an exit (C1/181); secrets are write-only
///
/// Properties:
/// * [id]
/// * [name]
/// * [type]
/// * [enabled]
/// * [url] - Proxy URL (scheme://host:port); credentials are not shown here
/// * [boundInterface] - Host interface or source IP to bind (type interface)
/// * [exitIp] - Last observed public exit IP from a test call
/// * [health]
/// * [secretsSet] - Names of secrets that have a stored value
/// * [createdAt]
/// * [updatedAt]
/// * [available] - Whether the server can send through this route now: false for a wireguard route (the server cannot bring a tunnel up), a disabled route, an interface it cannot find, or secrets it cannot open (R2-018)
/// * [unavailableReason] - Why the route is unavailable; null when available
@BuiltValue()
abstract class EgressRoute implements Built<EgressRoute, EgressRouteBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Proxy URL (scheme://host:port); credentials are not shown here
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// Host interface or source IP to bind (type interface)
  @BuiltValueField(wireName: r'boundInterface')
  String? get boundInterface;

  /// Last observed public exit IP from a test call
  @BuiltValueField(wireName: r'exitIp')
  String? get exitIp;

  @BuiltValueField(wireName: r'health')
  EgressHealth? get health;

  /// Names of secrets that have a stored value
  @BuiltValueField(wireName: r'secretsSet')
  BuiltList<String>? get secretsSet;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  /// Whether the server can send through this route now: false for a wireguard route (the server cannot bring a tunnel up), a disabled route, an interface it cannot find, or secrets it cannot open (R2-018)
  @BuiltValueField(wireName: r'available')
  bool? get available;

  /// Why the route is unavailable; null when available
  @BuiltValueField(wireName: r'unavailableReason')
  String? get unavailableReason;

  EgressRoute._();

  factory EgressRoute([void updates(EgressRouteBuilder b)]) = _$EgressRoute;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EgressRouteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EgressRoute> get serializer => _$EgressRouteSerializer();
}

class _$EgressRouteSerializer implements PrimitiveSerializer<EgressRoute> {
  @override
  final Iterable<Type> types = const [EgressRoute, _$EgressRoute];

  @override
  final String wireName = r'EgressRoute';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EgressRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.boundInterface != null) {
      yield r'boundInterface';
      yield serializers.serialize(
        object.boundInterface,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.exitIp != null) {
      yield r'exitIp';
      yield serializers.serialize(
        object.exitIp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.health != null) {
      yield r'health';
      yield serializers.serialize(
        object.health,
        specifiedType: const FullType.nullable(EgressHealth),
      );
    }
    if (object.secretsSet != null) {
      yield r'secretsSet';
      yield serializers.serialize(
        object.secretsSet,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.available != null) {
      yield r'available';
      yield serializers.serialize(
        object.available,
        specifiedType: const FullType(bool),
      );
    }
    if (object.unavailableReason != null) {
      yield r'unavailableReason';
      yield serializers.serialize(
        object.unavailableReason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EgressRoute object, {
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
    required EgressRouteBuilder result,
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
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'boundInterface':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.boundInterface = valueDes;
          break;
        case r'exitIp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.exitIp = valueDes;
          break;
        case r'health':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EgressHealth),
                  )
                  as EgressHealth?;
          if (valueDes == null) continue;
          result.health.replace(valueDes);
          break;
        case r'secretsSet':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.secretsSet.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'available':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.available = valueDes;
          break;
        case r'unavailableReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.unavailableReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EgressRoute deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EgressRouteBuilder();
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
