//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission.g.dart';

/// A single permission in the fixed catalog (164)
///
/// Properties:
/// * [key] - e.g. `users.manage`, `self.sources`, `data.read`
/// * [group] - Catalog grouping
/// * [description]
@BuiltValue()
abstract class Permission implements Built<Permission, PermissionBuilder> {
  /// e.g. `users.manage`, `self.sources`, `data.read`
  @BuiltValueField(wireName: r'key')
  String get key;

  /// Catalog grouping
  @BuiltValueField(wireName: r'group')
  String get group;

  @BuiltValueField(wireName: r'description')
  String? get description;

  Permission._();

  factory Permission([void updates(PermissionBuilder b)]) = _$Permission;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Permission> get serializer => _$PermissionSerializer();
}

class _$PermissionSerializer implements PrimitiveSerializer<Permission> {
  @override
  final Iterable<Type> types = const [Permission, _$Permission];

  @override
  final String wireName = r'Permission';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Permission object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'group';
    yield serializers.serialize(
      object.group,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Permission object, {
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
    required PermissionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.key = valueDes;
          break;
        case r'group':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.group = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Permission deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionBuilder();
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
