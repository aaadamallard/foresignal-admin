//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/source_descriptor.dart';
import 'package:foresignal_api/src/model/source_health.dart';
import 'package:foresignal_api/src/model/source_settings.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_detail.g.dart';

/// SourceDetail
///
/// Properties:
/// * [descriptor]
/// * [settings]
/// * [health]
@BuiltValue()
abstract class SourceDetail
    implements Built<SourceDetail, SourceDetailBuilder> {
  @BuiltValueField(wireName: r'descriptor')
  SourceDescriptor get descriptor;

  @BuiltValueField(wireName: r'settings')
  SourceSettings get settings;

  @BuiltValueField(wireName: r'health')
  SourceHealth get health;

  SourceDetail._();

  factory SourceDetail([void updates(SourceDetailBuilder b)]) = _$SourceDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceDetail> get serializer => _$SourceDetailSerializer();
}

class _$SourceDetailSerializer implements PrimitiveSerializer<SourceDetail> {
  @override
  final Iterable<Type> types = const [SourceDetail, _$SourceDetail];

  @override
  final String wireName = r'SourceDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'descriptor';
    yield serializers.serialize(
      object.descriptor,
      specifiedType: const FullType(SourceDescriptor),
    );
    yield r'settings';
    yield serializers.serialize(
      object.settings,
      specifiedType: const FullType(SourceSettings),
    );
    yield r'health';
    yield serializers.serialize(
      object.health,
      specifiedType: const FullType(SourceHealth),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceDetail object, {
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
    required SourceDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'descriptor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SourceDescriptor),
          ) as SourceDescriptor;
          result.descriptor.replace(valueDes);
          break;
        case r'settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SourceSettings),
          ) as SourceSettings;
          result.settings.replace(valueDes);
          break;
        case r'health':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SourceHealth),
          ) as SourceHealth;
          result.health.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceDetailBuilder();
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
