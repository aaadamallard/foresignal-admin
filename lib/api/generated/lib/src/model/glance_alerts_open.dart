//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'glance_alerts_open.g.dart';

/// Unresolved and unacknowledged per severity
///
/// Properties:
/// * [critical]
/// * [warning]
/// * [info]
@BuiltValue()
abstract class GlanceAlertsOpen
    implements Built<GlanceAlertsOpen, GlanceAlertsOpenBuilder> {
  @BuiltValueField(wireName: r'critical')
  int? get critical;

  @BuiltValueField(wireName: r'warning')
  int? get warning;

  @BuiltValueField(wireName: r'info')
  int? get info;

  GlanceAlertsOpen._();

  factory GlanceAlertsOpen([void updates(GlanceAlertsOpenBuilder b)]) =
      _$GlanceAlertsOpen;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GlanceAlertsOpenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GlanceAlertsOpen> get serializer =>
      _$GlanceAlertsOpenSerializer();
}

class _$GlanceAlertsOpenSerializer
    implements PrimitiveSerializer<GlanceAlertsOpen> {
  @override
  final Iterable<Type> types = const [GlanceAlertsOpen, _$GlanceAlertsOpen];

  @override
  final String wireName = r'GlanceAlertsOpen';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GlanceAlertsOpen object, {
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
    GlanceAlertsOpen object, {
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
    required GlanceAlertsOpenBuilder result,
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
  GlanceAlertsOpen deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlanceAlertsOpenBuilder();
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
