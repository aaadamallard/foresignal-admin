//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_settings_compare_family_windows_value.dart';
import 'package:foresignal_api/src/model/social_settings_compare_default_window.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_settings_compare.g.dart';

/// Social–physical comparison
///
/// Properties:
/// * [minGroups]
/// * [defaultWindow]
/// * [familyWindows] - Signal family → window
@BuiltValue()
abstract class SocialSettingsCompare
    implements Built<SocialSettingsCompare, SocialSettingsCompareBuilder> {
  @BuiltValueField(wireName: r'minGroups')
  int? get minGroups;

  @BuiltValueField(wireName: r'defaultWindow')
  SocialSettingsCompareDefaultWindow? get defaultWindow;

  /// Signal family → window
  @BuiltValueField(wireName: r'familyWindows')
  BuiltMap<String, SocialSettingsCompareFamilyWindowsValue>? get familyWindows;

  SocialSettingsCompare._();

  factory SocialSettingsCompare(
      [void updates(SocialSettingsCompareBuilder b)]) = _$SocialSettingsCompare;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSettingsCompareBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSettingsCompare> get serializer =>
      _$SocialSettingsCompareSerializer();
}

class _$SocialSettingsCompareSerializer
    implements PrimitiveSerializer<SocialSettingsCompare> {
  @override
  final Iterable<Type> types = const [
    SocialSettingsCompare,
    _$SocialSettingsCompare
  ];

  @override
  final String wireName = r'SocialSettingsCompare';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSettingsCompare object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minGroups != null) {
      yield r'minGroups';
      yield serializers.serialize(
        object.minGroups,
        specifiedType: const FullType(int),
      );
    }
    if (object.defaultWindow != null) {
      yield r'defaultWindow';
      yield serializers.serialize(
        object.defaultWindow,
        specifiedType: const FullType(SocialSettingsCompareDefaultWindow),
      );
    }
    if (object.familyWindows != null) {
      yield r'familyWindows';
      yield serializers.serialize(
        object.familyWindows,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(SocialSettingsCompareFamilyWindowsValue)
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsCompare object, {
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
    required SocialSettingsCompareBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minGroups = valueDes;
          break;
        case r'defaultWindow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(SocialSettingsCompareDefaultWindow),
          ) as SocialSettingsCompareDefaultWindow?;
          if (valueDes == null) continue;
          result.defaultWindow.replace(valueDes);
          break;
        case r'familyWindows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(SocialSettingsCompareFamilyWindowsValue)
            ]),
          ) as BuiltMap<String, SocialSettingsCompareFamilyWindowsValue>?;
          if (valueDes == null) continue;
          result.familyWindows.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSettingsCompare deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSettingsCompareBuilder();
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
