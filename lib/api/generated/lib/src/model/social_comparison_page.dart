//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_comparison.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_comparison_page.g.dart';

/// One page of social–physical comparisons
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class SocialComparisonPage
    implements Built<SocialComparisonPage, SocialComparisonPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SocialComparison> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  SocialComparisonPage._();

  factory SocialComparisonPage([void updates(SocialComparisonPageBuilder b)]) =
      _$SocialComparisonPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialComparisonPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialComparisonPage> get serializer =>
      _$SocialComparisonPageSerializer();
}

class _$SocialComparisonPageSerializer
    implements PrimitiveSerializer<SocialComparisonPage> {
  @override
  final Iterable<Type> types = const [
    SocialComparisonPage,
    _$SocialComparisonPage,
  ];

  @override
  final String wireName = r'SocialComparisonPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialComparisonPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SocialComparison)]),
    );
    yield r'nextCursor';
    yield object.nextCursor == null
        ? null
        : serializers.serialize(
            object.nextCursor,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialComparisonPage object, {
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
    required SocialComparisonPageBuilder result,
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
                      FullType(SocialComparison),
                    ]),
                  )
                  as BuiltList<SocialComparison>;
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
  SocialComparisonPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialComparisonPageBuilder();
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
