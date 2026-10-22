//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_external_stream_selector.g.dart';

/// Chronicle layer capturing an external stream (138)
///
/// Properties:
/// * [type]
/// * [sourceId]
/// * [streamId]
/// * [filter]
@BuiltValue()
abstract class ChronicleExternalStreamSelector
    implements
        Built<ChronicleExternalStreamSelector,
            ChronicleExternalStreamSelectorBuilder> {
  @BuiltValueField(wireName: r'type')
  ChronicleExternalStreamSelectorTypeEnum get type;
  // enum typeEnum {  external-stream,  };

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'streamId')
  String get streamId;

  @BuiltValueField(wireName: r'filter')
  BuiltList<BuiltMap<String, JsonObject?>>? get filter;

  ChronicleExternalStreamSelector._();

  factory ChronicleExternalStreamSelector(
          [void updates(ChronicleExternalStreamSelectorBuilder b)]) =
      _$ChronicleExternalStreamSelector;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleExternalStreamSelectorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleExternalStreamSelector> get serializer =>
      _$ChronicleExternalStreamSelectorSerializer();
}

class _$ChronicleExternalStreamSelectorSerializer
    implements PrimitiveSerializer<ChronicleExternalStreamSelector> {
  @override
  final Iterable<Type> types = const [
    ChronicleExternalStreamSelector,
    _$ChronicleExternalStreamSelector
  ];

  @override
  final String wireName = r'ChronicleExternalStreamSelector';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleExternalStreamSelector object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ChronicleExternalStreamSelectorTypeEnum),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'streamId';
    yield serializers.serialize(
      object.streamId,
      specifiedType: const FullType(String),
    );
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType.nullable(BuiltList, [
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleExternalStreamSelector object, {
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
    required ChronicleExternalStreamSelectorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ChronicleExternalStreamSelectorTypeEnum),
          ) as ChronicleExternalStreamSelectorTypeEnum;
          result.type = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'streamId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.streamId = valueDes;
          break;
        case r'filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(
                  BuiltMap, [FullType(String), FullType.nullable(JsonObject)])
            ]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.filter.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleExternalStreamSelector deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleExternalStreamSelectorBuilder();
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

class ChronicleExternalStreamSelectorTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'external-stream')
  static const ChronicleExternalStreamSelectorTypeEnum externalStream =
      _$chronicleExternalStreamSelectorTypeEnum_externalStream;

  static Serializer<ChronicleExternalStreamSelectorTypeEnum> get serializer =>
      _$chronicleExternalStreamSelectorTypeEnumSerializer;

  const ChronicleExternalStreamSelectorTypeEnum._(String name) : super(name);

  static BuiltSet<ChronicleExternalStreamSelectorTypeEnum> get values =>
      _$chronicleExternalStreamSelectorTypeEnumValues;
  static ChronicleExternalStreamSelectorTypeEnum valueOf(String name) =>
      _$chronicleExternalStreamSelectorTypeEnumValueOf(name);
}
