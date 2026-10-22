//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/record_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hold_version_page.g.dart';

/// A keyset page of versions held by a hold
///
/// Properties:
/// * [items]
/// * [nextCursor] - Pass as `cursor` for the next page; null on the last page
@BuiltValue()
abstract class HoldVersionPage
    implements Built<HoldVersionPage, HoldVersionPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<RecordVersion> get items;

  /// Pass as `cursor` for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  HoldVersionPage._();

  factory HoldVersionPage([void updates(HoldVersionPageBuilder b)]) =
      _$HoldVersionPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldVersionPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldVersionPage> get serializer =>
      _$HoldVersionPageSerializer();
}

class _$HoldVersionPageSerializer
    implements PrimitiveSerializer<HoldVersionPage> {
  @override
  final Iterable<Type> types = const [HoldVersionPage, _$HoldVersionPage];

  @override
  final String wireName = r'HoldVersionPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldVersionPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(RecordVersion)]),
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
    HoldVersionPage object, {
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
    required HoldVersionPageBuilder result,
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
                      FullType(RecordVersion),
                    ]),
                  )
                  as BuiltList<RecordVersion>;
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
  HoldVersionPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldVersionPageBuilder();
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
