//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/regional_outlook.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_outlook_page.g.dart';

/// Page of regional outlooks (latest per region and family)
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class RegionalOutlookPage
    implements Built<RegionalOutlookPage, RegionalOutlookPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<RegionalOutlook> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  RegionalOutlookPage._();

  factory RegionalOutlookPage([void updates(RegionalOutlookPageBuilder b)]) =
      _$RegionalOutlookPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalOutlookPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalOutlookPage> get serializer =>
      _$RegionalOutlookPageSerializer();
}

class _$RegionalOutlookPageSerializer
    implements PrimitiveSerializer<RegionalOutlookPage> {
  @override
  final Iterable<Type> types = const [
    RegionalOutlookPage,
    _$RegionalOutlookPage
  ];

  @override
  final String wireName = r'RegionalOutlookPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalOutlookPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(RegionalOutlook)]),
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
    RegionalOutlookPage object, {
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
    required RegionalOutlookPageBuilder result,
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
                const FullType(BuiltList, [FullType(RegionalOutlook)]),
          ) as BuiltList<RegionalOutlook>;
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
  RegionalOutlookPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalOutlookPageBuilder();
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
