//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/shared_content_links.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shared_content.g.dart';

/// What a share link resolves to: the masked target with attribution (112)
///
/// Properties:
/// * [targetType]
/// * [title]
/// * [expiresAt]
/// * [masked]
/// * [precisionM]
/// * [data] - The target's JSON after licence filtering, privacy masking and the field allowlist
/// * [attributions]
/// * [links]
@BuiltValue()
abstract class SharedContent
    implements Built<SharedContent, SharedContentBuilder> {
  @BuiltValueField(wireName: r'targetType')
  SharedContentTargetTypeEnum get targetType;
  // enum targetTypeEnum {  record,  alert,  view,  track,  briefing-run,  export,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'masked')
  bool get masked;

  @BuiltValueField(wireName: r'precisionM')
  int? get precisionM;

  /// The target's JSON after licence filtering, privacy masking and the field allowlist
  @BuiltValueField(wireName: r'data')
  BuiltMap<String, JsonObject?> get data;

  @BuiltValueField(wireName: r'attributions')
  BuiltList<Attribution> get attributions;

  @BuiltValueField(wireName: r'links')
  SharedContentLinks? get links;

  SharedContent._();

  factory SharedContent([void updates(SharedContentBuilder b)]) =
      _$SharedContent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SharedContentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SharedContent> get serializer =>
      _$SharedContentSerializer();
}

class _$SharedContentSerializer implements PrimitiveSerializer<SharedContent> {
  @override
  final Iterable<Type> types = const [SharedContent, _$SharedContent];

  @override
  final String wireName = r'SharedContent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SharedContent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'targetType';
    yield serializers.serialize(
      object.targetType,
      specifiedType: const FullType(SharedContentTargetTypeEnum),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'masked';
    yield serializers.serialize(
      object.masked,
      specifiedType: const FullType(bool),
    );
    if (object.precisionM != null) {
      yield r'precisionM';
      yield serializers.serialize(
        object.precisionM,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
    yield r'attributions';
    yield serializers.serialize(
      object.attributions,
      specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
    );
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(SharedContentLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SharedContent object, {
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
    required SharedContentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'targetType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SharedContentTargetTypeEnum),
                  )
                  as SharedContentTargetTypeEnum;
          result.targetType = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
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
        case r'masked':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.masked = valueDes;
          break;
        case r'precisionM':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.precisionM = valueDes;
          break;
        case r'data':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>;
          result.data.replace(valueDes);
          break;
        case r'attributions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Attribution),
                    ]),
                  )
                  as BuiltList<Attribution>;
          result.attributions.replace(valueDes);
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SharedContentLinks),
                  )
                  as SharedContentLinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SharedContent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SharedContentBuilder();
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

class SharedContentTargetTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const SharedContentTargetTypeEnum record =
      _$sharedContentTargetTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'alert')
  static const SharedContentTargetTypeEnum alert =
      _$sharedContentTargetTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'view')
  static const SharedContentTargetTypeEnum view =
      _$sharedContentTargetTypeEnum_view;
  @BuiltValueEnumConst(wireName: r'track')
  static const SharedContentTargetTypeEnum track =
      _$sharedContentTargetTypeEnum_track;
  @BuiltValueEnumConst(wireName: r'briefing-run')
  static const SharedContentTargetTypeEnum briefingRun =
      _$sharedContentTargetTypeEnum_briefingRun;
  @BuiltValueEnumConst(wireName: r'export')
  static const SharedContentTargetTypeEnum export_ =
      _$sharedContentTargetTypeEnum_export_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SharedContentTargetTypeEnum unknownDefaultOpenApi =
      _$sharedContentTargetTypeEnum_unknownDefaultOpenApi;

  static Serializer<SharedContentTargetTypeEnum> get serializer =>
      _$sharedContentTargetTypeEnumSerializer;

  const SharedContentTargetTypeEnum._(String name) : super(name);

  static BuiltSet<SharedContentTargetTypeEnum> get values =>
      _$sharedContentTargetTypeEnumValues;
  static SharedContentTargetTypeEnum valueOf(String name) =>
      _$sharedContentTargetTypeEnumValueOf(name);
}
