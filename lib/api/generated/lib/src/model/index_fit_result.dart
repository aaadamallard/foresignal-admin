//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/index_fit_result_components_inner.dart';
import 'package:foresignal_api/src/model/regional_index_def_skill.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'index_fit_result.g.dart';

/// Monthly or on-demand weight fit; weights are proposed, not applied
///
/// Properties:
/// * [id] - ULID identifier
/// * [indexId]
/// * [status]
/// * [startedAt]
/// * [finishedAt]
/// * [method]
/// * [lambda]
/// * [regions]
/// * [origins]
/// * [proposedWeights]
/// * [weightsVersion] - Version to pass to the weights operation
/// * [skill]
/// * [components]
/// * [applied]
/// * [appliedAt]
/// * [manifestId] - ULID identifier
/// * [error]
@BuiltValue()
abstract class IndexFitResult
    implements Built<IndexFitResult, IndexFitResultBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'indexId')
  String get indexId;

  @BuiltValueField(wireName: r'status')
  IndexFitResultStatusEnum get status;
  // enum statusEnum {  queued,  running,  done,  failed,  };

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'method')
  String? get method;

  @BuiltValueField(wireName: r'lambda')
  num? get lambda;

  @BuiltValueField(wireName: r'regions')
  int? get regions;

  @BuiltValueField(wireName: r'origins')
  int? get origins;

  @BuiltValueField(wireName: r'proposedWeights')
  JsonObject? get proposedWeights;

  /// Version to pass to the weights operation
  @BuiltValueField(wireName: r'weightsVersion')
  int? get weightsVersion;

  @BuiltValueField(wireName: r'skill')
  RegionalIndexDefSkill? get skill;

  @BuiltValueField(wireName: r'components')
  BuiltList<IndexFitResultComponentsInner>? get components;

  @BuiltValueField(wireName: r'applied')
  bool? get applied;

  @BuiltValueField(wireName: r'appliedAt')
  DateTime? get appliedAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  @BuiltValueField(wireName: r'error')
  String? get error;

  IndexFitResult._();

  factory IndexFitResult([void updates(IndexFitResultBuilder b)]) =
      _$IndexFitResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexFitResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexFitResult> get serializer =>
      _$IndexFitResultSerializer();
}

class _$IndexFitResultSerializer
    implements PrimitiveSerializer<IndexFitResult> {
  @override
  final Iterable<Type> types = const [IndexFitResult, _$IndexFitResult];

  @override
  final String wireName = r'IndexFitResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexFitResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'indexId';
    yield serializers.serialize(
      object.indexId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(IndexFitResultStatusEnum),
    );
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(String),
      );
    }
    if (object.lambda != null) {
      yield r'lambda';
      yield serializers.serialize(
        object.lambda,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.regions != null) {
      yield r'regions';
      yield serializers.serialize(
        object.regions,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.origins != null) {
      yield r'origins';
      yield serializers.serialize(
        object.origins,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.proposedWeights != null) {
      yield r'proposedWeights';
      yield serializers.serialize(
        object.proposedWeights,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.weightsVersion != null) {
      yield r'weightsVersion';
      yield serializers.serialize(
        object.weightsVersion,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.skill != null) {
      yield r'skill';
      yield serializers.serialize(
        object.skill,
        specifiedType: const FullType.nullable(RegionalIndexDefSkill),
      );
    }
    if (object.components != null) {
      yield r'components';
      yield serializers.serialize(
        object.components,
        specifiedType: const FullType(BuiltList, [
          FullType(IndexFitResultComponentsInner),
        ]),
      );
    }
    if (object.applied != null) {
      yield r'applied';
      yield serializers.serialize(
        object.applied,
        specifiedType: const FullType(bool),
      );
    }
    if (object.appliedAt != null) {
      yield r'appliedAt';
      yield serializers.serialize(
        object.appliedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexFitResult object, {
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
    required IndexFitResultBuilder result,
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
        case r'indexId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.indexId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IndexFitResultStatusEnum),
                  )
                  as IndexFitResultStatusEnum;
          result.status = valueDes;
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        case r'lambda':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.lambda = valueDes;
          break;
        case r'regions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.regions = valueDes;
          break;
        case r'origins':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.origins = valueDes;
          break;
        case r'proposedWeights':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.proposedWeights = valueDes;
          break;
        case r'weightsVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.weightsVersion = valueDes;
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
        case r'components':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(IndexFitResultComponentsInner),
                    ]),
                  )
                  as BuiltList<IndexFitResultComponentsInner>?;
          if (valueDes == null) continue;
          result.components.replace(valueDes);
          break;
        case r'applied':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.applied = valueDes;
          break;
        case r'appliedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.appliedAt = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexFitResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexFitResultBuilder();
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

class IndexFitResultStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const IndexFitResultStatusEnum queued =
      _$indexFitResultStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const IndexFitResultStatusEnum running =
      _$indexFitResultStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const IndexFitResultStatusEnum done = _$indexFitResultStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const IndexFitResultStatusEnum failed =
      _$indexFitResultStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IndexFitResultStatusEnum unknownDefaultOpenApi =
      _$indexFitResultStatusEnum_unknownDefaultOpenApi;

  static Serializer<IndexFitResultStatusEnum> get serializer =>
      _$indexFitResultStatusEnumSerializer;

  const IndexFitResultStatusEnum._(String name) : super(name);

  static BuiltSet<IndexFitResultStatusEnum> get values =>
      _$indexFitResultStatusEnumValues;
  static IndexFitResultStatusEnum valueOf(String name) =>
      _$indexFitResultStatusEnumValueOf(name);
}
