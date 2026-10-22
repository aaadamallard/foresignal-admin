//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/pol_stay.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pol_stay_page.g.dart';

/// A page of stays
///
/// Properties:
/// * [items]
/// * [nextCursor] - Pass as `cursor` for the next page; null on the last page
@BuiltValue()
abstract class PolStayPage implements Built<PolStayPage, PolStayPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<PolStay> get items;

  /// Pass as `cursor` for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  PolStayPage._();

  factory PolStayPage([void updates(PolStayPageBuilder b)]) = _$PolStayPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolStayPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolStayPage> get serializer => _$PolStayPageSerializer();
}

class _$PolStayPageSerializer implements PrimitiveSerializer<PolStayPage> {
  @override
  final Iterable<Type> types = const [PolStayPage, _$PolStayPage];

  @override
  final String wireName = r'PolStayPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolStayPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(PolStay)]),
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
    PolStayPage object, {
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
    required PolStayPageBuilder result,
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
                      FullType(PolStay),
                    ]),
                  )
                  as BuiltList<PolStay>;
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
  PolStayPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolStayPageBuilder();
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
