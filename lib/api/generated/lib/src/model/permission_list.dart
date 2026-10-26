//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/permission.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_list.g.dart';

/// The complete permission catalog
///
/// Properties:
/// * [items]
@BuiltValue()
abstract class PermissionList
    implements Built<PermissionList, PermissionListBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Permission> get items;

  PermissionList._();

  factory PermissionList([void updates(PermissionListBuilder b)]) =
      _$PermissionList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionList> get serializer =>
      _$PermissionListSerializer();
}

class _$PermissionListSerializer
    implements PrimitiveSerializer<PermissionList> {
  @override
  final Iterable<Type> types = const [PermissionList, _$PermissionList];

  @override
  final String wireName = r'PermissionList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Permission)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionList object, {
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
    required PermissionListBuilder result,
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
                      FullType(Permission),
                    ]),
                  )
                  as BuiltList<Permission>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PermissionList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionListBuilder();
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
