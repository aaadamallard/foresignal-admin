//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backtest_request.g.dart';

/// Backtest submission: a target id or an inline definition, a time or seq range, and up to 5 rule variants
///
/// Properties:
/// * [type]
/// * [targetId] - Rule id, recipe id or precursor test id
/// * [definition] - Inline definition (TriggerRuleInput, recipe definition or PrecursorTestInput) instead of targetId
/// * [from]
/// * [to]
/// * [fromSeq]
/// * [toSeq]
/// * [variants] - Rule backtests only; run in the same pass
@BuiltValue()
abstract class BacktestRequest
    implements Built<BacktestRequest, BacktestRequestBuilder> {
  @BuiltValueField(wireName: r'type')
  BacktestRequestTypeEnum get type;
  // enum typeEnum {  rule,  recipe,  precursor,  quality,  };

  /// Rule id, recipe id or precursor test id
  @BuiltValueField(wireName: r'targetId')
  String? get targetId;

  /// Inline definition (TriggerRuleInput, recipe definition or PrecursorTestInput) instead of targetId
  @BuiltValueField(wireName: r'definition')
  BuiltMap<String, JsonObject?>? get definition;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  @BuiltValueField(wireName: r'fromSeq')
  int? get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int? get toSeq;

  /// Rule backtests only; run in the same pass
  @BuiltValueField(wireName: r'variants')
  BuiltList<BuiltMap<String, JsonObject?>>? get variants;

  BacktestRequest._();

  factory BacktestRequest([void updates(BacktestRequestBuilder b)]) =
      _$BacktestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BacktestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BacktestRequest> get serializer =>
      _$BacktestRequestSerializer();
}

class _$BacktestRequestSerializer
    implements PrimitiveSerializer<BacktestRequest> {
  @override
  final Iterable<Type> types = const [BacktestRequest, _$BacktestRequest];

  @override
  final String wireName = r'BacktestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BacktestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(BacktestRequestTypeEnum),
    );
    if (object.targetId != null) {
      yield r'targetId';
      yield serializers.serialize(
        object.targetId,
        specifiedType: const FullType(String),
      );
    }
    if (object.definition != null) {
      yield r'definition';
      yield serializers.serialize(
        object.definition,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.fromSeq != null) {
      yield r'fromSeq';
      yield serializers.serialize(
        object.fromSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.toSeq != null) {
      yield r'toSeq';
      yield serializers.serialize(
        object.toSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.variants != null) {
      yield r'variants';
      yield serializers.serialize(
        object.variants,
        specifiedType: const FullType(BuiltList, [
          FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BacktestRequest object, {
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
    required BacktestRequestBuilder result,
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
                    specifiedType: const FullType(BacktestRequestTypeEnum),
                  )
                  as BacktestRequestTypeEnum;
          result.type = valueDes;
          break;
        case r'targetId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.targetId = valueDes;
          break;
        case r'definition':
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
          result.definition.replace(valueDes);
          break;
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'fromSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.toSeq = valueDes;
          break;
        case r'variants':
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
          result.variants.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BacktestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BacktestRequestBuilder();
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

class BacktestRequestTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'rule')
  static const BacktestRequestTypeEnum rule = _$backtestRequestTypeEnum_rule;
  @BuiltValueEnumConst(wireName: r'recipe')
  static const BacktestRequestTypeEnum recipe =
      _$backtestRequestTypeEnum_recipe;
  @BuiltValueEnumConst(wireName: r'precursor')
  static const BacktestRequestTypeEnum precursor =
      _$backtestRequestTypeEnum_precursor;
  @BuiltValueEnumConst(wireName: r'quality')
  static const BacktestRequestTypeEnum quality =
      _$backtestRequestTypeEnum_quality;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BacktestRequestTypeEnum unknownDefaultOpenApi =
      _$backtestRequestTypeEnum_unknownDefaultOpenApi;

  static Serializer<BacktestRequestTypeEnum> get serializer =>
      _$backtestRequestTypeEnumSerializer;

  const BacktestRequestTypeEnum._(String name) : super(name);

  static BuiltSet<BacktestRequestTypeEnum> get values =>
      _$backtestRequestTypeEnumValues;
  static BacktestRequestTypeEnum valueOf(String name) =>
      _$backtestRequestTypeEnumValueOf(name);
}
