//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/hypothesis_revision.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_revision_page.g.dart';

/// Page of revisions, newest first
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class HypothesisRevisionPage
    implements Built<HypothesisRevisionPage, HypothesisRevisionPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<HypothesisRevision> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  HypothesisRevisionPage._();

  factory HypothesisRevisionPage([
    void updates(HypothesisRevisionPageBuilder b),
  ]) = _$HypothesisRevisionPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisRevisionPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisRevisionPage> get serializer =>
      _$HypothesisRevisionPageSerializer();
}

class _$HypothesisRevisionPageSerializer
    implements PrimitiveSerializer<HypothesisRevisionPage> {
  @override
  final Iterable<Type> types = const [
    HypothesisRevisionPage,
    _$HypothesisRevisionPage,
  ];

  @override
  final String wireName = r'HypothesisRevisionPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisRevisionPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(HypothesisRevision)]),
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
    HypothesisRevisionPage object, {
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
    required HypothesisRevisionPageBuilder result,
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
                      FullType(HypothesisRevision),
                    ]),
                  )
                  as BuiltList<HypothesisRevision>;
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
  HypothesisRevisionPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisRevisionPageBuilder();
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
