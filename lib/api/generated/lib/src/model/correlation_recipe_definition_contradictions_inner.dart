//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correlation_recipe_definition_contradictions_inner.g.dart';

/// A contradiction clause that adds an alternative and lowers confidence
///
/// Properties:
/// * [kinds]
/// * [healthOf] - Source ids whose health or coverage drop counts
/// * [withinKm]
/// * [window] - Window. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [alternative]
@BuiltValue()
abstract class CorrelationRecipeDefinitionContradictionsInner
    implements
        Built<
          CorrelationRecipeDefinitionContradictionsInner,
          CorrelationRecipeDefinitionContradictionsInnerBuilder
        > {
  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  /// Source ids whose health or coverage drop counts
  @BuiltValueField(wireName: r'healthOf')
  BuiltList<String>? get healthOf;

  @BuiltValueField(wireName: r'withinKm')
  num? get withinKm;

  /// Window. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'window')
  String? get window;

  @BuiltValueField(wireName: r'alternative')
  String get alternative;

  CorrelationRecipeDefinitionContradictionsInner._();

  factory CorrelationRecipeDefinitionContradictionsInner([
    void updates(CorrelationRecipeDefinitionContradictionsInnerBuilder b),
  ]) = _$CorrelationRecipeDefinitionContradictionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    CorrelationRecipeDefinitionContradictionsInnerBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrelationRecipeDefinitionContradictionsInner>
  get serializer =>
      _$CorrelationRecipeDefinitionContradictionsInnerSerializer();
}

class _$CorrelationRecipeDefinitionContradictionsInnerSerializer
    implements
        PrimitiveSerializer<CorrelationRecipeDefinitionContradictionsInner> {
  @override
  final Iterable<Type> types = const [
    CorrelationRecipeDefinitionContradictionsInner,
    _$CorrelationRecipeDefinitionContradictionsInner,
  ];

  @override
  final String wireName = r'CorrelationRecipeDefinitionContradictionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrelationRecipeDefinitionContradictionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.healthOf != null) {
      yield r'healthOf';
      yield serializers.serialize(
        object.healthOf,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.withinKm != null) {
      yield r'withinKm';
      yield serializers.serialize(
        object.withinKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType(String),
      );
    }
    yield r'alternative';
    yield serializers.serialize(
      object.alternative,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeDefinitionContradictionsInner object, {
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
    required CorrelationRecipeDefinitionContradictionsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'healthOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.healthOf.replace(valueDes);
          break;
        case r'withinKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.withinKm = valueDes;
          break;
        case r'window':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.window = valueDes;
          break;
        case r'alternative':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.alternative = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrelationRecipeDefinitionContradictionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrelationRecipeDefinitionContradictionsInnerBuilder();
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
