//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_platform_price.g.dart';

/// One operator-editable price
///
/// Properties:
/// * [item] - Billable item, e.g. `counts-request`, `post-read`, `search-request`
/// * [usd] - US dollars
/// * [per] - Units the price covers
@BuiltValue()
abstract class SocialPlatformPrice
    implements Built<SocialPlatformPrice, SocialPlatformPriceBuilder> {
  /// Billable item, e.g. `counts-request`, `post-read`, `search-request`
  @BuiltValueField(wireName: r'item')
  String get item;

  /// US dollars
  @BuiltValueField(wireName: r'usd')
  num get usd;

  /// Units the price covers
  @BuiltValueField(wireName: r'per')
  int? get per;

  SocialPlatformPrice._();

  factory SocialPlatformPrice([void updates(SocialPlatformPriceBuilder b)]) =
      _$SocialPlatformPrice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPlatformPriceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPlatformPrice> get serializer =>
      _$SocialPlatformPriceSerializer();
}

class _$SocialPlatformPriceSerializer
    implements PrimitiveSerializer<SocialPlatformPrice> {
  @override
  final Iterable<Type> types = const [
    SocialPlatformPrice,
    _$SocialPlatformPrice,
  ];

  @override
  final String wireName = r'SocialPlatformPrice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPlatformPrice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'item';
    yield serializers.serialize(
      object.item,
      specifiedType: const FullType(String),
    );
    yield r'usd';
    yield serializers.serialize(object.usd, specifiedType: const FullType(num));
    if (object.per != null) {
      yield r'per';
      yield serializers.serialize(
        object.per,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPlatformPrice object, {
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
    required SocialPlatformPriceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'item':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.item = valueDes;
          break;
        case r'usd':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.usd = valueDes;
          break;
        case r'per':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.per = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPlatformPrice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPlatformPriceBuilder();
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
