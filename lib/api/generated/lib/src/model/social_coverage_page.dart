//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_coverage.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_coverage_page.g.dart';

/// One page of social coverage series
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class SocialCoveragePage
    implements Built<SocialCoveragePage, SocialCoveragePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<SocialCoverage> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  SocialCoveragePage._();

  factory SocialCoveragePage([void updates(SocialCoveragePageBuilder b)]) =
      _$SocialCoveragePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCoveragePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCoveragePage> get serializer =>
      _$SocialCoveragePageSerializer();
}

class _$SocialCoveragePageSerializer
    implements PrimitiveSerializer<SocialCoveragePage> {
  @override
  final Iterable<Type> types = const [SocialCoveragePage, _$SocialCoveragePage];

  @override
  final String wireName = r'SocialCoveragePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCoveragePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(SocialCoverage)]),
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
    SocialCoveragePage object, {
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
    required SocialCoveragePageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(SocialCoverage)]),
          ) as BuiltList<SocialCoverage>;
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
  SocialCoveragePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCoveragePageBuilder();
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
