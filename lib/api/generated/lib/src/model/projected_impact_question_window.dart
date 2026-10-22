//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projected_impact_question_window.g.dart';

/// The ledger question's window: the hazard's valid start to its valid end plus the lag
///
/// Properties:
/// * [start]
/// * [end]
@BuiltValue()
abstract class ProjectedImpactQuestionWindow
    implements
        Built<
          ProjectedImpactQuestionWindow,
          ProjectedImpactQuestionWindowBuilder
        > {
  @BuiltValueField(wireName: r'start')
  DateTime? get start;

  @BuiltValueField(wireName: r'end')
  DateTime? get end;

  ProjectedImpactQuestionWindow._();

  factory ProjectedImpactQuestionWindow([
    void updates(ProjectedImpactQuestionWindowBuilder b),
  ]) = _$ProjectedImpactQuestionWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectedImpactQuestionWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectedImpactQuestionWindow> get serializer =>
      _$ProjectedImpactQuestionWindowSerializer();
}

class _$ProjectedImpactQuestionWindowSerializer
    implements PrimitiveSerializer<ProjectedImpactQuestionWindow> {
  @override
  final Iterable<Type> types = const [
    ProjectedImpactQuestionWindow,
    _$ProjectedImpactQuestionWindow,
  ];

  @override
  final String wireName = r'ProjectedImpactQuestionWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectedImpactQuestionWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectedImpactQuestionWindow object, {
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
    required ProjectedImpactQuestionWindowBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectedImpactQuestionWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectedImpactQuestionWindowBuilder();
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
