//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_join_reason_components.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_join_reason.g.dart';

/// Why a member joined a situation: the linker's score and its components, or the operator/agent action
///
/// Properties:
/// * [method] - How the link was made
/// * [score] - Linker score in [0, 1] (null for manual links)
/// * [components]
/// * [linkerVersion] - Linker version, e.g. `1.0.0`
/// * [actor] - Token id, `linker:<version>` or `analyst:<profile>`
@BuiltValue()
abstract class SituationJoinReason
    implements Built<SituationJoinReason, SituationJoinReasonBuilder> {
  /// How the link was made
  @BuiltValueField(wireName: r'method')
  SituationJoinReasonMethodEnum get method;
  // enum methodEnum {  linker,  seed,  operator,  agent,  analyst,  };

  /// Linker score in [0, 1] (null for manual links)
  @BuiltValueField(wireName: r'score')
  num? get score;

  @BuiltValueField(wireName: r'components')
  SituationJoinReasonComponents? get components;

  /// Linker version, e.g. `1.0.0`
  @BuiltValueField(wireName: r'linkerVersion')
  String? get linkerVersion;

  /// Token id, `linker:<version>` or `analyst:<profile>`
  @BuiltValueField(wireName: r'actor')
  String? get actor;

  SituationJoinReason._();

  factory SituationJoinReason([void updates(SituationJoinReasonBuilder b)]) =
      _$SituationJoinReason;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationJoinReasonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationJoinReason> get serializer =>
      _$SituationJoinReasonSerializer();
}

class _$SituationJoinReasonSerializer
    implements PrimitiveSerializer<SituationJoinReason> {
  @override
  final Iterable<Type> types = const [
    SituationJoinReason,
    _$SituationJoinReason,
  ];

  @override
  final String wireName = r'SituationJoinReason';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationJoinReason object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(SituationJoinReasonMethodEnum),
    );
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.components != null) {
      yield r'components';
      yield serializers.serialize(
        object.components,
        specifiedType: const FullType(SituationJoinReasonComponents),
      );
    }
    if (object.linkerVersion != null) {
      yield r'linkerVersion';
      yield serializers.serialize(
        object.linkerVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.actor != null) {
      yield r'actor';
      yield serializers.serialize(
        object.actor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationJoinReason object, {
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
    required SituationJoinReasonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SituationJoinReasonMethodEnum,
                    ),
                  )
                  as SituationJoinReasonMethodEnum;
          result.method = valueDes;
          break;
        case r'score':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.score = valueDes;
          break;
        case r'components':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SituationJoinReasonComponents,
                    ),
                  )
                  as SituationJoinReasonComponents?;
          if (valueDes == null) continue;
          result.components.replace(valueDes);
          break;
        case r'linkerVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.linkerVersion = valueDes;
          break;
        case r'actor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.actor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationJoinReason deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationJoinReasonBuilder();
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

/// How the link was made
class SituationJoinReasonMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'linker')
  static const SituationJoinReasonMethodEnum linker =
      _$situationJoinReasonMethodEnum_linker;
  @BuiltValueEnumConst(wireName: r'seed')
  static const SituationJoinReasonMethodEnum seed =
      _$situationJoinReasonMethodEnum_seed;
  @BuiltValueEnumConst(wireName: r'operator')
  static const SituationJoinReasonMethodEnum operator_ =
      _$situationJoinReasonMethodEnum_operator_;
  @BuiltValueEnumConst(wireName: r'agent')
  static const SituationJoinReasonMethodEnum agent =
      _$situationJoinReasonMethodEnum_agent;
  @BuiltValueEnumConst(wireName: r'analyst')
  static const SituationJoinReasonMethodEnum analyst =
      _$situationJoinReasonMethodEnum_analyst;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SituationJoinReasonMethodEnum unknownDefaultOpenApi =
      _$situationJoinReasonMethodEnum_unknownDefaultOpenApi;

  static Serializer<SituationJoinReasonMethodEnum> get serializer =>
      _$situationJoinReasonMethodEnumSerializer;

  const SituationJoinReasonMethodEnum._(String name) : super(name);

  static BuiltSet<SituationJoinReasonMethodEnum> get values =>
      _$situationJoinReasonMethodEnumValues;
  static SituationJoinReasonMethodEnum valueOf(String name) =>
      _$situationJoinReasonMethodEnumValueOf(name);
}
