//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/style.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'style_page.g.dart';

/// Page of styles
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class StylePage implements Built<StylePage, StylePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Style> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  StylePage._();

  factory StylePage([void updates(StylePageBuilder b)]) = _$StylePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StylePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StylePage> get serializer => _$StylePageSerializer();
}

class _$StylePageSerializer implements PrimitiveSerializer<StylePage> {
  @override
  final Iterable<Type> types = const [StylePage, _$StylePage];

  @override
  final String wireName = r'StylePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StylePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Style)]),
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
    StylePage object, {
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
    required StylePageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Style)]),
          ) as BuiltList<Style>;
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
  StylePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StylePageBuilder();
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
