//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'native_push_payload_apns_e.g.dart';

/// Foresignal ids
///
/// Properties:
/// * [v]
/// * [id] - The notification id (0 for a test push)
/// * [a]
/// * [s]
/// * [ev]
/// * [l]
@BuiltValue()
abstract class NativePushPayloadApnsE
    implements Built<NativePushPayloadApnsE, NativePushPayloadApnsEBuilder> {
  @BuiltValueField(wireName: r'v')
  NativePushPayloadApnsEVEnum get v;
  // enum vEnum {  1,  };

  /// The notification id (0 for a test push)
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'a')
  int? get a;

  @BuiltValueField(wireName: r's')
  NativePushPayloadApnsESEnum get s;
  // enum sEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'ev')
  NativePushPayloadApnsEEvEnum get ev;
  // enum evEnum {  alert,  briefing,  system,  };

  @BuiltValueField(wireName: r'l')
  String? get l;

  NativePushPayloadApnsE._();

  factory NativePushPayloadApnsE([
    void updates(NativePushPayloadApnsEBuilder b),
  ]) = _$NativePushPayloadApnsE;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NativePushPayloadApnsEBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NativePushPayloadApnsE> get serializer =>
      _$NativePushPayloadApnsESerializer();
}

class _$NativePushPayloadApnsESerializer
    implements PrimitiveSerializer<NativePushPayloadApnsE> {
  @override
  final Iterable<Type> types = const [
    NativePushPayloadApnsE,
    _$NativePushPayloadApnsE,
  ];

  @override
  final String wireName = r'NativePushPayloadApnsE';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NativePushPayloadApnsE object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'v';
    yield serializers.serialize(
      object.v,
      specifiedType: const FullType(NativePushPayloadApnsEVEnum),
    );
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    if (object.a != null) {
      yield r'a';
      yield serializers.serialize(
        object.a,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r's';
    yield serializers.serialize(
      object.s,
      specifiedType: const FullType(NativePushPayloadApnsESEnum),
    );
    yield r'ev';
    yield serializers.serialize(
      object.ev,
      specifiedType: const FullType(NativePushPayloadApnsEEvEnum),
    );
    if (object.l != null) {
      yield r'l';
      yield serializers.serialize(
        object.l,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadApnsE object, {
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
    required NativePushPayloadApnsEBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'v':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NativePushPayloadApnsEVEnum),
                  )
                  as NativePushPayloadApnsEVEnum;
          result.v = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.id = valueDes;
          break;
        case r'a':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.a = valueDes;
          break;
        case r's':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NativePushPayloadApnsESEnum),
                  )
                  as NativePushPayloadApnsESEnum;
          result.s = valueDes;
          break;
        case r'ev':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NativePushPayloadApnsEEvEnum),
                  )
                  as NativePushPayloadApnsEEvEnum;
          result.ev = valueDes;
          break;
        case r'l':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.l = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NativePushPayloadApnsE deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NativePushPayloadApnsEBuilder();
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

class NativePushPayloadApnsEVEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const NativePushPayloadApnsEVEnum number1 =
      _$nativePushPayloadApnsEVEnum_number1;
  @BuiltValueEnumConst(wireNumber: 11184809, fallback: true)
  static const NativePushPayloadApnsEVEnum unknownDefaultOpenApi =
      _$nativePushPayloadApnsEVEnum_unknownDefaultOpenApi;

  static Serializer<NativePushPayloadApnsEVEnum> get serializer =>
      _$nativePushPayloadApnsEVEnumSerializer;

  const NativePushPayloadApnsEVEnum._(String name) : super(name);

  static BuiltSet<NativePushPayloadApnsEVEnum> get values =>
      _$nativePushPayloadApnsEVEnumValues;
  static NativePushPayloadApnsEVEnum valueOf(String name) =>
      _$nativePushPayloadApnsEVEnumValueOf(name);
}

class NativePushPayloadApnsESEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const NativePushPayloadApnsESEnum info =
      _$nativePushPayloadApnsESEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const NativePushPayloadApnsESEnum warning =
      _$nativePushPayloadApnsESEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const NativePushPayloadApnsESEnum critical =
      _$nativePushPayloadApnsESEnum_critical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NativePushPayloadApnsESEnum unknownDefaultOpenApi =
      _$nativePushPayloadApnsESEnum_unknownDefaultOpenApi;

  static Serializer<NativePushPayloadApnsESEnum> get serializer =>
      _$nativePushPayloadApnsESEnumSerializer;

  const NativePushPayloadApnsESEnum._(String name) : super(name);

  static BuiltSet<NativePushPayloadApnsESEnum> get values =>
      _$nativePushPayloadApnsESEnumValues;
  static NativePushPayloadApnsESEnum valueOf(String name) =>
      _$nativePushPayloadApnsESEnumValueOf(name);
}

class NativePushPayloadApnsEEvEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const NativePushPayloadApnsEEvEnum alert =
      _$nativePushPayloadApnsEEvEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const NativePushPayloadApnsEEvEnum briefing =
      _$nativePushPayloadApnsEEvEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const NativePushPayloadApnsEEvEnum system =
      _$nativePushPayloadApnsEEvEnum_system;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NativePushPayloadApnsEEvEnum unknownDefaultOpenApi =
      _$nativePushPayloadApnsEEvEnum_unknownDefaultOpenApi;

  static Serializer<NativePushPayloadApnsEEvEnum> get serializer =>
      _$nativePushPayloadApnsEEvEnumSerializer;

  const NativePushPayloadApnsEEvEnum._(String name) : super(name);

  static BuiltSet<NativePushPayloadApnsEEvEnum> get values =>
      _$nativePushPayloadApnsEEvEnumValues;
  static NativePushPayloadApnsEEvEnum valueOf(String name) =>
      _$nativePushPayloadApnsEEvEnumValueOf(name);
}
