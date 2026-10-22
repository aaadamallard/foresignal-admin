//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/settings_warning.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_security.g.dart';

/// Security posture (023, 035)
///
/// Properties:
/// * [openReads]
/// * [anonymousRestricted] - True when the anonymous profile restricts anything beyond its defaults
/// * [warnings] - PUBLIC_BASE_URL_INSECURE, PUBLIC_BASE_URL_MISMATCH (023), ANONYMOUS_UNRESTRICTED (035)
@BuiltValue()
abstract class SystemInfoSecurity
    implements Built<SystemInfoSecurity, SystemInfoSecurityBuilder> {
  @BuiltValueField(wireName: r'openReads')
  bool? get openReads;

  /// True when the anonymous profile restricts anything beyond its defaults
  @BuiltValueField(wireName: r'anonymousRestricted')
  bool? get anonymousRestricted;

  /// PUBLIC_BASE_URL_INSECURE, PUBLIC_BASE_URL_MISMATCH (023), ANONYMOUS_UNRESTRICTED (035)
  @BuiltValueField(wireName: r'warnings')
  BuiltList<SettingsWarning>? get warnings;

  SystemInfoSecurity._();

  factory SystemInfoSecurity([void updates(SystemInfoSecurityBuilder b)]) =
      _$SystemInfoSecurity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoSecurityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoSecurity> get serializer =>
      _$SystemInfoSecuritySerializer();
}

class _$SystemInfoSecuritySerializer
    implements PrimitiveSerializer<SystemInfoSecurity> {
  @override
  final Iterable<Type> types = const [SystemInfoSecurity, _$SystemInfoSecurity];

  @override
  final String wireName = r'SystemInfoSecurity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoSecurity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.openReads != null) {
      yield r'openReads';
      yield serializers.serialize(
        object.openReads,
        specifiedType: const FullType(bool),
      );
    }
    if (object.anonymousRestricted != null) {
      yield r'anonymousRestricted';
      yield serializers.serialize(
        object.anonymousRestricted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(SettingsWarning)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoSecurity object, {
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
    required SystemInfoSecurityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'openReads':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.openReads = valueDes;
          break;
        case r'anonymousRestricted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.anonymousRestricted = valueDes;
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SettingsWarning),
                    ]),
                  )
                  as BuiltList<SettingsWarning>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoSecurity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoSecurityBuilder();
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
