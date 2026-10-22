//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_request.g.dart';

/// Share an object with principals, groups or the instance; grantees are notified
///
/// Properties:
/// * [grantees]
/// * [role]
/// * [message]
/// * [expiresAt]
@BuiltValue()
abstract class ShareRequest
    implements Built<ShareRequest, ShareRequestBuilder> {
  @BuiltValueField(wireName: r'grantees')
  BuiltList<String> get grantees;

  @BuiltValueField(wireName: r'role')
  ShareRequestRoleEnum? get role;
  // enum roleEnum {  viewer,  commenter,  editor,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  ShareRequest._();

  factory ShareRequest([void updates(ShareRequestBuilder b)]) = _$ShareRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareRequest> get serializer => _$ShareRequestSerializer();
}

class _$ShareRequestSerializer implements PrimitiveSerializer<ShareRequest> {
  @override
  final Iterable<Type> types = const [ShareRequest, _$ShareRequest];

  @override
  final String wireName = r'ShareRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'grantees';
    yield serializers.serialize(
      object.grantees,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(ShareRequestRoleEnum),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShareRequest object, {
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
    required ShareRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'grantees':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.grantees.replace(valueDes);
          break;
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ShareRequestRoleEnum,
                    ),
                  )
                  as ShareRequestRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShareRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareRequestBuilder();
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

class ShareRequestRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'viewer')
  static const ShareRequestRoleEnum viewer = _$shareRequestRoleEnum_viewer;
  @BuiltValueEnumConst(wireName: r'commenter')
  static const ShareRequestRoleEnum commenter =
      _$shareRequestRoleEnum_commenter;
  @BuiltValueEnumConst(wireName: r'editor')
  static const ShareRequestRoleEnum editor = _$shareRequestRoleEnum_editor;

  static Serializer<ShareRequestRoleEnum> get serializer =>
      _$shareRequestRoleEnumSerializer;

  const ShareRequestRoleEnum._(String name) : super(name);

  static BuiltSet<ShareRequestRoleEnum> get values =>
      _$shareRequestRoleEnumValues;
  static ShareRequestRoleEnum valueOf(String name) =>
      _$shareRequestRoleEnumValueOf(name);
}
