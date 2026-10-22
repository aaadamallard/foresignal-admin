//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/exercise_run.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exercise_run_page.g.dart';

/// A page of exercise runs
///
/// Properties:
/// * [items]
/// * [nextCursor] - Pass as `cursor` for the next page; null on the last page
@BuiltValue()
abstract class ExerciseRunPage
    implements Built<ExerciseRunPage, ExerciseRunPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ExerciseRun> get items;

  /// Pass as `cursor` for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ExerciseRunPage._();

  factory ExerciseRunPage([void updates(ExerciseRunPageBuilder b)]) =
      _$ExerciseRunPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExerciseRunPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExerciseRunPage> get serializer =>
      _$ExerciseRunPageSerializer();
}

class _$ExerciseRunPageSerializer
    implements PrimitiveSerializer<ExerciseRunPage> {
  @override
  final Iterable<Type> types = const [ExerciseRunPage, _$ExerciseRunPage];

  @override
  final String wireName = r'ExerciseRunPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExerciseRunPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ExerciseRun)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExerciseRunPage object, {
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
    required ExerciseRunPageBuilder result,
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
                      FullType(ExerciseRun),
                    ]),
                  )
                  as BuiltList<ExerciseRun>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExerciseRunPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExerciseRunPageBuilder();
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
