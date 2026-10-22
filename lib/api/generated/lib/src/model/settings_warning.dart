//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'settings_warning.g.dart';

/// A configuration warning (e.g. PUBLIC_BASE_URL_INSECURE, PUBLIC_BASE_URL_MISMATCH, ANONYMOUS_UNRESTRICTED)
///
/// Properties:
/// * [code]
/// * [message]
@BuiltValue()
abstract class SettingsWarning
    implements Built<SettingsWarning, SettingsWarningBuilder> {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'message')
  String get message;

  SettingsWarning._();

  factory SettingsWarning([void updates(SettingsWarningBuilder b)]) =
      _$SettingsWarning;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SettingsWarningBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SettingsWarning> get serializer =>
      _$SettingsWarningSerializer();
}

class _$SettingsWarningSerializer
    implements PrimitiveSerializer<SettingsWarning> {
  @override
  final Iterable<Type> types = const [SettingsWarning, _$SettingsWarning];

  @override
  final String wireName = r'SettingsWarning';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SettingsWarning object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SettingsWarning object, {
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
    required SettingsWarningBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SettingsWarning deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SettingsWarningBuilder();
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
