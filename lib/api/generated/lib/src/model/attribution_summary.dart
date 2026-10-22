//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attribution_summary.g.dart';

/// Aggregated attributions for a scope, for SSE clients and map footers (109)
///
/// Properties:
/// * [attributions] - One entry per source and licence with the number of matching current records
/// * [text] - Joined attributionText (at most 1 KB, truncated with …), the value of the Foresignal-Attribution header
@BuiltValue()
abstract class AttributionSummary
    implements Built<AttributionSummary, AttributionSummaryBuilder> {
  /// One entry per source and licence with the number of matching current records
  @BuiltValueField(wireName: r'attributions')
  BuiltList<Attribution> get attributions;

  /// Joined attributionText (at most 1 KB, truncated with …), the value of the Foresignal-Attribution header
  @BuiltValueField(wireName: r'text')
  String get text;

  AttributionSummary._();

  factory AttributionSummary([void updates(AttributionSummaryBuilder b)]) =
      _$AttributionSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttributionSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttributionSummary> get serializer =>
      _$AttributionSummarySerializer();
}

class _$AttributionSummarySerializer
    implements PrimitiveSerializer<AttributionSummary> {
  @override
  final Iterable<Type> types = const [AttributionSummary, _$AttributionSummary];

  @override
  final String wireName = r'AttributionSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttributionSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'attributions';
    yield serializers.serialize(
      object.attributions,
      specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttributionSummary object, {
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
    required AttributionSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attributions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Attribution),
                    ]),
                  )
                  as BuiltList<Attribution>;
          result.attributions.replace(valueDes);
          break;
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AttributionSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributionSummaryBuilder();
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
