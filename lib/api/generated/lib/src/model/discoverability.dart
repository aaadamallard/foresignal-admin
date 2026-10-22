//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discoverability.g.dart';

/// A chronicle's discoverability setting (134); TLP caps it (RED → none; AMBER+STRICT → none | instance)
///
/// Properties:
/// * [discoverability] - The effective setting (the owner's choice capped by the TLP label) in responses; the requested one in requests
/// * [revealTitle]
/// * [revealOwner]
/// * [maxAllowed] - Highest setting the chronicle's TLP allows
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [updatedAt]
@BuiltValue()
abstract class Discoverability
    implements Built<Discoverability, DiscoverabilityBuilder> {
  /// The effective setting (the owner's choice capped by the TLP label) in responses; the requested one in requests
  @BuiltValueField(wireName: r'discoverability')
  DiscoverabilityDiscoverabilityEnum get discoverability;
  // enum discoverabilityEnum {  none,  instance,  network,  };

  @BuiltValueField(wireName: r'revealTitle')
  bool? get revealTitle;

  @BuiltValueField(wireName: r'revealOwner')
  bool? get revealOwner;

  /// Highest setting the chronicle's TLP allows
  @BuiltValueField(wireName: r'maxAllowed')
  DiscoverabilityMaxAllowedEnum? get maxAllowed;
  // enum maxAllowedEnum {  none,  instance,  network,  };

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  Discoverability._();

  factory Discoverability([void updates(DiscoverabilityBuilder b)]) =
      _$Discoverability;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DiscoverabilityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Discoverability> get serializer =>
      _$DiscoverabilitySerializer();
}

class _$DiscoverabilitySerializer
    implements PrimitiveSerializer<Discoverability> {
  @override
  final Iterable<Type> types = const [Discoverability, _$Discoverability];

  @override
  final String wireName = r'Discoverability';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Discoverability object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'discoverability';
    yield serializers.serialize(
      object.discoverability,
      specifiedType: const FullType(DiscoverabilityDiscoverabilityEnum),
    );
    if (object.revealTitle != null) {
      yield r'revealTitle';
      yield serializers.serialize(
        object.revealTitle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.revealOwner != null) {
      yield r'revealOwner';
      yield serializers.serialize(
        object.revealOwner,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxAllowed != null) {
      yield r'maxAllowed';
      yield serializers.serialize(
        object.maxAllowed,
        specifiedType: const FullType(DiscoverabilityMaxAllowedEnum),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Discoverability object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DiscoverabilityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'discoverability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DiscoverabilityDiscoverabilityEnum),
          ) as DiscoverabilityDiscoverabilityEnum;
          result.discoverability = valueDes;
          break;
        case r'revealTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.revealTitle = valueDes;
          break;
        case r'revealOwner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.revealOwner = valueDes;
          break;
        case r'maxAllowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(DiscoverabilityMaxAllowedEnum),
          ) as DiscoverabilityMaxAllowedEnum?;
          if (valueDes == null) continue;
          result.maxAllowed = valueDes;
          break;
        case r'tlp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tlp = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Discoverability deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiscoverabilityBuilder();
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

/// The effective setting (the owner's choice capped by the TLP label) in responses; the requested one in requests
class DiscoverabilityDiscoverabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const DiscoverabilityDiscoverabilityEnum none =
      _$discoverabilityDiscoverabilityEnum_none;
  @BuiltValueEnumConst(wireName: r'instance')
  static const DiscoverabilityDiscoverabilityEnum instance =
      _$discoverabilityDiscoverabilityEnum_instance;
  @BuiltValueEnumConst(wireName: r'network')
  static const DiscoverabilityDiscoverabilityEnum network =
      _$discoverabilityDiscoverabilityEnum_network;

  static Serializer<DiscoverabilityDiscoverabilityEnum> get serializer =>
      _$discoverabilityDiscoverabilityEnumSerializer;

  const DiscoverabilityDiscoverabilityEnum._(String name) : super(name);

  static BuiltSet<DiscoverabilityDiscoverabilityEnum> get values =>
      _$discoverabilityDiscoverabilityEnumValues;
  static DiscoverabilityDiscoverabilityEnum valueOf(String name) =>
      _$discoverabilityDiscoverabilityEnumValueOf(name);
}

/// Highest setting the chronicle's TLP allows
class DiscoverabilityMaxAllowedEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const DiscoverabilityMaxAllowedEnum none =
      _$discoverabilityMaxAllowedEnum_none;
  @BuiltValueEnumConst(wireName: r'instance')
  static const DiscoverabilityMaxAllowedEnum instance =
      _$discoverabilityMaxAllowedEnum_instance;
  @BuiltValueEnumConst(wireName: r'network')
  static const DiscoverabilityMaxAllowedEnum network =
      _$discoverabilityMaxAllowedEnum_network;

  static Serializer<DiscoverabilityMaxAllowedEnum> get serializer =>
      _$discoverabilityMaxAllowedEnumSerializer;

  const DiscoverabilityMaxAllowedEnum._(String name) : super(name);

  static BuiltSet<DiscoverabilityMaxAllowedEnum> get values =>
      _$discoverabilityMaxAllowedEnumValues;
  static DiscoverabilityMaxAllowedEnum valueOf(String name) =>
      _$discoverabilityMaxAllowedEnumValueOf(name);
}
