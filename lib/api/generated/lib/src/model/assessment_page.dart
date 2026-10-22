//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/assessment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment_page.g.dart';

/// Page of assessments, newest first (markdown and html omitted)
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class AssessmentPage
    implements Built<AssessmentPage, AssessmentPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Assessment> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  AssessmentPage._();

  factory AssessmentPage([void updates(AssessmentPageBuilder b)]) =
      _$AssessmentPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssessmentPage> get serializer =>
      _$AssessmentPageSerializer();
}

class _$AssessmentPageSerializer
    implements PrimitiveSerializer<AssessmentPage> {
  @override
  final Iterable<Type> types = const [AssessmentPage, _$AssessmentPage];

  @override
  final String wireName = r'AssessmentPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssessmentPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Assessment)]),
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
    AssessmentPage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AssessmentPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Assessment)]),
          ) as BuiltList<Assessment>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
  AssessmentPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentPageBuilder();
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
