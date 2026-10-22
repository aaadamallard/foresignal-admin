//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/regional_index_def.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_index_def_page.g.dart';

/// Page of regional index definitions
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class RegionalIndexDefPage
    implements Built<RegionalIndexDefPage, RegionalIndexDefPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<RegionalIndexDef> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  RegionalIndexDefPage._();

  factory RegionalIndexDefPage([void updates(RegionalIndexDefPageBuilder b)]) =
      _$RegionalIndexDefPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalIndexDefPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalIndexDefPage> get serializer =>
      _$RegionalIndexDefPageSerializer();
}

class _$RegionalIndexDefPageSerializer
    implements PrimitiveSerializer<RegionalIndexDefPage> {
  @override
  final Iterable<Type> types = const [
    RegionalIndexDefPage,
    _$RegionalIndexDefPage
  ];

  @override
  final String wireName = r'RegionalIndexDefPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalIndexDefPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(RegionalIndexDef)]),
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
    RegionalIndexDefPage object, {
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
    required RegionalIndexDefPageBuilder result,
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
                const FullType(BuiltList, [FullType(RegionalIndexDef)]),
          ) as BuiltList<RegionalIndexDef>;
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
  RegionalIndexDefPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalIndexDefPageBuilder();
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
