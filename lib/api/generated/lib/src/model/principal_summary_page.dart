//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'principal_summary_page.g.dart';

/// One page of principal summaries
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class PrincipalSummaryPage
    implements Built<PrincipalSummaryPage, PrincipalSummaryPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<PrincipalSummary> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  PrincipalSummaryPage._();

  factory PrincipalSummaryPage([void updates(PrincipalSummaryPageBuilder b)]) =
      _$PrincipalSummaryPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrincipalSummaryPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrincipalSummaryPage> get serializer =>
      _$PrincipalSummaryPageSerializer();
}

class _$PrincipalSummaryPageSerializer
    implements PrimitiveSerializer<PrincipalSummaryPage> {
  @override
  final Iterable<Type> types = const [
    PrincipalSummaryPage,
    _$PrincipalSummaryPage
  ];

  @override
  final String wireName = r'PrincipalSummaryPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrincipalSummaryPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(PrincipalSummary)]),
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
    PrincipalSummaryPage object, {
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
    required PrincipalSummaryPageBuilder result,
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
                const FullType(BuiltList, [FullType(PrincipalSummary)]),
          ) as BuiltList<PrincipalSummary>;
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
  PrincipalSummaryPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrincipalSummaryPageBuilder();
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
