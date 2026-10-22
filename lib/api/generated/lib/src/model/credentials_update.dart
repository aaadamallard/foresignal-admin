//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credentials_update.g.dart';

/// CredentialsUpdate
///
/// Properties:
/// * [values] - Keys match the descriptor's credentialFields
@BuiltValue()
abstract class CredentialsUpdate
    implements Built<CredentialsUpdate, CredentialsUpdateBuilder> {
  /// Keys match the descriptor's credentialFields
  @BuiltValueField(wireName: r'values')
  BuiltMap<String, String> get values;

  CredentialsUpdate._();

  factory CredentialsUpdate([void updates(CredentialsUpdateBuilder b)]) =
      _$CredentialsUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialsUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialsUpdate> get serializer =>
      _$CredentialsUpdateSerializer();
}

class _$CredentialsUpdateSerializer
    implements PrimitiveSerializer<CredentialsUpdate> {
  @override
  final Iterable<Type> types = const [CredentialsUpdate, _$CredentialsUpdate];

  @override
  final String wireName = r'CredentialsUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialsUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'values';
    yield serializers.serialize(
      object.values,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialsUpdate object, {
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
    required CredentialsUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'values':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.values.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialsUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialsUpdateBuilder();
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
