//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_settings.g.dart';

/// CorsSettings
///
/// Properties:
/// * [readOrigins]
/// * [writeOrigins]
@BuiltValue()
abstract class CorsSettings
    implements Built<CorsSettings, CorsSettingsBuilder> {
  @BuiltValueField(wireName: r'readOrigins')
  BuiltList<String> get readOrigins;

  @BuiltValueField(wireName: r'writeOrigins')
  BuiltList<String> get writeOrigins;

  CorsSettings._();

  factory CorsSettings([void updates(CorsSettingsBuilder b)]) = _$CorsSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsSettings> get serializer => _$CorsSettingsSerializer();
}

class _$CorsSettingsSerializer implements PrimitiveSerializer<CorsSettings> {
  @override
  final Iterable<Type> types = const [CorsSettings, _$CorsSettings];

  @override
  final String wireName = r'CorsSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'readOrigins';
    yield serializers.serialize(
      object.readOrigins,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'writeOrigins';
    yield serializers.serialize(
      object.writeOrigins,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsSettings object, {
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
    required CorsSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'readOrigins':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.readOrigins.replace(valueDes);
          break;
        case r'writeOrigins':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.writeOrigins.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsSettingsBuilder();
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
