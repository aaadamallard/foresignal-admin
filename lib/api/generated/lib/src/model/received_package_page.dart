//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/received_package.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'received_package_page.g.dart';

/// One page of received packages
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null at the end
@BuiltValue()
abstract class ReceivedPackagePage
    implements Built<ReceivedPackagePage, ReceivedPackagePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ReceivedPackage> get items;

  /// Opaque cursor for the next page; null at the end
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ReceivedPackagePage._();

  factory ReceivedPackagePage([void updates(ReceivedPackagePageBuilder b)]) =
      _$ReceivedPackagePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReceivedPackagePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReceivedPackagePage> get serializer =>
      _$ReceivedPackagePageSerializer();
}

class _$ReceivedPackagePageSerializer
    implements PrimitiveSerializer<ReceivedPackagePage> {
  @override
  final Iterable<Type> types = const [
    ReceivedPackagePage,
    _$ReceivedPackagePage
  ];

  @override
  final String wireName = r'ReceivedPackagePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReceivedPackagePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ReceivedPackage)]),
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
    ReceivedPackagePage object, {
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
    required ReceivedPackagePageBuilder result,
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
                const FullType(BuiltList, [FullType(ReceivedPackage)]),
          ) as BuiltList<ReceivedPackage>;
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
  ReceivedPackagePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReceivedPackagePageBuilder();
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
