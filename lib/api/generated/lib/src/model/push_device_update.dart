//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/push_filters.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_device_update.g.dart';

/// Editable fields of a registered device (032)
///
/// Properties:
/// * [name]
/// * [filters]
/// * [contentLevel]
/// * [lang]
@BuiltValue()
abstract class PushDeviceUpdate
    implements Built<PushDeviceUpdate, PushDeviceUpdateBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'filters')
  PushFilters? get filters;

  @BuiltValueField(wireName: r'contentLevel')
  PushDeviceUpdateContentLevelEnum? get contentLevel;
  // enum contentLevelEnum {  minimal,  short,  };

  @BuiltValueField(wireName: r'lang')
  String? get lang;

  PushDeviceUpdate._();

  factory PushDeviceUpdate([void updates(PushDeviceUpdateBuilder b)]) =
      _$PushDeviceUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushDeviceUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushDeviceUpdate> get serializer =>
      _$PushDeviceUpdateSerializer();
}

class _$PushDeviceUpdateSerializer
    implements PrimitiveSerializer<PushDeviceUpdate> {
  @override
  final Iterable<Type> types = const [PushDeviceUpdate, _$PushDeviceUpdate];

  @override
  final String wireName = r'PushDeviceUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushDeviceUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(PushFilters),
      );
    }
    if (object.contentLevel != null) {
      yield r'contentLevel';
      yield serializers.serialize(
        object.contentLevel,
        specifiedType: const FullType(PushDeviceUpdateContentLevelEnum),
      );
    }
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushDeviceUpdate object, {
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
    required PushDeviceUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'filters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PushFilters),
                  )
                  as PushFilters?;
          if (valueDes == null) continue;
          result.filters.replace(valueDes);
          break;
        case r'contentLevel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PushDeviceUpdateContentLevelEnum,
                    ),
                  )
                  as PushDeviceUpdateContentLevelEnum?;
          if (valueDes == null) continue;
          result.contentLevel = valueDes;
          break;
        case r'lang':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lang = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushDeviceUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushDeviceUpdateBuilder();
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

class PushDeviceUpdateContentLevelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'minimal')
  static const PushDeviceUpdateContentLevelEnum minimal =
      _$pushDeviceUpdateContentLevelEnum_minimal;
  @BuiltValueEnumConst(wireName: r'short')
  static const PushDeviceUpdateContentLevelEnum short =
      _$pushDeviceUpdateContentLevelEnum_short;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PushDeviceUpdateContentLevelEnum unknownDefaultOpenApi =
      _$pushDeviceUpdateContentLevelEnum_unknownDefaultOpenApi;

  static Serializer<PushDeviceUpdateContentLevelEnum> get serializer =>
      _$pushDeviceUpdateContentLevelEnumSerializer;

  const PushDeviceUpdateContentLevelEnum._(String name) : super(name);

  static BuiltSet<PushDeviceUpdateContentLevelEnum> get values =>
      _$pushDeviceUpdateContentLevelEnumValues;
  static PushDeviceUpdateContentLevelEnum valueOf(String name) =>
      _$pushDeviceUpdateContentLevelEnumValueOf(name);
}
