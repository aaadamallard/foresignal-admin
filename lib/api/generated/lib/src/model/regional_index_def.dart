//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/regional_index_def_skill.dart';
import 'package:foresignal_api/src/model/regional_index_def_components_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/regional_index_def_floors_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_index_def.g.dart';

/// A transparent, decomposed regional index with fitted (proposed) weights
///
/// Properties:
/// * [id]
/// * [name]
/// * [description]
/// * [components]
/// * [weights] - Component key → weight (sums to 1)
/// * [floors]
/// * [target] - Outlook family the index should anticipate
/// * [weightsVersion]
/// * [weightsOrigin]
/// * [autoApplyFittedWeights]
/// * [enabled]
/// * [builtIn]
/// * [ready] - All component series exist
/// * [skill]
/// * [updatedAt]
@BuiltValue()
abstract class RegionalIndexDef
    implements Built<RegionalIndexDef, RegionalIndexDefBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'components')
  BuiltList<RegionalIndexDefComponentsInner> get components;

  /// Component key → weight (sums to 1)
  @BuiltValueField(wireName: r'weights')
  BuiltMap<String, num> get weights;

  @BuiltValueField(wireName: r'floors')
  BuiltList<RegionalIndexDefFloorsInner>? get floors;

  /// Outlook family the index should anticipate
  @BuiltValueField(wireName: r'target')
  String get target;

  @BuiltValueField(wireName: r'weightsVersion')
  int get weightsVersion;

  @BuiltValueField(wireName: r'weightsOrigin')
  RegionalIndexDefWeightsOriginEnum get weightsOrigin;
  // enum weightsOriginEnum {  default,  fitted,  operator,  };

  @BuiltValueField(wireName: r'autoApplyFittedWeights')
  bool? get autoApplyFittedWeights;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'builtIn')
  bool? get builtIn;

  /// All component series exist
  @BuiltValueField(wireName: r'ready')
  bool? get ready;

  @BuiltValueField(wireName: r'skill')
  RegionalIndexDefSkill? get skill;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  RegionalIndexDef._();

  factory RegionalIndexDef([void updates(RegionalIndexDefBuilder b)]) =
      _$RegionalIndexDef;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalIndexDefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalIndexDef> get serializer =>
      _$RegionalIndexDefSerializer();
}

class _$RegionalIndexDefSerializer
    implements PrimitiveSerializer<RegionalIndexDef> {
  @override
  final Iterable<Type> types = const [RegionalIndexDef, _$RegionalIndexDef];

  @override
  final String wireName = r'RegionalIndexDef';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalIndexDef object, {
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'components';
    yield serializers.serialize(
      object.components,
      specifiedType: const FullType(BuiltList, [
        FullType(RegionalIndexDefComponentsInner),
      ]),
    );
    yield r'weights';
    yield serializers.serialize(
      object.weights,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(num),
      ]),
    );
    if (object.floors != null) {
      yield r'floors';
      yield serializers.serialize(
        object.floors,
        specifiedType: const FullType(BuiltList, [
          FullType(RegionalIndexDefFloorsInner),
        ]),
      );
    }
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(String),
    );
    yield r'weightsVersion';
    yield serializers.serialize(
      object.weightsVersion,
      specifiedType: const FullType(int),
    );
    yield r'weightsOrigin';
    yield serializers.serialize(
      object.weightsOrigin,
      specifiedType: const FullType(RegionalIndexDefWeightsOriginEnum),
    );
    if (object.autoApplyFittedWeights != null) {
      yield r'autoApplyFittedWeights';
      yield serializers.serialize(
        object.autoApplyFittedWeights,
        specifiedType: const FullType(bool),
      );
    }
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.builtIn != null) {
      yield r'builtIn';
      yield serializers.serialize(
        object.builtIn,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ready != null) {
      yield r'ready';
      yield serializers.serialize(
        object.ready,
        specifiedType: const FullType(bool),
      );
    }
    yield r'skill';
    yield object.skill == null
        ? null
        : serializers.serialize(
            object.skill,
            specifiedType: const FullType.nullable(RegionalIndexDefSkill),
          );
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
    RegionalIndexDef object, {
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
    required RegionalIndexDefBuilder result,
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
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'components':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(RegionalIndexDefComponentsInner),
                    ]),
                  )
                  as BuiltList<RegionalIndexDefComponentsInner>;
          result.components.replace(valueDes);
          break;
        case r'weights':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(num),
                    ]),
                  )
                  as BuiltMap<String, num>;
          result.weights.replace(valueDes);
          break;
        case r'floors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RegionalIndexDefFloorsInner),
                    ]),
                  )
                  as BuiltList<RegionalIndexDefFloorsInner>?;
          if (valueDes == null) continue;
          result.floors.replace(valueDes);
          break;
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.target = valueDes;
          break;
        case r'weightsVersion':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.weightsVersion = valueDes;
          break;
        case r'weightsOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      RegionalIndexDefWeightsOriginEnum,
                    ),
                  )
                  as RegionalIndexDefWeightsOriginEnum;
          result.weightsOrigin = valueDes;
          break;
        case r'autoApplyFittedWeights':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.autoApplyFittedWeights = valueDes;
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
        case r'builtIn':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.builtIn = valueDes;
          break;
        case r'ready':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.ready = valueDes;
          break;
        case r'skill':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RegionalIndexDefSkill,
                    ),
                  )
                  as RegionalIndexDefSkill?;
          if (valueDes == null) continue;
          result.skill.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionalIndexDef deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalIndexDefBuilder();
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

class RegionalIndexDefWeightsOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'default')
  static const RegionalIndexDefWeightsOriginEnum default_ =
      _$regionalIndexDefWeightsOriginEnum_default_;
  @BuiltValueEnumConst(wireName: r'fitted')
  static const RegionalIndexDefWeightsOriginEnum fitted =
      _$regionalIndexDefWeightsOriginEnum_fitted;
  @BuiltValueEnumConst(wireName: r'operator')
  static const RegionalIndexDefWeightsOriginEnum operator_ =
      _$regionalIndexDefWeightsOriginEnum_operator_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RegionalIndexDefWeightsOriginEnum unknownDefaultOpenApi =
      _$regionalIndexDefWeightsOriginEnum_unknownDefaultOpenApi;

  static Serializer<RegionalIndexDefWeightsOriginEnum> get serializer =>
      _$regionalIndexDefWeightsOriginEnumSerializer;

  const RegionalIndexDefWeightsOriginEnum._(String name) : super(name);

  static BuiltSet<RegionalIndexDefWeightsOriginEnum> get values =>
      _$regionalIndexDefWeightsOriginEnumValues;
  static RegionalIndexDefWeightsOriginEnum valueOf(String name) =>
      _$regionalIndexDefWeightsOriginEnumValueOf(name);
}
