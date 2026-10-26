//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'egress_settings.g.dart';

/// Egress routing policy (settings key `egress`); default direct/off, opt-in (C1/181)
///
/// Properties:
/// * [rotation] - How outbound requests pick a route; direct means no egress routing
/// * [defaultRoute] - Route used when rotation is off or a source has no assignment
@BuiltValue()
abstract class EgressSettings
    implements Built<EgressSettings, EgressSettingsBuilder> {
  /// How outbound requests pick a route; direct means no egress routing
  @BuiltValueField(wireName: r'rotation')
  String get rotation;

  /// Route used when rotation is off or a source has no assignment
  @BuiltValueField(wireName: r'defaultRoute')
  String? get defaultRoute;

  EgressSettings._();

  factory EgressSettings([void updates(EgressSettingsBuilder b)]) =
      _$EgressSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EgressSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EgressSettings> get serializer =>
      _$EgressSettingsSerializer();
}

class _$EgressSettingsSerializer
    implements PrimitiveSerializer<EgressSettings> {
  @override
  final Iterable<Type> types = const [EgressSettings, _$EgressSettings];

  @override
  final String wireName = r'EgressSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EgressSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rotation';
    yield serializers.serialize(
      object.rotation,
      specifiedType: const FullType(String),
    );
    if (object.defaultRoute != null) {
      yield r'defaultRoute';
      yield serializers.serialize(
        object.defaultRoute,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EgressSettings object, {
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
    required EgressSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rotation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.rotation = valueDes;
          break;
        case r'defaultRoute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultRoute = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EgressSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EgressSettingsBuilder();
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
