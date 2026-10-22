//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coverage_json.g.dart';

/// CoverageJSON document (application/prs.coverage+json): domain, parameters with units, and ranges with the nodata mask
///
/// Properties:
/// * [type]
/// * [domain] - Domain axes and referencing
/// * [parameters]
/// * [ranges]
/// * [coverages]
@BuiltValue()
abstract class CoverageJson
    implements Built<CoverageJson, CoverageJsonBuilder> {
  @BuiltValueField(wireName: r'type')
  CoverageJsonTypeEnum get type;
  // enum typeEnum {  Coverage,  CoverageCollection,  };

  /// Domain axes and referencing
  @BuiltValueField(wireName: r'domain')
  BuiltMap<String, JsonObject?>? get domain;

  @BuiltValueField(wireName: r'parameters')
  BuiltMap<String, BuiltMap<String, JsonObject?>>? get parameters;

  @BuiltValueField(wireName: r'ranges')
  BuiltMap<String, BuiltMap<String, JsonObject?>>? get ranges;

  @BuiltValueField(wireName: r'coverages')
  BuiltList<BuiltMap<String, JsonObject?>>? get coverages;

  CoverageJson._();

  factory CoverageJson([void updates(CoverageJsonBuilder b)]) = _$CoverageJson;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CoverageJsonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CoverageJson> get serializer => _$CoverageJsonSerializer();
}

class _$CoverageJsonSerializer implements PrimitiveSerializer<CoverageJson> {
  @override
  final Iterable<Type> types = const [CoverageJson, _$CoverageJson];

  @override
  final String wireName = r'CoverageJson';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CoverageJson object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(CoverageJsonTypeEnum),
    );
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.parameters != null) {
      yield r'parameters';
      yield serializers.serialize(
        object.parameters,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        ]),
      );
    }
    if (object.ranges != null) {
      yield r'ranges';
      yield serializers.serialize(
        object.ranges,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        ]),
      );
    }
    if (object.coverages != null) {
      yield r'coverages';
      yield serializers.serialize(
        object.coverages,
        specifiedType: const FullType(BuiltList, [
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CoverageJson object, {
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
    required CoverageJsonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CoverageJsonTypeEnum),
                  )
                  as CoverageJsonTypeEnum;
          result.type = valueDes;
          break;
        case r'domain':
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
          result.domain.replace(valueDes);
          break;
        case r'parameters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(BuiltMap, [
                        FullType(String),
                        FullType.nullable(JsonObject),
                      ]),
                    ]),
                  )
                  as BuiltMap<String, BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.parameters.replace(valueDes);
          break;
        case r'ranges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(BuiltMap, [
                        FullType(String),
                        FullType.nullable(JsonObject),
                      ]),
                    ]),
                  )
                  as BuiltMap<String, BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.ranges.replace(valueDes);
          break;
        case r'coverages':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BuiltMap, [
                        FullType(String),
                        FullType.nullable(JsonObject),
                      ]),
                    ]),
                  )
                  as BuiltList<BuiltMap<String, JsonObject?>>?;
          if (valueDes == null) continue;
          result.coverages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CoverageJson deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoverageJsonBuilder();
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

class CoverageJsonTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Coverage')
  static const CoverageJsonTypeEnum coverage = _$coverageJsonTypeEnum_coverage;
  @BuiltValueEnumConst(wireName: r'CoverageCollection')
  static const CoverageJsonTypeEnum coverageCollection =
      _$coverageJsonTypeEnum_coverageCollection;

  static Serializer<CoverageJsonTypeEnum> get serializer =>
      _$coverageJsonTypeEnumSerializer;

  const CoverageJsonTypeEnum._(String name) : super(name);

  static BuiltSet<CoverageJsonTypeEnum> get values =>
      _$coverageJsonTypeEnumValues;
  static CoverageJsonTypeEnum valueOf(String name) =>
      _$coverageJsonTypeEnumValueOf(name);
}
