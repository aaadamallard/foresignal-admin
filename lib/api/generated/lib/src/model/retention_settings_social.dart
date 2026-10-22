//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retention_settings_social.g.dart';

/// Analytic class `social` (135): `social-post` retention per platform (view over `social.postRetention`); narratives, claims, comparisons and volume series are kept as intel and series
///
/// Properties:
/// * [posts] - Default post retention
/// * [platforms] - Network → post retention
@BuiltValue()
abstract class RetentionSettingsSocial
    implements Built<RetentionSettingsSocial, RetentionSettingsSocialBuilder> {
  /// Default post retention
  @BuiltValueField(wireName: r'posts')
  String? get posts;

  /// Network → post retention
  @BuiltValueField(wireName: r'platforms')
  BuiltMap<String, String>? get platforms;

  RetentionSettingsSocial._();

  factory RetentionSettingsSocial([
    void updates(RetentionSettingsSocialBuilder b),
  ]) = _$RetentionSettingsSocial;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetentionSettingsSocialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetentionSettingsSocial> get serializer =>
      _$RetentionSettingsSocialSerializer();
}

class _$RetentionSettingsSocialSerializer
    implements PrimitiveSerializer<RetentionSettingsSocial> {
  @override
  final Iterable<Type> types = const [
    RetentionSettingsSocial,
    _$RetentionSettingsSocial,
  ];

  @override
  final String wireName = r'RetentionSettingsSocial';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetentionSettingsSocial object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.posts != null) {
      yield r'posts';
      yield serializers.serialize(
        object.posts,
        specifiedType: const FullType(String),
      );
    }
    if (object.platforms != null) {
      yield r'platforms';
      yield serializers.serialize(
        object.platforms,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RetentionSettingsSocial object, {
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
    required RetentionSettingsSocialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'posts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.posts = valueDes;
          break;
        case r'platforms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.platforms.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetentionSettingsSocial deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetentionSettingsSocialBuilder();
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
