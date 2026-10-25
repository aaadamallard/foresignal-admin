//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/reference_import_request_params.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reference_import_request.g.dart';

/// Start a reference-history import (counts only, licence kept)
///
/// Properties:
/// * [dataset]
/// * [params]
@BuiltValue()
abstract class ReferenceImportRequest
    implements Built<ReferenceImportRequest, ReferenceImportRequestBuilder> {
  @BuiltValueField(wireName: r'dataset')
  ReferenceImportRequestDatasetEnum get dataset;
  // enum datasetEnum {  ucdp-ged,  acled,  usgs-comcat,  gdacs,  };

  @BuiltValueField(wireName: r'params')
  ReferenceImportRequestParams? get params;

  ReferenceImportRequest._();

  factory ReferenceImportRequest([
    void updates(ReferenceImportRequestBuilder b),
  ]) = _$ReferenceImportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenceImportRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenceImportRequest> get serializer =>
      _$ReferenceImportRequestSerializer();
}

class _$ReferenceImportRequestSerializer
    implements PrimitiveSerializer<ReferenceImportRequest> {
  @override
  final Iterable<Type> types = const [
    ReferenceImportRequest,
    _$ReferenceImportRequest,
  ];

  @override
  final String wireName = r'ReferenceImportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenceImportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dataset';
    yield serializers.serialize(
      object.dataset,
      specifiedType: const FullType(ReferenceImportRequestDatasetEnum),
    );
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(ReferenceImportRequestParams),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferenceImportRequest object, {
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
    required ReferenceImportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dataset':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ReferenceImportRequestDatasetEnum,
                    ),
                  )
                  as ReferenceImportRequestDatasetEnum;
          result.dataset = valueDes;
          break;
        case r'params':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ReferenceImportRequestParams,
                    ),
                  )
                  as ReferenceImportRequestParams?;
          if (valueDes == null) continue;
          result.params.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReferenceImportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenceImportRequestBuilder();
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

class ReferenceImportRequestDatasetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ucdp-ged')
  static const ReferenceImportRequestDatasetEnum ucdpGed =
      _$referenceImportRequestDatasetEnum_ucdpGed;
  @BuiltValueEnumConst(wireName: r'acled')
  static const ReferenceImportRequestDatasetEnum acled =
      _$referenceImportRequestDatasetEnum_acled;
  @BuiltValueEnumConst(wireName: r'usgs-comcat')
  static const ReferenceImportRequestDatasetEnum usgsComcat =
      _$referenceImportRequestDatasetEnum_usgsComcat;
  @BuiltValueEnumConst(wireName: r'gdacs')
  static const ReferenceImportRequestDatasetEnum gdacs =
      _$referenceImportRequestDatasetEnum_gdacs;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReferenceImportRequestDatasetEnum unknownDefaultOpenApi =
      _$referenceImportRequestDatasetEnum_unknownDefaultOpenApi;

  static Serializer<ReferenceImportRequestDatasetEnum> get serializer =>
      _$referenceImportRequestDatasetEnumSerializer;

  const ReferenceImportRequestDatasetEnum._(String name) : super(name);

  static BuiltSet<ReferenceImportRequestDatasetEnum> get values =>
      _$referenceImportRequestDatasetEnumValues;
  static ReferenceImportRequestDatasetEnum valueOf(String name) =>
      _$referenceImportRequestDatasetEnumValueOf(name);
}
