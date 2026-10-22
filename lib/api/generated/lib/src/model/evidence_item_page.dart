//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/evidence_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'evidence_item_page.g.dart';

/// One page of evidence items visible to the caller
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class EvidenceItemPage
    implements Built<EvidenceItemPage, EvidenceItemPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<EvidenceItem> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  EvidenceItemPage._();

  factory EvidenceItemPage([void updates(EvidenceItemPageBuilder b)]) =
      _$EvidenceItemPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EvidenceItemPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EvidenceItemPage> get serializer =>
      _$EvidenceItemPageSerializer();
}

class _$EvidenceItemPageSerializer
    implements PrimitiveSerializer<EvidenceItemPage> {
  @override
  final Iterable<Type> types = const [EvidenceItemPage, _$EvidenceItemPage];

  @override
  final String wireName = r'EvidenceItemPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EvidenceItemPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(EvidenceItem)]),
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
    EvidenceItemPage object, {
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
    required EvidenceItemPageBuilder result,
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
                      FullType(EvidenceItem),
                    ]),
                  )
                  as BuiltList<EvidenceItem>;
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
  EvidenceItemPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvidenceItemPageBuilder();
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
