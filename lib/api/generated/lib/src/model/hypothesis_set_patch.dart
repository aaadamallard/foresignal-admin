//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_set_patch.g.dart';

/// JSON merge patch for a set's description, cadence or status
///
/// Properties:
/// * [description]
/// * [cadence]
/// * [status]
/// * [version] - Optimistic lock (409 HYPOTHESIS_SET_VERSION_CONFLICT)
@BuiltValue()
abstract class HypothesisSetPatch
    implements Built<HypothesisSetPatch, HypothesisSetPatchBuilder> {
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'cadence')
  HypothesisSetPatchCadenceEnum? get cadence;
  // enum cadenceEnum {  daily,  weekly,  monthly,  };

  @BuiltValueField(wireName: r'status')
  HypothesisSetPatchStatusEnum? get status;
  // enum statusEnum {  active,  archived,  };

  /// Optimistic lock (409 HYPOTHESIS_SET_VERSION_CONFLICT)
  @BuiltValueField(wireName: r'version')
  int get version;

  HypothesisSetPatch._();

  factory HypothesisSetPatch([void updates(HypothesisSetPatchBuilder b)]) =
      _$HypothesisSetPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisSetPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisSetPatch> get serializer =>
      _$HypothesisSetPatchSerializer();
}

class _$HypothesisSetPatchSerializer
    implements PrimitiveSerializer<HypothesisSetPatch> {
  @override
  final Iterable<Type> types = const [HypothesisSetPatch, _$HypothesisSetPatch];

  @override
  final String wireName = r'HypothesisSetPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisSetPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cadence != null) {
      yield r'cadence';
      yield serializers.serialize(
        object.cadence,
        specifiedType: const FullType(HypothesisSetPatchCadenceEnum),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(HypothesisSetPatchStatusEnum),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetPatch object, {
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
    required HypothesisSetPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'cadence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      HypothesisSetPatchCadenceEnum,
                    ),
                  )
                  as HypothesisSetPatchCadenceEnum?;
          if (valueDes == null) continue;
          result.cadence = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      HypothesisSetPatchStatusEnum,
                    ),
                  )
                  as HypothesisSetPatchStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisSetPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisSetPatchBuilder();
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

class HypothesisSetPatchCadenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'daily')
  static const HypothesisSetPatchCadenceEnum daily =
      _$hypothesisSetPatchCadenceEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const HypothesisSetPatchCadenceEnum weekly =
      _$hypothesisSetPatchCadenceEnum_weekly;
  @BuiltValueEnumConst(wireName: r'monthly')
  static const HypothesisSetPatchCadenceEnum monthly =
      _$hypothesisSetPatchCadenceEnum_monthly;

  static Serializer<HypothesisSetPatchCadenceEnum> get serializer =>
      _$hypothesisSetPatchCadenceEnumSerializer;

  const HypothesisSetPatchCadenceEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetPatchCadenceEnum> get values =>
      _$hypothesisSetPatchCadenceEnumValues;
  static HypothesisSetPatchCadenceEnum valueOf(String name) =>
      _$hypothesisSetPatchCadenceEnumValueOf(name);
}

class HypothesisSetPatchStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const HypothesisSetPatchStatusEnum active =
      _$hypothesisSetPatchStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'archived')
  static const HypothesisSetPatchStatusEnum archived =
      _$hypothesisSetPatchStatusEnum_archived;

  static Serializer<HypothesisSetPatchStatusEnum> get serializer =>
      _$hypothesisSetPatchStatusEnumSerializer;

  const HypothesisSetPatchStatusEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetPatchStatusEnum> get values =>
      _$hypothesisSetPatchStatusEnumValues;
  static HypothesisSetPatchStatusEnum valueOf(String name) =>
      _$hypothesisSetPatchStatusEnumValueOf(name);
}
