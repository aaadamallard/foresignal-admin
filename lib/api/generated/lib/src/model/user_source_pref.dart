//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_source_pref.g.dart';

/// One source in a user's enabled-source view (user_source_pref, 173)
///
/// Properties:
/// * [sourceId]
/// * [enabled] - Whether this source appears in the caller's views, alerts and maps
/// * [displayName] - Optional per-user label override
/// * [color] - Optional per-user display color
@BuiltValue()
abstract class UserSourcePref
    implements Built<UserSourcePref, UserSourcePrefBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  /// Whether this source appears in the caller's views, alerts and maps
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Optional per-user label override
  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  /// Optional per-user display color
  @BuiltValueField(wireName: r'color')
  String? get color;

  UserSourcePref._();

  factory UserSourcePref([void updates(UserSourcePrefBuilder b)]) =
      _$UserSourcePref;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSourcePrefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSourcePref> get serializer =>
      _$UserSourcePrefSerializer();
}

class _$UserSourcePrefSerializer
    implements PrimitiveSerializer<UserSourcePref> {
  @override
  final Iterable<Type> types = const [UserSourcePref, _$UserSourcePref];

  @override
  final String wireName = r'UserSourcePref';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSourcePref object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSourcePref object, {
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
    required UserSourcePrefBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'displayName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'color':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSourcePref deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSourcePrefBuilder();
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
