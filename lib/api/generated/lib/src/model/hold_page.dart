//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/hold.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hold_page.g.dart';

/// A page of holds
///
/// Properties:
/// * [items]
/// * [nextCursor] - Pass as `cursor` for the next page; null on the last page
@BuiltValue()
abstract class HoldPage implements Built<HoldPage, HoldPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Hold> get items;

  /// Pass as `cursor` for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  HoldPage._();

  factory HoldPage([void updates(HoldPageBuilder b)]) = _$HoldPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldPage> get serializer => _$HoldPageSerializer();
}

class _$HoldPageSerializer implements PrimitiveSerializer<HoldPage> {
  @override
  final Iterable<Type> types = const [HoldPage, _$HoldPage];

  @override
  final String wireName = r'HoldPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Hold)]),
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
    HoldPage object, {
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
    required HoldPageBuilder result,
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
                    specifiedType: const FullType(BuiltList, [FullType(Hold)]),
                  )
                  as BuiltList<Hold>;
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
  HoldPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldPageBuilder();
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
