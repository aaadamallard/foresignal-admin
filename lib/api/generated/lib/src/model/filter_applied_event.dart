//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_applied_event.g.dart';

/// SSE `filter-applied` event: every later event uses the new filter (no server-side spatial replay)
///
/// Properties:
/// * [atSeq] - Last change seq delivered under the old filter
/// * [filterVersion]
@BuiltValue()
abstract class FilterAppliedEvent
    implements Built<FilterAppliedEvent, FilterAppliedEventBuilder> {
  /// Last change seq delivered under the old filter
  @BuiltValueField(wireName: r'atSeq')
  int get atSeq;

  @BuiltValueField(wireName: r'filterVersion')
  int get filterVersion;

  FilterAppliedEvent._();

  factory FilterAppliedEvent([void updates(FilterAppliedEventBuilder b)]) =
      _$FilterAppliedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterAppliedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterAppliedEvent> get serializer =>
      _$FilterAppliedEventSerializer();
}

class _$FilterAppliedEventSerializer
    implements PrimitiveSerializer<FilterAppliedEvent> {
  @override
  final Iterable<Type> types = const [FilterAppliedEvent, _$FilterAppliedEvent];

  @override
  final String wireName = r'FilterAppliedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterAppliedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'atSeq';
    yield serializers.serialize(
      object.atSeq,
      specifiedType: const FullType(int),
    );
    yield r'filterVersion';
    yield serializers.serialize(
      object.filterVersion,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterAppliedEvent object, {
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
    required FilterAppliedEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'atSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.atSeq = valueDes;
          break;
        case r'filterVersion':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.filterVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilterAppliedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterAppliedEventBuilder();
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
