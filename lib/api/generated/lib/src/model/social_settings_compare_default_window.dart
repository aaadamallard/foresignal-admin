//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_settings_compare_default_window.g.dart';

/// Window around the claim time
///
/// Properties:
/// * [before] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [after] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
@BuiltValue()
abstract class SocialSettingsCompareDefaultWindow
    implements
        Built<SocialSettingsCompareDefaultWindow,
            SocialSettingsCompareDefaultWindowBuilder> {
  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'before')
  String? get before;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'after')
  String? get after;

  SocialSettingsCompareDefaultWindow._();

  factory SocialSettingsCompareDefaultWindow(
          [void updates(SocialSettingsCompareDefaultWindowBuilder b)]) =
      _$SocialSettingsCompareDefaultWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSettingsCompareDefaultWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSettingsCompareDefaultWindow> get serializer =>
      _$SocialSettingsCompareDefaultWindowSerializer();
}

class _$SocialSettingsCompareDefaultWindowSerializer
    implements PrimitiveSerializer<SocialSettingsCompareDefaultWindow> {
  @override
  final Iterable<Type> types = const [
    SocialSettingsCompareDefaultWindow,
    _$SocialSettingsCompareDefaultWindow
  ];

  @override
  final String wireName = r'SocialSettingsCompareDefaultWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSettingsCompareDefaultWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.before != null) {
      yield r'before';
      yield serializers.serialize(
        object.before,
        specifiedType: const FullType(String),
      );
    }
    if (object.after != null) {
      yield r'after';
      yield serializers.serialize(
        object.after,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsCompareDefaultWindow object, {
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
    required SocialSettingsCompareDefaultWindowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'before':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.before = valueDes;
          break;
        case r'after':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.after = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSettingsCompareDefaultWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSettingsCompareDefaultWindowBuilder();
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
