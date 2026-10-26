//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/aggregator.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aggregator_list.g.dart';

/// The first-party aggregators across domains
///
/// Properties:
/// * [items]
@BuiltValue()
abstract class AggregatorList
    implements Built<AggregatorList, AggregatorListBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Aggregator> get items;

  AggregatorList._();

  factory AggregatorList([void updates(AggregatorListBuilder b)]) =
      _$AggregatorList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AggregatorListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AggregatorList> get serializer =>
      _$AggregatorListSerializer();
}

class _$AggregatorListSerializer
    implements PrimitiveSerializer<AggregatorList> {
  @override
  final Iterable<Type> types = const [AggregatorList, _$AggregatorList];

  @override
  final String wireName = r'AggregatorList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AggregatorList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Aggregator)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AggregatorList object, {
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
    required AggregatorListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Aggregator),
                    ]),
                  )
                  as BuiltList<Aggregator>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AggregatorList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregatorListBuilder();
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
