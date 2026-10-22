//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_alerts_by_severity.g.dart';

/// Counts per severity
///
/// Properties:
/// * [critical]
/// * [warning]
/// * [info]
@BuiltValue()
abstract class DigestAlertsBySeverity
    implements Built<DigestAlertsBySeverity, DigestAlertsBySeverityBuilder> {
  @BuiltValueField(wireName: r'critical')
  int? get critical;

  @BuiltValueField(wireName: r'warning')
  int? get warning;

  @BuiltValueField(wireName: r'info')
  int? get info;

  DigestAlertsBySeverity._();

  factory DigestAlertsBySeverity([
    void updates(DigestAlertsBySeverityBuilder b),
  ]) = _$DigestAlertsBySeverity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestAlertsBySeverityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestAlertsBySeverity> get serializer =>
      _$DigestAlertsBySeveritySerializer();
}

class _$DigestAlertsBySeveritySerializer
    implements PrimitiveSerializer<DigestAlertsBySeverity> {
  @override
  final Iterable<Type> types = const [
    DigestAlertsBySeverity,
    _$DigestAlertsBySeverity,
  ];

  @override
  final String wireName = r'DigestAlertsBySeverity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestAlertsBySeverity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.critical != null) {
      yield r'critical';
      yield serializers.serialize(
        object.critical,
        specifiedType: const FullType(int),
      );
    }
    if (object.warning != null) {
      yield r'warning';
      yield serializers.serialize(
        object.warning,
        specifiedType: const FullType(int),
      );
    }
    if (object.info != null) {
      yield r'info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DigestAlertsBySeverity object, {
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
    required DigestAlertsBySeverityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'critical':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.critical = valueDes;
          break;
        case r'warning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.warning = valueDes;
          break;
        case r'info':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.info = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DigestAlertsBySeverity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestAlertsBySeverityBuilder();
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
