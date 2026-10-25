//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_disagreement.g.dart';

/// Model-disagreement flag over the next 24 h (gust, 24 h precip, t2m max), quantised with hysteresis
///
/// Properties:
/// * [fields]
/// * [spread]
/// * [models]
@BuiltValue()
abstract class ModelDisagreement
    implements Built<ModelDisagreement, ModelDisagreementBuilder> {
  @BuiltValueField(wireName: r'fields')
  BuiltList<ModelDisagreementFieldsEnum> get fields;
  // enum fieldsEnum {  gust,  precip24h,  t2mMax,  };

  @BuiltValueField(wireName: r'spread')
  BuiltMap<String, num> get spread;

  @BuiltValueField(wireName: r'models')
  BuiltList<String> get models;

  ModelDisagreement._();

  factory ModelDisagreement([void updates(ModelDisagreementBuilder b)]) =
      _$ModelDisagreement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelDisagreementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelDisagreement> get serializer =>
      _$ModelDisagreementSerializer();
}

class _$ModelDisagreementSerializer
    implements PrimitiveSerializer<ModelDisagreement> {
  @override
  final Iterable<Type> types = const [ModelDisagreement, _$ModelDisagreement];

  @override
  final String wireName = r'ModelDisagreement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelDisagreement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'fields';
    yield serializers.serialize(
      object.fields,
      specifiedType: const FullType(BuiltList, [
        FullType(ModelDisagreementFieldsEnum),
      ]),
    );
    yield r'spread';
    yield serializers.serialize(
      object.spread,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(num),
      ]),
    );
    yield r'models';
    yield serializers.serialize(
      object.models,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelDisagreement object, {
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
    required ModelDisagreementBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ModelDisagreementFieldsEnum),
                    ]),
                  )
                  as BuiltList<ModelDisagreementFieldsEnum>;
          result.fields.replace(valueDes);
          break;
        case r'spread':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(num),
                    ]),
                  )
                  as BuiltMap<String, num>;
          result.spread.replace(valueDes);
          break;
        case r'models':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.models.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelDisagreement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelDisagreementBuilder();
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

class ModelDisagreementFieldsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'gust')
  static const ModelDisagreementFieldsEnum gust =
      _$modelDisagreementFieldsEnum_gust;
  @BuiltValueEnumConst(wireName: r'precip24h')
  static const ModelDisagreementFieldsEnum precip24h =
      _$modelDisagreementFieldsEnum_precip24h;
  @BuiltValueEnumConst(wireName: r't2mMax')
  static const ModelDisagreementFieldsEnum t2mMax =
      _$modelDisagreementFieldsEnum_t2mMax;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ModelDisagreementFieldsEnum unknownDefaultOpenApi =
      _$modelDisagreementFieldsEnum_unknownDefaultOpenApi;

  static Serializer<ModelDisagreementFieldsEnum> get serializer =>
      _$modelDisagreementFieldsEnumSerializer;

  const ModelDisagreementFieldsEnum._(String name) : super(name);

  static BuiltSet<ModelDisagreementFieldsEnum> get values =>
      _$modelDisagreementFieldsEnumValues;
  static ModelDisagreementFieldsEnum valueOf(String name) =>
      _$modelDisagreementFieldsEnumValueOf(name);
}
