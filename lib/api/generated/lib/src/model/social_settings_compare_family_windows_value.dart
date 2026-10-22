//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_settings_compare_family_windows_value.g.dart';

/// Family window override (`social-compare.json`)
///
/// Properties:
/// * [before] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [after] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [toleranceKm]
/// * [publicationLag] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
@BuiltValue()
abstract class SocialSettingsCompareFamilyWindowsValue
    implements
        Built<SocialSettingsCompareFamilyWindowsValue,
            SocialSettingsCompareFamilyWindowsValueBuilder> {
  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'before')
  String? get before;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'after')
  String? get after;

  @BuiltValueField(wireName: r'toleranceKm')
  num? get toleranceKm;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'publicationLag')
  String? get publicationLag;

  SocialSettingsCompareFamilyWindowsValue._();

  factory SocialSettingsCompareFamilyWindowsValue(
          [void updates(SocialSettingsCompareFamilyWindowsValueBuilder b)]) =
      _$SocialSettingsCompareFamilyWindowsValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSettingsCompareFamilyWindowsValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSettingsCompareFamilyWindowsValue> get serializer =>
      _$SocialSettingsCompareFamilyWindowsValueSerializer();
}

class _$SocialSettingsCompareFamilyWindowsValueSerializer
    implements PrimitiveSerializer<SocialSettingsCompareFamilyWindowsValue> {
  @override
  final Iterable<Type> types = const [
    SocialSettingsCompareFamilyWindowsValue,
    _$SocialSettingsCompareFamilyWindowsValue
  ];

  @override
  final String wireName = r'SocialSettingsCompareFamilyWindowsValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSettingsCompareFamilyWindowsValue object, {
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
    if (object.toleranceKm != null) {
      yield r'toleranceKm';
      yield serializers.serialize(
        object.toleranceKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.publicationLag != null) {
      yield r'publicationLag';
      yield serializers.serialize(
        object.publicationLag,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsCompareFamilyWindowsValue object, {
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
    required SocialSettingsCompareFamilyWindowsValueBuilder result,
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
        case r'toleranceKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.toleranceKm = valueDes;
          break;
        case r'publicationLag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publicationLag = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSettingsCompareFamilyWindowsValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSettingsCompareFamilyWindowsValueBuilder();
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
