//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_suggested_binding.g.dart';

/// A binding the provider recommends for an atomic stream
///
/// Properties:
/// * [target]
/// * [config]
@BuiltValue()
abstract class EdpSuggestedBinding
    implements Built<EdpSuggestedBinding, EdpSuggestedBindingBuilder> {
  @BuiltValueField(wireName: r'target')
  EdpSuggestedBindingTargetEnum get target;
  // enum targetEnum {  series,  canonical-family,  social,  news,  evidence,  indicator,  forecast,  place,  situation,  chronicle,  };

  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  EdpSuggestedBinding._();

  factory EdpSuggestedBinding([void updates(EdpSuggestedBindingBuilder b)]) =
      _$EdpSuggestedBinding;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpSuggestedBindingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpSuggestedBinding> get serializer =>
      _$EdpSuggestedBindingSerializer();
}

class _$EdpSuggestedBindingSerializer
    implements PrimitiveSerializer<EdpSuggestedBinding> {
  @override
  final Iterable<Type> types = const [
    EdpSuggestedBinding,
    _$EdpSuggestedBinding,
  ];

  @override
  final String wireName = r'EdpSuggestedBinding';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpSuggestedBinding object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(EdpSuggestedBindingTargetEnum),
    );
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpSuggestedBinding object, {
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
    required EdpSuggestedBindingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      EdpSuggestedBindingTargetEnum,
                    ),
                  )
                  as EdpSuggestedBindingTargetEnum;
          result.target = valueDes;
          break;
        case r'config':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpSuggestedBinding deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpSuggestedBindingBuilder();
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

class EdpSuggestedBindingTargetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'series')
  static const EdpSuggestedBindingTargetEnum series =
      _$edpSuggestedBindingTargetEnum_series;
  @BuiltValueEnumConst(wireName: r'canonical-family')
  static const EdpSuggestedBindingTargetEnum canonicalFamily =
      _$edpSuggestedBindingTargetEnum_canonicalFamily;
  @BuiltValueEnumConst(wireName: r'social')
  static const EdpSuggestedBindingTargetEnum social =
      _$edpSuggestedBindingTargetEnum_social;
  @BuiltValueEnumConst(wireName: r'news')
  static const EdpSuggestedBindingTargetEnum news =
      _$edpSuggestedBindingTargetEnum_news;
  @BuiltValueEnumConst(wireName: r'evidence')
  static const EdpSuggestedBindingTargetEnum evidence =
      _$edpSuggestedBindingTargetEnum_evidence;
  @BuiltValueEnumConst(wireName: r'indicator')
  static const EdpSuggestedBindingTargetEnum indicator =
      _$edpSuggestedBindingTargetEnum_indicator;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const EdpSuggestedBindingTargetEnum forecast =
      _$edpSuggestedBindingTargetEnum_forecast;
  @BuiltValueEnumConst(wireName: r'place')
  static const EdpSuggestedBindingTargetEnum place =
      _$edpSuggestedBindingTargetEnum_place;
  @BuiltValueEnumConst(wireName: r'situation')
  static const EdpSuggestedBindingTargetEnum situation =
      _$edpSuggestedBindingTargetEnum_situation;
  @BuiltValueEnumConst(wireName: r'chronicle')
  static const EdpSuggestedBindingTargetEnum chronicle =
      _$edpSuggestedBindingTargetEnum_chronicle;

  static Serializer<EdpSuggestedBindingTargetEnum> get serializer =>
      _$edpSuggestedBindingTargetEnumSerializer;

  const EdpSuggestedBindingTargetEnum._(String name) : super(name);

  static BuiltSet<EdpSuggestedBindingTargetEnum> get values =>
      _$edpSuggestedBindingTargetEnumValues;
  static EdpSuggestedBindingTargetEnum valueOf(String name) =>
      _$edpSuggestedBindingTargetEnumValueOf(name);
}
