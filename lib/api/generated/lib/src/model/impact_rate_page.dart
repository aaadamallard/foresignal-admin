//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/impact_rate.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'impact_rate_page.g.dart';

/// Conditional impact rates matching the filters
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class ImpactRatePage
    implements Built<ImpactRatePage, ImpactRatePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ImpactRate> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ImpactRatePage._();

  factory ImpactRatePage([void updates(ImpactRatePageBuilder b)]) =
      _$ImpactRatePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImpactRatePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImpactRatePage> get serializer =>
      _$ImpactRatePageSerializer();
}

class _$ImpactRatePageSerializer
    implements PrimitiveSerializer<ImpactRatePage> {
  @override
  final Iterable<Type> types = const [ImpactRatePage, _$ImpactRatePage];

  @override
  final String wireName = r'ImpactRatePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImpactRatePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ImpactRate)]),
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
    ImpactRatePage object, {
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
    required ImpactRatePageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ImpactRate)]),
          ) as BuiltList<ImpactRate>;
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
  ImpactRatePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImpactRatePageBuilder();
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
