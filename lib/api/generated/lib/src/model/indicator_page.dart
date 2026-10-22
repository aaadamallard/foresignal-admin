//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/indicator.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator_page.g.dart';

/// Page of indicators
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class IndicatorPage
    implements Built<IndicatorPage, IndicatorPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Indicator> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  IndicatorPage._();

  factory IndicatorPage([void updates(IndicatorPageBuilder b)]) =
      _$IndicatorPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndicatorPage> get serializer =>
      _$IndicatorPageSerializer();
}

class _$IndicatorPageSerializer implements PrimitiveSerializer<IndicatorPage> {
  @override
  final Iterable<Type> types = const [IndicatorPage, _$IndicatorPage];

  @override
  final String wireName = r'IndicatorPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndicatorPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Indicator)]),
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
    IndicatorPage object, {
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
    required IndicatorPageBuilder result,
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
                      FullType(Indicator),
                    ]),
                  )
                  as BuiltList<Indicator>;
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
  IndicatorPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorPageBuilder();
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
