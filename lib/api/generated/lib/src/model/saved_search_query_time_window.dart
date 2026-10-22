//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'saved_search_query_time_window.g.dart';

/// Absolute or relative time window
///
/// Properties:
/// * [start]
/// * [end]
/// * [relative] - ISO-8601 duration back from now, e.g. `P7D`
@BuiltValue()
abstract class SavedSearchQueryTimeWindow
    implements
        Built<SavedSearchQueryTimeWindow, SavedSearchQueryTimeWindowBuilder> {
  @BuiltValueField(wireName: r'start')
  DateTime? get start;

  @BuiltValueField(wireName: r'end')
  DateTime? get end;

  /// ISO-8601 duration back from now, e.g. `P7D`
  @BuiltValueField(wireName: r'relative')
  String? get relative;

  SavedSearchQueryTimeWindow._();

  factory SavedSearchQueryTimeWindow([
    void updates(SavedSearchQueryTimeWindowBuilder b),
  ]) = _$SavedSearchQueryTimeWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavedSearchQueryTimeWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavedSearchQueryTimeWindow> get serializer =>
      _$SavedSearchQueryTimeWindowSerializer();
}

class _$SavedSearchQueryTimeWindowSerializer
    implements PrimitiveSerializer<SavedSearchQueryTimeWindow> {
  @override
  final Iterable<Type> types = const [
    SavedSearchQueryTimeWindow,
    _$SavedSearchQueryTimeWindow,
  ];

  @override
  final String wireName = r'SavedSearchQueryTimeWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavedSearchQueryTimeWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.relative != null) {
      yield r'relative';
      yield serializers.serialize(
        object.relative,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SavedSearchQueryTimeWindow object, {
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
    required SavedSearchQueryTimeWindowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'start':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.start = valueDes;
          break;
        case r'end':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.end = valueDes;
          break;
        case r'relative':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.relative = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SavedSearchQueryTimeWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavedSearchQueryTimeWindowBuilder();
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
